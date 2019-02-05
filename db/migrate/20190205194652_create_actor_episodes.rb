class CreateActorEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :actor_episodes do |t|
      t.references :actor, foreign_key: true
      t.references :episode, foreign_key: true

      t.timestamps
    end
  end
end
