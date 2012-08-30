class CreateSubCategories < ActiveRecord::Migration
  def change
    create_table :sub_categories do |t|
      t.integer :id
      t.string :name
      t.text :desc
      t.references :category

      t.timestamps
    end
    add_index :sub_categories, :category_id
  end
end
