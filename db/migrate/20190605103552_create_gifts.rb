class CreateGifts < ActiveRecord::Migration[5.2]
  def change
    create_table :gifts do |t|
      t.string :title
      t.string :description
      t.string :image
      t.references :gifter
      t.references :listing_stat
      t.datetime :expiry
      t.string :exchange1_datetime
      t.string :exchange1_location
      t.string :exchange2_datetime
      t.string :exchange2_location

      t.timestamps
    end
  end
end