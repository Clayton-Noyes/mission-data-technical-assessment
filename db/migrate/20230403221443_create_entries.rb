class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.bigint :journal_id
      t.string :title
      t.text :content
      t.datetime :published_at
      t.boolean :is_published

      t.timestamps
    end
  end
end
