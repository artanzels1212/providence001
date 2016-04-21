json.array!(@teams) do |team|
  json.extract! team, :id, :img, :name, :designation, :link, :quote
  json.url team_url(team, format: :json)
end
