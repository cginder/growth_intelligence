class AddPracticeLocationCountToPractices < ActiveRecord::Migration[5.0]
  def change
    add_column :practices, :practice_locations_count, :integer
  end
end
