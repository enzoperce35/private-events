class EventsController < ApplicationController
  def index
  end

  def new
    @event = Event.new
  end

  def create
    # 'created_events' which is declared as 'has_many' association is to be initialized('built'), so 'association.build' method is to be used
    @events = current_user.created_events.build(event_params)
    
    if @events.save
      redirect_to users_show_path, notice: "Your event was created"
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:events).permit(:name, :date)
  end
end
