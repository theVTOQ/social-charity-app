class CreatePledges < ActiveRecord::Migration[6.0]
  def change
    create_table :pledges do |t|
      t.decimal :dollar_amount
      t.integer :principle_id
      t.integer :user_id

      t.timestamps
    end
  end
end
