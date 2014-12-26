json.array!(@commands) do |command|
  json.extract! command, :id, :name, :url, :description, :uses
  json.url command_url(command, format: :json)
end
