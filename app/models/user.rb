class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # set 'created_event(instead of event) as association name
  has_many :created_events, foreign_key: 'creator_id', class_name: 'Event'
  
  # set 'attended_event'(instead of event) as association name in event_attendances join table(reference_holder)
  has_many :event_attendances, foreign_key: :attendee_id
  has_many :attended_events, through: :event_attendances
end
