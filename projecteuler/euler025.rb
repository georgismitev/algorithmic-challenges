MAX = 25000

def self.generate_facts
  facts = Array.new(MAX + 1)
  facts[0] = 1
  facts[1] = 1
  i = 2
  while i <= MAX do
    facts[i] = facts[i - 1] + facts[i - 2]
    i += 1
  end
  facts
end

def self.digits(n)
  (Math.log10(n) + 1).to_i
end

def self.digits_sequence
  @digits_sequence ||= begin
    facts = generate_facts
    digit_sequence = []
    digit_sequence.push(0)
    digit_sequence.push(1)
    i = 2
    j = 2
    while i <= MAX do
      if digits(facts[i])  == j
        digit_sequence.push(i + 1)
        j += 1
      end
      i += 1
    end
    digit_sequence
  end
end

gets.to_i.times { puts digits_sequence[gets.to_i] }
