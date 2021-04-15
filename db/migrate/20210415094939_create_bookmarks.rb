class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
      t.text :comment
      t.references :movie, foreign_key: true
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
