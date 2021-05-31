class CreateImage1s < ActiveRecord::Migration[5.2]
  def change
    create_table :image1s do |t|
      t.string :image

      t.timestamps
    end
  end
end
