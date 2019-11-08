class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :number
      t.boolean :ordered
      t.datetime :ordertime
      t.references :user, foreign_key: true
      
      t.timestamps
    end
  end
end
