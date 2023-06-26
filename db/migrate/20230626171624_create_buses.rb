class CreateBuses < ActiveRecord::Migration[7.0]
  def change
    create_table :buses do |t|
      t.string :plate_number
      t.integer :number_of_seat

      t.timestamps
    end
  end
end
