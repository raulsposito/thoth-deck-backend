class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.integer :index
      t.string :title
      t.string :image
      t.string :keywords
      t.string :interpretation
      t.string :question
      t.string :suggestion
      t.string :mantra

      t.timestamps
    end
  end
end
