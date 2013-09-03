class ChangeBelongsToPolymorphicOnLineItems < ActiveRecord::Migration
  def change
    remove_column :line_items, :order_id
    remove_column :line_items, :cart_id
    add_column :line_items, :itemable_id, :integer
    add_column :line_items, :itemable_type, :string
  end
end
