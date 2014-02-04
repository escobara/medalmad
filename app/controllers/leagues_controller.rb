class LeaguesController < ApplicationController
	before_filter :authenticate_user!

	respond_to :js, :json, :html

  def index
    @leagues = current_user.leagues.all
    respond_with(@leagues)
  end

  def show
    @league = League.find(params[:id])
    respond_with(@league)
  end

  def new
    @league = current_user.leagues.new
  end

  def create
    @league = current_user.leagues.create(league_params)
    @league.commissioner_id = current_user.id 
    respond_with(@league) do |format|
      if @league.save
        flash[:notice] = 'league was successfully created.'
        format.js {render @league}
        format.html { redirect_to(@leagues) }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    respond_with League.update(params[:id], params[:League])
  end

  def destroy
    respond_with League.destroy(params[:id])
  end

  private

  def league_params
    params.require(:league).permit(:name, :photo, :is_private)   
  end

end

