class AddConstraints < ActiveRecord::Migration
  def change
    add_foreign_key :followings, :users
    add_foreign_key :followings, :following_user, column: :following_user_id
  end
end
