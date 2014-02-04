class Admin::EventsController < AdminController


  def new
    @event = Event.new
    @countries = Country.all
  end

  def index
    @events = Event.find(:all, :include => :discipline)
    respond_to do |format|
      format.html 
      format.json {render json: @events}
    end 
  end

  def create
    @event = Event.new(event_params)
    @countries = Country.all

    if @event.save
      countries = Country.where(:id => params[:countries])
      countries.each {|country| @event.countries << country}
      flash[:notice] = "Event Added!"
      redirect_to  admin_disciplines_path
      return
    else
      render action: "new"
    end
  end

  def edit
    @event = Event.find(params[:id])
    @countries = Country.all
  end

  def update
    @event = Event.find(params[:id])
    @countries = Country.all
    
    if @event.save
      countries = Country.where(:id => params[:countries])
      countries.each {|country| @event.countries << country}
      flash[:notice] = "Event Added!"
      redirect_to  admin_disciplines_path
      return
    else
      render action: "new"
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def destroy
  end

  private 
  def event_params 
    params.require(:event).permit(:name, :start_date, :end_date, :discipline_id, :countries) 
  end
end
