json.array!(@colleges) do |college|
  json.extract! college, :id, :name, :address, :phno, :website
  json.url college_url(college, format: :json)
end
