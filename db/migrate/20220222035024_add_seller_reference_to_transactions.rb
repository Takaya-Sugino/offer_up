class AddSellerReferenceToTransactions < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :transactions, :users, column: :seller_id
    add_index :transactions, :seller_id
    change_column_null :transactions, :seller_id, false
  end
end
