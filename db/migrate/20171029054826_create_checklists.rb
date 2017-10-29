class CreateChecklists < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
      t.integer :user_id
      t.integer :list_id

      t.timestamps null: false
    end
  end
end
