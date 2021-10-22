class AddCreatorToEvents < ActiveRecord::Migration[6.1]
  def change
    # use 'creator_id'(instead of user_id) as a foreign_key to the users table
    add_reference :events, :creator, references: :users, index: true
  end
end
