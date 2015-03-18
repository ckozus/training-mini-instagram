class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.text :description
      t.attachment :asset

      t.timestamps null: false
    end
    add_foreign_key :photos, :users
  end
end
