class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user
      t.text :body
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
