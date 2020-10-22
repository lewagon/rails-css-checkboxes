class CreateSnippets < ActiveRecord::Migration[6.0]
  def change
    create_table :snippets do |t|
      t.string :title
      t.text :code
      t.boolean :archived, default: false
      t.references :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
