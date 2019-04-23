class AddTrainedAtToBranch < ActiveRecord::Migration[5.2]
  def change
    add_column :branches, :trained_at, :datetime
  end
end
