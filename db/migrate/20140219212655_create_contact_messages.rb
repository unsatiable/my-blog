class CreateContactMessages < ActiveRecord::Migration
  def change
    create_table :contact_messages do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.text :body
      t.string :topic

      t.timestamps
    end
  end
end
