class AddNameToContactMessages < ActiveRecord::Migration[8.0] # Или ваша версия Rails
  def change
    add_column :contact_messages, :name, :string
  end
end
