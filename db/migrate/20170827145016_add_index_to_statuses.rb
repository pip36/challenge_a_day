class AddIndexToStatuses < ActiveRecord::Migration[5.0]
  def change
    add_index :statuses, [:user_id, :challenge_id], unique: true
  end
end
