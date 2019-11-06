class CreateCategoriesProducts < ActiveRecord::Migration[5.2]
  def change
    create_join_table :categories, :products do |t|
      t.references :product, foreign_key: true
      t.references :category, foreign_key: true
    end
  end
end
