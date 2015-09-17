class RenameSentColumnToVerifiedInEmails < ActiveRecord::Migration
  def change
  	remove_column :emails, :sent
  	add_column :emails, :verified, :boolean, default: false
  end
end
