class CreateSneakers < ActiveRecord::Migration[7.0]
  def change
    create_table :sneakers do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
