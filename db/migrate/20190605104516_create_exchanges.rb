class CreateExchanges < ActiveRecord::Migration[5.2]
  def change
    create_table :exchanges do |t|
      t.references :gift
      t.references :gifter
      t.references :recipient
      t.references :exchange_stat
      t.datetime :date
      t.references :tag

      t.timestamps
    end
  end
end
