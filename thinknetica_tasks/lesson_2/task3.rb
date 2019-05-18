c = s = 1
loop do
  puts c, s
  c += s
  s += c
  break if c > 89
end
