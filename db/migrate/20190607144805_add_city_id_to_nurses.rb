# frozen_string_literal: true

class AddCityIdToNurses < ActiveRecord::Migration[5.2]
  def change
    add_column :nurses, :city_id, :integer
  end
end
