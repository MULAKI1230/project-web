class CreateArticles < ActiveRecord::Migration[8.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.string :image
      t.integer :views
      t.integer :likes
      t.datetime :published_at

      t.timestamps
    end
  end
end
