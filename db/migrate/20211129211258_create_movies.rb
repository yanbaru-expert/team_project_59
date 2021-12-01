class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.integer :genre, null: false, default: 0
      t.string :title, null: false
      t.string :url, null: false

      t.timestamps
    end
  end
end
