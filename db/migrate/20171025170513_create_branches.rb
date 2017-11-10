class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :name
      t.string :location
      t.text :map

      t.timestamps null: false
    end
  end
end
