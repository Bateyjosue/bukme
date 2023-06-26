class CreateBusPhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :bus_photos do |t|
      t.string :image_url
      t.references :bus, null: false, foreign_key: true

      t.timestamps
    end
  end
end
