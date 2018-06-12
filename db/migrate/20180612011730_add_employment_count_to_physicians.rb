class AddEmploymentCountToPhysicians < ActiveRecord::Migration[5.0]
  def change
    add_column :physicians, :employments_count, :integer
  end
end
