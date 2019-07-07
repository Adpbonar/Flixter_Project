class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :subtitle
      t.text :course_text
      t.integer :section_id
      t.timestamps
    end
    add_index :lessons, :section_id
  end
end
