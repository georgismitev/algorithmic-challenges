def self.generate_sequence(n, c, mod)
  max = 2 * n + 2
  sequence = Array.new(max)
  sequence[0] = 0
  sequence[1] = c

  i = 2
  while i < max do
    sequence[i] = (sequence[i - 1] + sequence[i - 2]) % mod
    i += 1
  end

  sequence
end

def self.generate_vectors(n, sequence)
  vectors = Array.new(n)
  multiplications = Array.new(n)

  i = 1
  while i <= n do
    twoi = 2 * i
    vectors[i - 1] = [sequence[twoi], sequence[twoi + 1]]
    multiplications[i - 1] = vectors[i - 1][0] * vectors[i - 1][1]
    i += 1
  end

  return vectors, multiplications
end

def self.generate_scalar_products(vectors, n, multiplications)
  scalar_products = []
  max_index = n

  if n >= 10000
    first = vectors[0]
    i = 1
    while i < n do
      if vectors[i] == first
        max_index = i + 1
        break
      end
      i += 1
    end
  end

  i = 0
  while i < max_index do
    j = i + 1
    while j < max_index do
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
sequence = generate_sequence(n, c, mod)
vectors, multiplications = generate_vectors(n, sequence)
scalar_products = generate_scalar_products(vectors, n, multiplications)
puts find_residue(scalar_products, mod)
