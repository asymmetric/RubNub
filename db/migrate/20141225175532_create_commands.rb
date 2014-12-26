class CreateCommands < ActiveRecord::Migration
  def change
    create_table :commands do |t|
      t.string :name
      t.string :url
      t.text :description
      t.integer :uses, default: 0

      t.timestamps null: false
    end
  end
end
