class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title, limit: 100, default: 'Belum ada judul'
      t.integer :price, default: 0
      t.integer :page, null: false
      t.text :description

      t.timestamps
    end
  end
end
