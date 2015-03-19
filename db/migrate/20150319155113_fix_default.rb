class FixDefault < ActiveRecord::Migration
  def change
  	change_column :users, :kind, :string, default: 'hacker'
  end
end
