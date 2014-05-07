class Submissions < ActiveRecord::Base
  belongs_to :assignment
  belongs_to :user

  has_many :comments, as commentable
end
