class Event < ApplicationRecord
  # used 'creator'(instead of user) as association name, 'creator' was set-up in migration
  belongs_to :creator, class_name: 'User'
end
