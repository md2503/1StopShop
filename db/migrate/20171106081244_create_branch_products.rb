class CreateBranchProducts < ActiveRecord::Migration[4.2]
  def change
    create_table :branch_products do |t|
      t.integer :branch_id
      t.integer :product_id
      t.float :stock
      t.integer :aisleno
      t.integer :sectionno

      t.timestamps
    end
  end
end
