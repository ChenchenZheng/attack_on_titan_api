json.array! @titans do |titan|
  json.extract! titan, :id, :name, :other_names, :abilities, :current_inheritor, :former_inheritors, :allegiance
end
