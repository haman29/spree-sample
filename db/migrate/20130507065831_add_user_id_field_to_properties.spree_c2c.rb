# This migration comes from spree_c2c (originally 20120830172623)
class AddUserIdFieldToProperties < ActiveRecord::Migration
  def up
    add_column :spree_properties, :user_id, :integer, :default => 0, :null => false
    add_index "spree_properties", ["user_id"], :name => "index_spree_properties_on_user_id"
  end

  def down
    remove_column :spree_properties , :user_id
  end
end
