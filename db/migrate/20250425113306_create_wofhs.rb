class CreateWofhs < ActiveRecord::Migration[8.0]
  def change
    create_table :wofhs do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :string
      t.string :thumbnail_url

      t.timestamps
    end
  end
end
