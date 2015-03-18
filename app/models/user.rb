class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :photos
  has_many :followings

  has_many :followed_users, 
    through: :followings, 
    source: :following_user

  def following?(following_user)
    if followings.where(following_user_id: following_user.id).first
      true
    else
      false
    end
  end

  def mostrar_email
    puts "El nombre es: #{email}"
  end
end
