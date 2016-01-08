class Medium < ActiveRecord::Base
	belongs_to :user
	has_many :issues_media
	has_many :issues, through: :issues_media

	attr_accessor :media
end
