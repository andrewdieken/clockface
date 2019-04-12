class CreateShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :shifts do |t|
      t.datetime :start
      t.datetime :stop
      t.references :employee

      t.timestamps
    end
  end
end
