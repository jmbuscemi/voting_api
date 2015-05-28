class AddAccessTokenToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :access_token, :string
  end
end
