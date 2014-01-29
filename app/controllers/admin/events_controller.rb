class Admin::EventsController < AdminController

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:notice] = "Discipline Added!"
      redirect_to admin_disciplines_path
    else
      render action: "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 
  def event_params 
    params.require(:event).permit(:name, :discipline_id) 
  end
end
