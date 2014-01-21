class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :isbn10
      t.integer :isbn13
      t.integer :rank
      t.timestamps
    end
  end
end
