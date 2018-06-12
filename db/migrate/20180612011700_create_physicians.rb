class CreatePhysicians < ActiveRecord::Migration
  def change
    create_table :physicians do |t|
      t.string :npi
      t.string :first_name
      t.string :last_name

      t.timestamps

    end
  end
end
