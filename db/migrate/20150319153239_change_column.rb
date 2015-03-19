class ChangeColumn < ActiveRecord::Migration
  def change
  	change_column :users, :kind, :string, default: 'hackers'
  end
end
