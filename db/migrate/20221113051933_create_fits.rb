class CreateFits < ActiveRecord::Migration[7.0]
  def change
    create_table :fits do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.references :top, null: false, foreign_key: true
      t.references :pant, null: false, foreign_key: true
      t.references :sneaker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
