class RemoveCreaterFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users ,:creater, :boolean, default: false
  end
end
