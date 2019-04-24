class AddUserIdToBranches < ActiveRecord::Migration[5.2]
  def change
    add_column :branches, :user_id, :bigint
  end
end
