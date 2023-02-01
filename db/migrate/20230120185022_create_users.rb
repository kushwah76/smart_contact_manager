class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :mobile_number
      t.string :address
      t.string :profile_image
      t.integer :user1_id

      t.timestamps
    end
  end
end
