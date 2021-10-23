class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # used 'created_events'(instead of events) as association name, 'creator_id' was set-up in migration 
  has_many :created_events, foreign_key: 'creator_id', class_name: 'Event'
end
