class IssuePost < ActiveRecord::Base
  belongs_to :issue
  belongs_to :post
end
