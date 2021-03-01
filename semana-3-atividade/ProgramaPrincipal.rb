require "./AnalisadorLinha"

a = File.readlines("data.txt")

arr = []

a.each_with_index { |v, i| arr.push(AnalisadorLinha.new(i, v)) }

arr.each { |v| p v.to_str}