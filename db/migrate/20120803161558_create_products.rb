class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :id
      t.string :name
      t.text :desc
      t.references :sub_category
      t.date :production_date
      t.date :exp_date

      t.timestamps
    end
    add_index :products, :sub_category_id
  end
end
