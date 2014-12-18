json.equipment do
  json.id @equipment.id
  json.name @equipment.name
  json.ip @equipment.ip
  json.location @equipment.location
  json.status @equipment.status
end
