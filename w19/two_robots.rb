module Math
  FIXNUM_MAX = (2 ** (0.size * 8 - 2) - 1)

  def self.max
    FIXNUM_MAX
  end
end

def self.two_robots(queries)
  min_distance = Math.max

  i = 1
  while i < queries.length do
    a_current_position = queries[0][1]
    distance = (queries[0][1] - queries[0][0]).abs

    j = 1
    while j < i do
      distance += (queries[j][0] - a_current_position).abs + (queries[j][1] - queries[j][0]).abs
      a_current_position = queries[j][1]
      j += 1
    end

    distance += (queries[j][1] - queries[j][0]).abs
    b_current_position = queries[j][1]
    j += 1

    while j < queries.length do
      a_distance = (queries[j][0] - a_current_position).abs + (queries[j][1] - queries[j][0]).abs
      b_distance = (queries[j][0] - b_current_position).abs + (queries[j][1] - queries[j][0]).abs

      if j < queries.length - 1
        a_next_distance = a_distance + (queries[j + 1][0] - queries[j][1]).abs + (queries[j + 1][1] - queries[j + 1][0]).abs
        b_next_distance = b_distance + (queries[j + 1][0] - queries[j][1]).abs + (queries[j + 1][1] - queries[j + 1][0]).abs
        if a_next_distance < b_next_distance
          a_current_position = queries[j][1]
          distance += a_distance
        else
          b_current_position = queries[j][1]
          distance += b_distance
        end
      else
        if a_distance < b_distance
          a_current_position = queries[j][1]
          distance += a_distance
        else
          b_current_position = queries[j][1]
          distance += b_distance
        end
      end

      j += 1
    end

    min_distance = [distance, min_distance].min

    i += 1
  end

  min_distance
end

gets.to_i.times do
  m, n = gets.strip.split.map(&:to_i)
  queries = Array.new(n)
  n.times { |i| queries[i] = gets.strip.split.map(&:to_i) }
  puts two_robots(queries)
end
