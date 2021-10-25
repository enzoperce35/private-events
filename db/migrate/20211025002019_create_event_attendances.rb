class CreateEventAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :event_attendances do |t|
      # use 'attendee_id'(instead of user_id) as a foreign_key for this join table
      t.belongs_to :attendee, references: :users, index: true
      
      # use 'attended_event_id'(instead of event_id) as a foreign_key for this join table
      t.belongs_to :attended_event, references: :events, index: true

      t.timestamps
    end
  end
end
