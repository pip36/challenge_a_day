class AddChallengeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :challenge, foreign_key: true, index: true
  end
end
