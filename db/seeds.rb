require "open-uri"

url = "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/9b/05/c5/restaurante-rick-s.jpg"
file = URI.parse(url).open

article = Article.new(title: "My First Article", body: "Hello, this is my first article here!!")
article.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
article.save!
