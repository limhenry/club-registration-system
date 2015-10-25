json.array!(@clubs) do |club|
  json.extract! club, :id, :name, :slogan, :description, :logo, :url, :url, :fb_link, :twitter_link, :instagram_link, :youtube_link
  json.url club_url(club, format: :json)
end
