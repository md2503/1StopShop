class CreateBranches < ActiveRecord::Migration[5.1]
  def change
    create_table :branches do |t|
      t.string :name
      t.string :location
      t.text :map

      t.timestamps
    end
  end
end
