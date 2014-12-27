json.array!(@users) do |user|
  json.extract! user, :id, :nom, :email, :mdp, :liste
  json.url user_url(user, format: :json)
end
