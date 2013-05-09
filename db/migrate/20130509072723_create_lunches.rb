class CreateLunches < ActiveRecord::Migration
  def change
    create_table :lunches do |t|
      t.string :proteins
      t.string :vegetables
      t.string :fruit
      t.string :water
      t.string :desert

      t.timestamps
    end
  end
end
