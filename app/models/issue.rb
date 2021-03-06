class Issue < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_and_belongs_to_many :media
	has_and_belongs_to_many :posts

		has_attached_file :avatar, styles: { medium: "250x250>", thumb: "100x100>" }, default_url: "/images/peace.jpg"
		validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

	before_save :regulate_name, on: :create, on: :update

	def regulate_name
	    self.name = self.name.downcase.titleize
	end
end
