class CreateBottles < ActiveRecord::Migration[6.0]
  def change
    create_table :bottles do |t|
      t.string :bottle_name
      t.string :bottle_type
      t.string :bottle_img_url
      t.integer :bottle_volume
      t.integer :user_id
      t.timestamps
    end
  end
end
