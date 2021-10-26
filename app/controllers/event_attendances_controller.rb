class EventAttendancesController < ApplicationController
  def add_attendee
    event = Event.find(params[:id])

    current_user.attended_events << event
  end
end
