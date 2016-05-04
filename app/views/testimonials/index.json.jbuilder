json.array!(@testimonials) do |testimonial|
  json.extract! testimonial, :id, :name, :content
  json.url testimonial_url(testimonial, format: :json)
end
