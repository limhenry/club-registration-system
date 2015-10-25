class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :slogan
      t.string :description
      t.string :url
      t.string :url
      t.string :fb_link
      t.string :twitter_link
      t.string :instagram_link
      t.string :youtube_link

      t.timestamps null: false
    end
  end
end
