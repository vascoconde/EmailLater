class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.datetime :send_date
      t.string :to
      t.string :subject
      t.text :body
      t.boolean :sent

      t.timestamps null: false
    end
  end
end
