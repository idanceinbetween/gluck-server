class CreateListingStats < ActiveRecord::Migration[5.2]
  def change
    create_table :listing_stats do |t|
      t.string :label

      t.timestamps
    end
  end
end
