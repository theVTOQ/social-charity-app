class CreateQualityOfLifeQualifiers < ActiveRecord::Migration[6.0]
  def change
    create_table :quality_of_life_qualifiers do |t|
      t.string :condition_name
      t.string :condition_value
      t.integer :principle_id

      t.timestamps
    end
  end
end
