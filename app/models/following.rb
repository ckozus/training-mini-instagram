class Following < ActiveRecord::Base
  belongs_to :user            #user_id -> User
  belongs_to :following_user, class_name: 'User'  #following_user_id -> User
end
