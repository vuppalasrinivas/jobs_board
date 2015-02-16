json.array!(@works) do |work|
  json.extract! work, :id, :title, :description, :company, :url
  json.url work_url(work, format: :json)
end
