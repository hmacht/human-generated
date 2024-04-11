class VerificationRequest < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 250 }

  module STATUS
    SUCCESS = "success"
    FAIL = "fail"
    PENDING = "pending"
  end

  def success?
    status == STATUS::SUCCESS
  end

  def fail?
    status == STATUS::FAIL
  end

  def pending?
    status == STATUS::PENDING
  end
end
