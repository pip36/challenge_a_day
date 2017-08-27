class CreateStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :statuses do |t|
      t.references :user
      t.references :challenge
      t.boolean :passed
      t.integer :difficulty

      t.timestamps
    end
  end
end
