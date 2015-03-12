class AddKindToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :kind, :string, default: 'participant'
  end
end
