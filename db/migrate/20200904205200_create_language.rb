class CreateLanguage < ActiveRecord::Migration[6.0]
  def change
    create_table :languages do |t|
      t.string :name
      t.string :style

      t.timestamps
    end
  end
end
