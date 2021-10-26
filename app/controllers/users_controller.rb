class UsersController < ApplicationController
  def show
    @events = current_user.created_events
    
    # queried 'attended events' to divide it into two categories
    @past_events = current_user.attended_events.where('date < ?', DateTime.now)
    @future_events = current_user.attended_events.where('date > ?', DateTime.now)
  end 
end