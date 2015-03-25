symbols = ["Rock", "Paper", "Scissors"]

symbols.each do |symbol|
  Symbol.create(name: symbol)
end
