class CreateCommunications < ActiveRecord::Migration[5.2]
  def change
    create_table :communications do |t|
      t.string :label
      t.string :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
