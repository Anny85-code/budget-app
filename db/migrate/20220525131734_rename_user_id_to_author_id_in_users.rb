class RenameUserIdToAuthorIdInUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :transactions, :author_id, :author_id
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
