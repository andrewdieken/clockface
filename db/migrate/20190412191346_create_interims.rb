class CreateInterims < ActiveRecord::Migration[5.2]
  def change
    create_table :interims do |t|
      t.datetime :start
      t.datetime :stop
      t.references :shift, foreign_key: true

      t.timestamps
    end
  end
end
