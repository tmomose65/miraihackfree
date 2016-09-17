class AddColumnUsers < ActiveRecord::Migration
  def up
    add_column :users, :access_token, :string
  end
end
