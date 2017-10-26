class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.float :stock
      t.integer :aisleno
      t.integer :sectionno

      t.timestamps null: false
    end
  end
end
