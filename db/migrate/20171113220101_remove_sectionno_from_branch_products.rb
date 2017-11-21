class RemoveSectionnoFromBranchProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :branch_products, :sectionno, :integer
  end
end
