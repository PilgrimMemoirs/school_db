class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.belongs_to :course, index: true, foreign_key: true
      t.string :name
      t.datetime :birthdate

      t.timestamps null: false
    end
  end
end
