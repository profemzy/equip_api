json.array!(@equipments) do |equipment|
  json.extract! equipment, :id, :name, :ip, :location, :status
end
