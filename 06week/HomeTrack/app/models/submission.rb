class Submission < ActiveRecord::Base
  belongs_to :assignment
  belongs_to :user
  has_many :comments, as: :commentable
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




  # include Workflow
  # workflow do
  #   state :waiting do
  #     event :go_to_doctor, transitions_to: :doctor
  #     event :go_to_xray, transitions_to: :xray
  #     event :go_to_surgery, transitions_to: :surgery
  #     event :release, transitions_to: :leaving
  #   end
  #   state :doctor do
  #     event :go_to_xray, transitions_to: :xray
  #     event :go_to_surgery, transitions_to: :surgery
  #     event :go_to_billpay, transitions_to: :billpay
  #   end
  #   state :xray do
  #     event :go_to_doctor, transitions_to: :doctor
  #     event :go_to_surgery, transitions_to: :surgery
  #     event :go_to_billpay, transitions_to: :billpay
  #   end
  #   state :surgery do
  #     event :go_to_doctor, transitions_to: :doctor
  #     event :go_to_xray, transitions_to: :xray
  #     event :go_to_billpay, transitions_to: :billpay
  #   end
  #   state :billpay do
  #     event :release, transitions_to: :leaving
  #   end       
  #   state :leaving
  # end