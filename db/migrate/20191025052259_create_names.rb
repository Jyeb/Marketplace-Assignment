class CreateNames < ActiveRecord::Migration[5.2]
  def change
    create_table :names do |t|
      t.string :email
      t.string :password
      t.string :address

      t.timestamps
    end
  end
end
