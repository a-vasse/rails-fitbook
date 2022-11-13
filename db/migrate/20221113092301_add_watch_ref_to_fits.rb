class AddWatchRefToFits < ActiveRecord::Migration[7.0]
  def change
    add_reference :fits, :watch, null: false, foreign_key: true
  end
end
