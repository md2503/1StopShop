class CreateListUsers < ActiveRecord::Migration
  def change
    create_table :list_users do |t|

      t.timestamps null: false
    end
  end
end
