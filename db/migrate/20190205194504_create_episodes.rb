class CreateEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.string :title
      t.integer :runtime
      t.date :date

      t.timestamps
    end
  end
end
