json.array! @counters do |counter|
  json.title counter.title
  json.day counter.day
end