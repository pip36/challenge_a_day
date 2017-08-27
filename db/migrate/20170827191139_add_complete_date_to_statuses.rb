class AddCompleteDateToStatuses < ActiveRecord::Migration[5.0]
  def change
    add_column :statuses, :complete_date, :date
  end
end
