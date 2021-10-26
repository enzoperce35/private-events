class Event < ApplicationRecord
  # set 'creator'(instead of user) as association name in events table(reference_holder)
  belongs_to :creator, class_name: 'User'
  
  # set 'attendee'(instead of user) as association name in event_attendances join table(reference_holder)
  has_many :event_attendances, foreign_key: :attended_event_id
  has_many :attendees, through: :event_attendances

  # used scope to current_user.attended_events for cleaner query
  scope :past, -> { where('date < ?', DateTime.now) }
  scope :upcoming, -> { where('date > ?', DateTime.now) }
end
