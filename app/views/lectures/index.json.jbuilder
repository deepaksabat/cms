json.array!(@lectures) do |lecture|
  json.extract! lecture, :id, :name, :address, :phno
  json.url lecture_url(lecture, format: :json)
end
