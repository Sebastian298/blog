class AddTimestampArticle < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :created_at, :datetime
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    add_column :articles, :update_at, :datetime
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
