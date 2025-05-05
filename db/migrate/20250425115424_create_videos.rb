class CreateVideos < ActiveRecord::Migration[8.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :thumbnail_url

      t.timestamps
    end
  end
end
