class IssuesPost < ActiveRecord::Base
  belongs_to :issue
  belongs_to :posts
end
