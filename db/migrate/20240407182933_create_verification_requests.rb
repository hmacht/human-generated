class CreateVerificationRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :verification_requests do |t|
      t.string :title, null: false
      t.string :content, null: false
      t.string :status
      t.string :certified_url

      t.timestamps
    end
  end
end
