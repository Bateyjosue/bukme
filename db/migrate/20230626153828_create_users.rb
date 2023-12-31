class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :email
      t.string :phone
      t.text :address
      t.references :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end
