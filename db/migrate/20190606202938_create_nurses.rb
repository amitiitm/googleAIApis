# frozen_string_literal: true

class CreateNurses < ActiveRecord::Migration[5.2]
  def change
    create_table :nurses do |t|
      t.string :name
      t.integer :age
      t.string :profile_link
      t.timestamps
    end
  end
end
