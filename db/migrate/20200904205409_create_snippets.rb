class CreateSnippets < ActiveRecord::Migration[6.0]
  def change
    create_table :snippets do |t|
      t.string :title
      t.text :code
      t.string :category
      t.boolean :archived, default: false

      t.timestamps
    end
  end
end
