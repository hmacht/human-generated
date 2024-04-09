class AddDefaultStatusToVerificationRequests < ActiveRecord::Migration[7.0]
  def change
    change_column :verification_requests, :status, :string, default: "pending"
  end
end
