class CreatePours < ActiveRecord::Migration[6.0]
  def change
    create_table :pours do |t|
      t.string :pour_name
      t.string :pour_img_url
      t.integer :pour_volume
      t.integer :pour_bottle_volume
      t.integer :bottle_id
      t.decimal :pour_price_per_bottle
      t.timestamps
    end
  end
end
