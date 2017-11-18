class RemoveAislenoFromBranchProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :branch_products, :aisleno, :integer
  end
end
