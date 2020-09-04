class CreateCheatsheetTags < ActiveRecord::Migration[6.0]
  def change
    create_table :cheatsheet_tags do |t|
      t.references :cheatsheet, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
