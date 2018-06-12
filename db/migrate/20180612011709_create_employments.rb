class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.integer :physician_id
      t.integer :practice_id

      t.timestamps

    end
  end
end
