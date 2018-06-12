class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.integer :pac_id

      t.timestamps

    end
  end
end
