# frozen_string_literal: true

class CreateJoinTableDepartmentNurse < ActiveRecord::Migration[5.2]
  def change
    create_join_table :departments, :nurses do |t|
      t.index %i[department_id nurse_id]
      # t.index [:nurse_id, :department_id]
    end
  end
end
