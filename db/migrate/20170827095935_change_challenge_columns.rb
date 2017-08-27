class ChangeChallengeColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :challenges, :text, :string
    change_column :challenges, :description, :text
  end
end
