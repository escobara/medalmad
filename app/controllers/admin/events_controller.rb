class Admin::EventsController < AdminController


  def new
    @event = Event.new
    @participations = @event.participations.build
    @country = @participations.build_event
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:notice] = "Event Added!"
      redirect_to  admin_disciplines_path
      return
    else
      render action: "new"
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      flash[:notice] = "Congrats! You've updated!"
      redirect_to admin_disciplines_path and return
    end
    render :action => 'edit'
  end

  def show
    @event = Event.find(params[:id])
  end

  def destroy
  end

  private 
  def event_params 
    params.require(:event).permit(:name, :discipline_id, 
        participations_attributes: [:id, 
          country_attributes: [:id, :name]]) 
  end
end
