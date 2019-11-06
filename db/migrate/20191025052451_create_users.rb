class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :country
      t.string :street_address
      t.string :postcode 
      t.string :suburb  
      t.string :state 
      t.timestamps
    end
  end
end
