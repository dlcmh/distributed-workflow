Rails.application.routes.draw do
  root 'home#index'

  # == To be able to accept forward slash in route / path segments.
  # Specify `format: false` so that paths which have a file extension, eg
  # http://localhost:3000/content/git-init/1.bar, is accepted.
  # However, if a known format is in the path, eg '1.txt' or '1.json', there will
  # be an error 'ContentController#show is missing a template for this request
  # format and variant. request.formats: ["application/json"] request.variant: []'
  # => hence, need to specify `render 'show.html.erb'` as the last line in
  # `ContentController#show`.
  # http://guides.rubyonrails.org/routing.html#route-globbing-and-wildcard-segments
  get 'content/*path', to: 'content#show', format: false
end
