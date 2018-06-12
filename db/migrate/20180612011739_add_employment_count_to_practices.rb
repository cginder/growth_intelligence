class AddEmploymentCountToPractices < ActiveRecord::Migration[5.0]
  def change
    add_column :practices, :employments_count, :integer
  end
end
