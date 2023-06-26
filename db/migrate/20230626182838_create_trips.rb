class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.date :trip_date
      t.string :source_gare
      t.string :destination_gare
      t.references :bus, null: false, foreign_key: true

      t.timestamps
    end
  end
end
