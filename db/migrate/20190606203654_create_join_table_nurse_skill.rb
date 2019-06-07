class CreateJoinTableNurseSkill < ActiveRecord::Migration[5.2]
  def change
    create_join_table :nurses, :skills do |t|
      t.index [:nurse_id, :skill_id]
      # t.index [:skill_id, :nurse_id]
    end
  end
end
