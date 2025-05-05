class CreateWorkshops < ActiveRecord::Migration[8.0]
  def change
    create_table :workshops do |t|
      t.string :title
      t.string :description
      t.datetime :date
      t.string :image
      t.integer :price

      t.timestamps
    end
  end
end
