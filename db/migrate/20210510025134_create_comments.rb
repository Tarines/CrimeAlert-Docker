class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :username
      t.text :body
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
