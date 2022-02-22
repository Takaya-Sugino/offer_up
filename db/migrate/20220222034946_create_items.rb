class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :price
      t.integer :category_id
      t.string :comment
      t.string :location

      t.timestamps
    end
  end
end
