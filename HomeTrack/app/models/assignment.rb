class Assignment < ActiveRecord::Base
  belongs_to :course
  has_many :users, through: :submissions
  has_many :submissions
  has_many :comments, as: :commentable
end
