class CreateCheatsheets < ActiveRecord::Migration[6.0]
  def change
    create_table :cheatsheets do |t|
      t.string :title
      t.string :snippet
      t.references :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
