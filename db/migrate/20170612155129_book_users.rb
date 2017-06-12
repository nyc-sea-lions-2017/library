class BookUsers < ActiveRecord::Migration
  def change
    create_table :book_readers  do |t|
      t.integer :reader_id, foreign_key: true
      t.integer :book_id, foreign_key: true

      t.timestamps(null: false)
    end
  end
end
