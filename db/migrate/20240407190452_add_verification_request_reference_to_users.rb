class AddVerificationRequestReferenceToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :verification_request, null: false, foreign_key: true
  end
end
