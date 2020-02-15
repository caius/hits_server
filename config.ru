require "redis"

r = Redis.new

app = lambda do |env|
  r.incr "hits"

  [200, {"Content-Type" => "text/plain"}, ["Hits: #{r.get "hits"}\n"]]
end

run app
