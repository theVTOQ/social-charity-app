class CreateActionQualifiers < ActiveRecord::Migration[6.0]
  def change
    create_table :action_qualifiers do |t|
      t.string :name_of_action
      t.datetime :commitment_date_window_begin
      t.datetime :commitment_date_window_end
      t.boolean :is_exact
      t.boolean :is_antecedent
      t.integer :principle_id

      t.timestamps
    end
  end
end
