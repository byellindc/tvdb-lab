class AddShowToEpisodes < ActiveRecord::Migration[5.2]
  def change
    add_reference :episodes, :show, foreign_key: true
  end
end
