class Admin::DisciplinesController < AdminController
  
  def index 
  	@disciplines = Discipline.all
  end

  def new
  	@discipline = Discipline.new
  end

  def create
    @discipline = Discipline.new(discipline_params)
    if @discipline.save
      flash[:notice] = "Discipline Added!"
      redirect_to admin_disciplines_path
    else
      render action: "new"
    end
  end

  def edit
  end

  def update
    if @discipline.update_attributes(discipline_params)
      flash[:notice] = "Congrats! You've updated!"
      redirect_to admin_disciplines_path and return
    end
    render :action => 'edit'
  end
  
  def show
    @discipline = Discipline.find(params[:id])
  end

  def destroy
    @discipline = Discipline.find(params[:id])
    @discipline.destroy
    flash[:notice] = "You've deleted that discipline"
    redirect_to admin_disciplines_url
  end

  private

 	def discipline_params
 		params.require(:discipline).permit(:name, :photo)
 	end
end
