class AddUserIdToBranches < ActiveRecord::Migration[5.2]
  def change
    add_reference :branches, :user, foreign_key: true, index: true
  end
end
