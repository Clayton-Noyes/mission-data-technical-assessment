class CreateJournals < ActiveRecord::Migration[7.0]
  def change
    create_table :journals do |t|
      t.string :title
      t.string :subtitle
      t.string :description
      t.datetime :first_publishing_date
      t.string :publisher

      t.timestamps
    end
  end
end
