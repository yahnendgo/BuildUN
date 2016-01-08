class User < ActiveRecord::Base
	has_many :posts
	has_many :credentials
	has_many :media
	has_many :messages
	has_and_belongs_to_many :issues
	has_one :profile
	has_many :photos
  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
end
