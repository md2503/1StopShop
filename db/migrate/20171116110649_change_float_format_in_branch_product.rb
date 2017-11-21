class ChangeFloatFormatInBranchProduct < ActiveRecord::Migration[5.1]
  def up
   change_column :branch_products, :longitude, :decimal
   change_column :branch_products, :latitude, :decimal
  end

  def down
   change_column :branch_products, :longitude, :float
   change_column :branch_products, :latitude, :float
  end
  
end
