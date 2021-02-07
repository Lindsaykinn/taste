# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email,              null: false, default: ""
      t.string :password_digest, null: false, default: ""
      t.string :provider
      t.string :uid
      t.string :name

      t.timestamps null: false
    end
  end
end
