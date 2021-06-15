json.array! @characters do |character|
  json.extract! character, :id, :first_name, :last_name, :species, :age, :height, :residence, :status, :alias
end
