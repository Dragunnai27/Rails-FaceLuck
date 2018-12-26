class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.string :author
      t.references :post
      t.references :user

      t.timestamps
    end
  end
end
