class Submission < ActiveRecord::Base
  belongs_to :assignment
  belongs_to :user
  has_many :comments, as commentable
  has_many :links

  accepts_nested_attributes_for :links, allow_destroy: true

  include Workflow
  workflow do
    state :new do
      event :reviewing, transitions_to: :reviewing
    end

    state :reviewing do
      event :complete, transitions_to: :complete
      event :incomplete, transitions_to: :incomplete
    end

    state :incomplete do
      event :reviewing, transitions_to: :reviewing
    end

    state :complete    
  end
end
