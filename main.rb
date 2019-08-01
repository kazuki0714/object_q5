# main.rb
require_relative 'car'
require_relative 'ferrari'
require_relative 'honda'
require_relative 'nissan'
require_relative 'toyota'

puts '-----ホンダ----'
honda = Honda.new
honda.output_information(honda)

puts '-----ニッサン----'
nissan = Nissan.new
nissan.output_information(nissan)

puts '-----フェラーリ----'
ferrari = Ferrari.new
ferrari.output_information(ferrari)

puts '-----トヨタ----'
toyota = Toyota.new
toyota.output_information(toyota)

puts '-----走行時間----'
puts "走行時間（ホンダ）:#{honda.time}秒" # =>10
puts "走行時間（日産）:#{nissan.time}秒" # => 8.3333...
puts "走行時間（フェラーリ）:#{ferrari.time}秒" # => 1
puts "走行時間（トヨタ）:#{toyota.time}秒"

puts '-----順位-------'
#arr = "[#{honda.time}, #{nissan.time}, #{ferrari.time}]"
#arr = ["ホンダ#{honda.time}", "日産#{nissan.time}", "#{ferrari.time}"]
#arr = [honda.time,nissan.time,ferrari.time,toyota.time]

#puts arr.sort!
#puts [['ホンダ', 10], ['日産', 5], ['フェラーリ', 1]].sort_by(&:last).map(&:first)

arr = [honda,nissan,ferrari,toyota]
puts arr.sort_by{|x| x.time}.map(&:type)
