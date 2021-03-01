class AnalisadorLinha
  attr_accessor :number,:line,:frequency

  def initialize (number,line)
    @number = number
    @line = line
    @frequency = []
    self.set_frequency(line)
  end

  def set_frequency (valor)
    arr = valor.split(" ")
    hash = Hash.new(0)
    arr.each { |word| hash[word] += 1 }
    hash.each { |k, v| @frequency.push([k, v]) if v == hash.values.max }
  end

  def to_str
    return "Linha Nº: #{@number} | Frequência: #{@frequency}"
  end  

end

# a = AnalisadorLinha.new(0, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec iaculis dignissim mauris, et luctus odio tincidunt id. Praesent tincidunt leo sit amet dictum blandit. Integer ligula odio, egestas ut porttitor vel, blandit nec massa. Donec orci nulla, pellentesque non neque a, tempor rhoncus nulla. Suspendisse a molestie erat, ac ultrices libero. Pellentesque et luctus neque. Nulla lobortis mi sit amet nisl malesuada, non eleifend tellus ornare. Phasellus accumsan, sem a facilisis lacinia, sem urna venenatis justo, vitae tincidunt mi ante nec mauris. Mauris ultrices venenatis metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur maximus eget tellus eget feugiat. Duis at blandit magna.")

# p a.to_str