json.array!(@advertises) do |advertise|
  json.extract! advertise, :id, :title, :description, :status, :color1, :color2, :race, :street1, :street2, :name, :size, :when, :gender, :age
  json.url advertise_url(advertise, format: :json)
end
