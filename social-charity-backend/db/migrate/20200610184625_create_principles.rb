class CreatePrinciples < ActiveRecord::Migration[6.0]
  def change
    create_table :principles do |t|

      t.timestamps
    end
  end
end
