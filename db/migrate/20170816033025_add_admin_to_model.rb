class AddAdminToModel < ActiveRecord::Migration[5.1]
  def change
    add_column :models, :admin, :boolean, default:false
  end
end
