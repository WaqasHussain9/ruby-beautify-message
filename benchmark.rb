require './assignment'
require 'benchmark'

words = ['B$u$i$Id', '$t$$h$e', 'N$e$x$t', 'E$$ra', '$$o$f$', 'S$$of$t$wa$r$e', 'De$$ve$l$op$me$n$t']

puts Benchmark.measure { words.beautify_message }
