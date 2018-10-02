class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :website
      t.string :title
      t.text :description
      t.string :location
      t.string :email

      t.timestamps
    end
  end
end
