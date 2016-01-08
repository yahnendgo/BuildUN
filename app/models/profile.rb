class Profile < ActiveRecord::Base
	TITLE = ['activist', 'educator', 'social worker', 'elected official', 'artist', 'business owner', 'other']

	belongs_to :user

		has_attached_file :avatar, styles: { medium: "250x250>", thumb: "100x100>" }, default_url: "/images/peace.png"
		validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

	before_save :regulate_name, on: :create, on: :update

	def regulate_name
	    self.fname = self.fname.downcase.titleize
	    self.lname = self.lname.downcase.titleize
	end
end
