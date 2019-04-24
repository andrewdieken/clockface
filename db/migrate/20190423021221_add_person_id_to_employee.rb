class AddPersonIdToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :person_id, :string
  end
end
