class ChangeStringToText < ActiveRecord::Migration[5.1]
  def change
      change_column :posts, :articles, :text
  end
end
