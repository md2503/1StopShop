class AddNameToBranchProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :branch_products, :name, :string
  end
end