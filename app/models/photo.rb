class Photo < ActiveRecord::Base
	TITLE = ['1st position', '2nd position', '3rd position', '4th position', 'none']

	belongs_to :user

	has_attached_file :avatar, styles: { medium: "250x250>", thumb: "100x100>" }, default_url: "/images/peace.png"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
