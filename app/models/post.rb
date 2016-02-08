class Post < ActiveRecord::Base
	belongs_to :user
	has_and_belongs_to_many :issues

  	has_attached_file :avatar, styles: { medium: "250x250>", thumb: "60x60>" }, default_url: "/images/peace.png"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

	accepts_nested_attributes_for :issues
end
