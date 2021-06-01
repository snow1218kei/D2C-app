class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :image

      t.timestamps
    end
    add_index :microposts, [:user_id, :created_at]
  end
end
