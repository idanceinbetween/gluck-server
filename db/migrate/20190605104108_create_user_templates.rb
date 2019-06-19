class CreateUserTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :user_templates do |t|
      t.string :label
      t.string :content
      t.references :location
      t.references :user

      t.timestamps
    end
  end
end
