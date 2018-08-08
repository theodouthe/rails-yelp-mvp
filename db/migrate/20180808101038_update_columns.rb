class UpdateColumns < ActiveRecord::Migration[5.2]
  def change
    change_table :restaurants do |t|
      t.change :category, :string
    end
  end
end
