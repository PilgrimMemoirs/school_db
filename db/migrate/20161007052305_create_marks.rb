class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.belongs_to :assignment, index: true, foreign_key: true
      t.belongs_to :student, index: true, foreign_key: true
      t.datetime :due_date
      t.integer :mark

      t.timestamps null: false
    end
  end
end
