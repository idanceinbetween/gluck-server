class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :label
      t.string :address
      t.string :city
      t.string :postcode
      t.references :user
      
      t.timestamps
    end
  end
end
