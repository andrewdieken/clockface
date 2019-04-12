class AddUserToBranch < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :branch, foreign_key: true, index: true
  end
end
