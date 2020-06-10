class CreateDemographicQualifiers < ActiveRecord::Migration[6.0]
  def change
    create_table :demographic_qualifiers do |t|
      t.string :name_of_attribute
      t.string :value_of_attribute
      t.integer :principle_id

      t.timestamps
    end
  end
end
