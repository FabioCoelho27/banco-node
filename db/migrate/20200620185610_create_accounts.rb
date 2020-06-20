class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.decimal :balance, null:false, default: 0
      t.integer :status, null: false, default: 0
      t.belongs_to :client, null: false, index: {:unique=>true}, foreign_key: true

      t.timestamps
    end
  end
end
