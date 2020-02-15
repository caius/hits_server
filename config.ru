HITS = 0

app = lambda do |env|
  HITS += 1

  [200, {"Content-Type" => "text/plain"}, ["Hits: #{HITS}\n"]]
end

run app
