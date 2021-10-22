class Event < ApplicationRecord
  # used 'creator'(instead of user) as a special name, 'creator' was set-up in migration
  belongs_to :creator, class_name: 'User'
end
