class RemoveReferencesFromOrderItems < ActiveRecord::Migration[5.2]
  def change
    remove_reference :order_items, :product, foreign_key: true, index: true
  end
end
