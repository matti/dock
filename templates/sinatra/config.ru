require_relative 'app'

$stdout.sync = true

run Rack::URLMap.new({
  '/' => Sinatra::Application,
})
