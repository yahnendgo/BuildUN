class Medium < ActiveRecord::Base
	belongs_to :user
	has_many :issues_media
	has_many :issues, through: :issues_media

	attr_accessor :media

	has_attached_file :media, :styles => {
		:large => { :geometry => "720x480", :format => 'flv' },
	    :medium => { :geometry => "640x480", :format => 'flv' },
	    :thumb => { :geometry => "100x100#", :format => 'jpg', :time => 10 }
	}, :processors => [:transcoder]

end
