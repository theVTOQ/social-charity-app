class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.boolean :is_admin
      #t.string :uid #needed?

      t.timestamps
    end
  end
end