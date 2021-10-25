class AddCreatorToEvents < ActiveRecord::Migration[6.1]
  def change
    # set 'creator_id'(instead of user_id) as a foreign_key for users
    add_reference :events, :creator, references: :users, index: true
  end
end
