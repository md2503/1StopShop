class AddLatitudeToBranchProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :branch_products, :latitude, :float
  end
end
