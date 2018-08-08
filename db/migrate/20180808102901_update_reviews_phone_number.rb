class UpdateReviewsPhoneNumber < ActiveRecord::Migration[5.2]
  def change
      change_table :restaurants do |t|
      t.change :phone_number, :string
    end
  end
end
