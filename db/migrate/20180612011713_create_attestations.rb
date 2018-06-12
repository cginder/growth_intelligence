class CreateAttestations < ActiveRecord::Migration
  def change
    create_table :attestations do |t|
      t.integer :physician_id
      t.string :ehr_vendor
      t.string :ehr_name
      t.date :certification_date

      t.timestamps

    end
  end
end
