def self.generate_sequence_and_vectors(n, c, mod)
  max = 2 * n + 2
  sequence = Array.new(max)
  sequence[0] = 0
  sequence[1] = c
  vectors = Array.new(n)
  multiplications = Array.new(n)

  vector = nil
  i = 2
  k = 0
  while i < max do
    sequence[i] = (sequence[i - 1] + sequence[i - 2]) % mod

    if i % 2 == 1 # verify edge cases
      vectors[k] = [sequence[i - 1], sequence[i]]
      multiplications[k] = sequence[i - 1] * sequence[i]
      vector = vectors[k] if k == 0
      break if vectors[k] == vector && k > 0
      k += 1
    end

    i += 1
  end

  return sequence, vectors, multiplications
end

def self.generate_scalar_products(vectors, n, multiplications)
  scalar_products = []
  max_index = n

  first = vectors[0]
  i = 1
  while i < n do
    if vectors[i] == first
      max_index = i + 1
      break
    end
    i += 1
  end

  i = 0
  while i < max_index && vectors[i] do
    j = i + 1
    while j < max_index && vectors[j] do
      if i != j
        scalar_products.push((vectors[i][0] + vectors[j][1]) * (vectors[i][1] + vectors[j][0]) - (multiplications[i] + multiplications[j]))
      end
      j += 1
    end
    i += 1
  end

  scalar_products
end

def self.find_residue(scalar_products, mod)
  residues = Hash.new { |h, k| h[k] = 0 }

  i = 0
  while i < scalar_products.length do
    residues[scalar_products[i] % mod] += 1
    i += 1
  end

  residues.keys.length % mod  
end

c, mod, n = gets.strip.split.map(&:to_i)
sequence, vectors, multiplications = generate_sequence_and_vectors(n, c, mod)
scalar_products = generate_scalar_products(vectors, n, multiplications)
puts find_residue(scalar_products, mod)
