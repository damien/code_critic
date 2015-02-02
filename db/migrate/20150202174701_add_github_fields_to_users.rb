class AddGithubFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :github_id, :string
    add_column :users, :github_username, :string
    add_column :users, :github_access_token, :string
  end
end
