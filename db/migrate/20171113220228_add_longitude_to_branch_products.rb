class AddLongitudeToBranchProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :branch_products, :longitude, :float
  end
end
