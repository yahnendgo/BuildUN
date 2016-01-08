class IssuesMedium < ActiveRecord::Base
  belongs_to :issue
  belongs_to :medium
end
