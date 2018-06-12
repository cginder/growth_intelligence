class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :line1_address
      t.string :line2_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.integer :practice_id

      t.timestamps

    end
  end
end
