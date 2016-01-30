require 'pry'

module Math
  FIXNUM_MAX = (2 ** (0.size * 8 - 2) - 1)
  FIXNUM_MIN = -(2 ** (0.size * 8 - 2))

  def self.max
    FIXNUM_MAX
  end

  def self.min
    FIXNUM_MIN
  end
end

# helper class to test certain pieces of code
class HackerRank
  def self.gcd(a, b)
    b == 0 ? a : gcd(b, a % b)
  end

  def self.sumar_linear(x1, y1, x2, y2)
    return [y1, y2].max - [y1, y2].min - 1 if x1 == x2

    number_of_ys = 0
    min = x2 > x1 ? x1 : x2
    max = x2 > x1 ? x2 : x1

    xi = min + 1

    while xi < max do
      yi = ((xi - x1) * (y2 - y1)) / ((x2 - x1) * 1.0) + y1
      number_of_ys += 1 if yi % 1 == 0
      xi += 1
    end

    number_of_ys
  end

  def self.sumar(x1, y1, x2, y2)
    a = (x1 - x2).abs
    b = (y1 - y2).abs
    gcd(a, b) - 1
  end

  def self.find_divisors(n)
    divisors = SortedSet.new
    divisors.add(1)
    divisors.add(n)

    i = 2
    while i * i <= n do
      if n % i == 0
        divisors.add(i)
        divisors.add(n / i)
      end
      i += 1
    end

    divisors.to_a
  end

  def self.sherlock_permutation(n, m)
    (facts[n + m - 1] / (facts[n] * facts[m - 1])) % 1000000007
  end

  def self.candy(n, k)
    s = (facts[n + k - 1] / (facts[k] * facts[n - 1]))
    s.to_s.length > 9 ? s.to_s[-9..-1].to_i : s
  end

  def self.facts(to = 2500)
    @facts ||= begin
      facts = Array.new(to)
      facts[0] = 1
      facts[1] = 1
      facts[2] = 2

      i = 3
      while i <= facts.length - 1 do
        facts[i] = facts[i - 1] * i
        i += 1
      end

      facts
    end
  end

  def self.build_list(string)
    permutations = SortedSet.new
    used = Array.new(string.length) { 0 }
    generate_permutations(permutations, [], string, used, 0).to_a
  end

  def self.generate_permutations(permutations, current_permutation, string, used, last_index)
    permutations.add(current_permutation.join) if current_permutation.length > 0

    last_index.upto(string.length - 1) do |i|
      if used[i] == 0
        current_permutation.push(string[i])
        used[i] = 1
        last_index += 1
        generate_permutations(permutations, current_permutation, string, used, last_index)
        # last_index -= 1
        used[i] = 0
        current_permutation.pop
      end
    end

    permutations
  end

  MATRIX_MOD = 1000000007

  def self.matrix_facts(to = 2000007)
    @matrix_facts ||= begin
      f = Array.new(to)
      f[0] = 1
      f[1] = 1

      i = 2
      while i < to do
        f[i] = (f[i - 1] * i) % MATRIX_MOD
        i += 1
      end

      f
    end
  end

  def self.matrix_tracing(m, n)
    facts_sum = matrix_facts[m + n - 2]
    facts_n = InverseModule.of(matrix_facts[n - 1], MATRIX_MOD)
    facts_m = InverseModule.of(matrix_facts[m - 1], MATRIX_MOD)
    (facts_sum * facts_m * facts_n) % MATRIX_MOD
  end

  def self.special_multiple(n)
    i = 1
    while i < special_multiples.length do
      special_multiples[i].each do |combination_number|
        number = combination_number.to_i
        return number if number > 0 && number % n == 0
      end
      i += 1
    end
  end

  def self.special_multiples
    @special_multiples ||= begin
      max = 12
      array_combinations = Array.new(max) { [] }
      array_combinations[0] = ['0', '9']

      i = 1
      while i < array_combinations.length do
        new_combinations = []
        ['0', '9'].each do |element|
          j = 0
          while j < array_combinations[i - 1].length do
            new_combinations.push(array_combinations[i - 1][j] + element)
            j += 1
          end
        end
        array_combinations[i] = new_combinations.sort
        i += 1
      end

      array_combinations
    end
  end

  def self.possible_path(a, b, x, y)
    if gcd(a, b) == gcd(x, y)
      'YES'
    else
      'NO'
    end
  end

  def self.reverse_game(n, k)
    if k < n / 2
      2 * k + 1
    else
      2 * (n - k - 1)
    end
  end

  def self.strange_grid(r, c)
    row = ((r - 1) / 2) * 10
    column = (r - 1) % 2 == 0 ? (c - 1) * 2 : c * 2 - 1
    row + column
  end

  def self.even_odd_query(array, x, y)
    if x == y
      array[x - 1] % 2 == 1 ? 'Odd' : 'Even'
    else
      array[x] == 0 || array[x - 1] % 2 == 1 ? 'Odd' : 'Even'
    end
  end

  def self.find_gallons(a, b)
    gallons = Set.new
    gallons.add(a)
    gallons.add(b)

    processed = Set.new
    less_than_b = [b]

    while true do
      processing = less_than_b.pop
      ta = a - b + processing
      processed.add(processing)

      while ta > 0 do
        gallons.add(ta)
        less_than_b.push(ta) if ta < b && !processed.include?(ta)
        ta -= b
      end

      break if less_than_b.empty?
    end

    gallons.to_a
  end

  def self.time_conversion(time)
    if time[-2..-1] == 'PM'
      if time[0..1].to_i > 12
        time[0..1] = '%.2d' % ((time[0..1].to_i + 12) % 24)
      elsif time[0..1].to_i < 12
        time[0..1] = (time[0..1].to_i + 12).to_s
      end
    else
      if time[0..1].to_i >= 11
        time[0..1] = '%.2d' % ((time[0..1].to_i + 12) % 24)
      end
    end

    time[0..-3]
  end

  def self.cut_the_sticks(array)
    cuts = []
    n = array.length
    i = 0

    array = array.sort

    while i < n do
      while array[i] == 0 do
        i += 1
      end
      min = array[i]
      j = i
      break if j == n
      cuts.push(n - j)
      while j < n do
        array[j] = array[j] - min >= 0 ? array[j] - min : 0
        j += 1
      end
    end

    cuts
  end

  def self.anagramify(s)
    if s.length % 2 == 1
      -1
    else
      size = s.length / 2
      a = s[0..size - 1]
      b = s[size..-1]
      alphabet_a = Hash.new { |hash, key| hash[key] = 0 }
      alphabet_b = Hash.new { |hash, key| hash[key] = 0 }

      i = 0
      while i < a.length do
        alphabet_a[a[i]] += 1
        i += 1
      end

      i = 0
      while i < b.length do
        alphabet_b[b[i]] += 1
        i += 1
      end

      alphabet_b.each_pair do |k, v|
        if v >= alphabet_a[k]
          alphabet_b[k] -= alphabet_a[k]
        else
          alphabet_b[k] = 0
        end
      end

      chars_to_replace = 0

      alphabet_b.each_pair { |k, v| chars_to_replace += v }

      chars_to_replace
    end
  end

  def self.find_anagram_pairs(s)
    anagram_size = 1
    anagram_hash = Hash.new { |hash, key| hash[key] = 0 }

    while anagram_size < s.length do
      i = 0
      while i < s.length - anagram_size + 1 do
        anagram_hash[s[i..i + anagram_size - 1].split('').sort] += 1
        i += 1
      end
      anagram_size += 1
    end

    pairs = 0
    anagram_hash.each_pair { |k, v| pairs += v * (v - 1) / 2 if v >= 2 }
    pairs
  end

  def self.valid_sherlock_string?(s)
    alphabet = Hash.new { |hash, key| hash[key] = 0 }
    i = 0

    while i < s.length do
      alphabet[s[i]] += 1
      i += 1
    end

    numbers = Hash.new { |hash, key| hash[key] = 0 }
    alphabet.each_pair { |k, v| numbers[v] += 1 }

    if numbers.length == 1 || (numbers.length == 2 && numbers.values.include?(1))
      'YES'
    else
      'NO'
    end
  end

  def self.morgan_and_a_string?(a, b)
    s = b + a
    i = 0
    j = 0
    k = 0
    z = 0
    output = Array.new(s.length)
    suffix_array = CreateInvertedSuffixArray.from(s)

    while k < s.length && i < a.length && j < b.length do
      if suffix_array[b.length + i] < suffix_array[j]
        output[z] = a[i]
        z += 1
        i += 1
      else
        output[z] = b[j]
        z += 1
        j += 1
      end
      k += 1
    end

    while i < a.length do
      output[z] = a[i]
      z += 1
      i += 1
    end

    while j < b.length do
      output[z] = b[j]
      z += 1
      j += 1
    end

    output.join
  end

  def self.z_function(string)
    length = string.length
    z_array = Array.new(length) { 0 }

    left, right, k = 0, 0, 1
    while k < length do
      if k > right
        left = right = k
        while right < length && string[right] == string[right - left] do
          right += 1
        end
        z_array[k] = right - left
        right -= 1
      else
        k1 = k - left
        if z_array[k1] < right - k + 1
          z_array[k] = z_array[k1]
        else
          left = k
          while right < length && string[right] == string[right - left] do
            right += 1
          end
          z_array[k] = right - left
          right -= 1 
        end
      end
      k += 1
    end

    z_array
  end

  def self.common_child_recursion(a, b)
    return 0 if a.length == 0 || b.length == 0

    if a[a.length - 1] == b[b.length - 1]
      1 + common_child(a[0..-2], b[0..-2])
    else
      [common_child(a[0..-1], b[0..-2]), common_child(a[0..-2], b[0..-1])].max
    end
  end

  def self.common_child_dp(a, b, diff)
    return diff if a.size == 0 || b.size == 0

    dp = Array.new(a.size) { Array.new(b.size) }

    0.upto(a.size - 1) { |i| dp[i][0] = a[i] == b[0] ? 1 : 0 }
    0.upto(b.size - 1) { |j| dp[0][j] = a[0] == b[j] ? 1 : 0 }

    1.upto(b.size - 1) do |j|
      1.upto(a.size - 1) do |i|
        if a[i] == b[j]
          dp[i][j] = 1 + dp[i - 1][j - 1]
        else
          dp[i][j] = [dp[i][j - 1], dp[i - 1][j]].max
        end
      end
    end

    dp[a.size - 1][b.size - 1] + diff
  end

  def self.common_child(a, b)
    diff = 0

    i, j = 0, 0
    i_start, j_start = 0, 0
    while i < a.size && j < b.size && a[i] == b[j] do
      i_start += 1
      j_start += 1
      i += 1
      j += 1
      diff += 1
    end

    i, j = a.size - 1, b.size - 1
    i_end, j_end = a.size - 1, b.size - 1
    while i > i_start && j > j_start && a[i] == b[j] do
      i_end -= 1
      j_end -= 1
      i -= 1
      j -= 1
      diff += 1
    end

    common_child_dp(a[i_start..i_end], b[j_start..j_end], diff)
  end

  def self.maximise_sum(array, m)
    n = array.length

    prefix_array = Array.new(n)
    prefix_array[0] = array[0] % m

    prefix_rbtree = RedBlackTree.new
    prefix_rbtree.insert(prefix_array[0])

    i = 1
    max_value = prefix_array[0]

    while i < n do
      prefix_array[i] = (prefix_array[i - 1] + array[i]) % m
      max_ending_at_i = prefix_array[i]
      prev_sum = prefix_rbtree.find(prefix_array[i])
      max_ending_at_i = (prefix_array[i] - prev_sum) % m if prev_sum
      max_value = [max_value, max_ending_at_i].max
      prefix_rbtree.insert(prefix_array[i])
      i += 1
    end

    max_value
  end

  def self.bigger_is_greater(w)
    n = NextPermutation.of(w)
    n == -1 ? 'no answer' : n
  end

  def self.sort(array)
    # QuickSort.sort(array)
    MergeSort.sort(array)
  end

  def self.sherlock_and_watson(array, idx, k)
    output = Array.new(idx.length)
    k %= array.length
    idx.length.times { |i| output[i] = array[idx[i] - k] }
    output
  end

  def self.maxsubarray(array)
    i = 0
    positive_sum = 0
    negative_sum = Math.min
    while i < array.length do
      if array[i] > 0
        positive_sum += array[i]
      else
        negative_sum = [negative_sum, array[i]].max
      end

      i += 1
    end

    non_contiguous_sum = positive_sum > 0 ? positive_sum : negative_sum

    i = 1
    current_sum = array[0]
    contiguous_sum = current_sum
    while i < array.length do
      current_sum = [current_sum + array[i], array[i]].max
      contiguous_sum = [contiguous_sum, current_sum].max
      i += 1
    end

    return contiguous_sum, non_contiguous_sum
  end

  def self.string_reduction_counts(string)
    counts = Hash.new { |hash, key| hash[key] = 0 }

    i = 0
    while i < string.length do
      counts[string[i]] += 1
      i += 1
    end

    return string.length if counts.keys.length == 1

    odd = 0
    even = 0

    counts.each_pair { |_, v| v % 2 == 0 ? even += 1 : odd += 1  }

    if odd == 3 || even == 3
      2
    else
      1
    end
  end

  def self.replacement_rules
    @replacement_rules ||= {
      'ab' => 'c',
      'ba' => 'c',
      'ac' => 'b',
      'ca' => 'b',
      'bc' => 'a',
      'cb' => 'a'
    }
  end

  def self.replacement(key)
    replacement_rules[key] || ''
  end

  def self.string_reduction(string, results_hash = {})
    return 1 if string.length == 1
    return results_hash[string] if results_hash[string]

    string_map = Hash.new { |hash, key| hash[key] = 0 }

    i = 0
    while i < string.length do
      string_map[string[i]] += 1
      i += 1
    end

    if string_map.keys.length > 1
      l = replacement(string[0..1]) + string[2..-1]
      r = string[0..-3] + replacement(string[-2..-1])
      results_hash[l] = string_reduction(l, results_hash)
      results_hash[r] = string_reduction(r, results_hash)

      [
        results_hash[l],
        results_hash[r]
      ].min
    else
      results_hash[string] = string.length
      string.length
    end
  end

  def self.coin_change(amount, coins)
    dp = Array.new(amount + 1) { Array.new(coins.length) { 0 } }
    dp[0] = Array.new(coins.length) { 1 }

    # i amount
    # j coins
    i = 1
    while i <= amount do
      j = 0
      while j < coins.length do
        l = j >= 1 ? dp[i][j - 1] : 0
        r = i - coins[j] >= 0 ? dp[i - coins[j]][j] : 0
        dp[i][j] = l + r
        j += 1
      end
      i += 1
    end

    dp[amount][coins.length - 1]
  end

  def self.lis_recursive(array, previous_max = Math.min)
    return 0 if array.length == 0

    if array[0] <= previous_max
      lis(array[1..-1], previous_max)
    else
      [1 + lis(array[1..-1], array[0]), lis(array[1..-1], previous_max)].max
    end
  end

  def self.lis_squared(array)
    array.unshift(Math.min)
    size = array.length
    dp = Array.new(size + 1) { Array.new(size) }

    i = 0
    while i <= size do
      dp[i][size] = 0
      i += 1
    end

    j = size - 1
    while j >= 0 do
      i = 0
      while i <= j do
        if array[i] >= array[j]
          dp[i][j] = dp[i][j + 1]
        else
          l = 1 + dp[j][j + 1]
          r = dp[i][j + 1]
          dp[i][j] = [l, r].max
        end
        i += 1
      end
      j -= 1
    end

    dp[0][1]
  end

  def self.lis_linear_memory(array)
    array.unshift(Math.min)
    size = array.length
    dp = Array.new(size + 1) { Array.new(2) }

    i = 0
    while i <= size do
      dp[i][1] = 0
      i += 1
    end

    j = size - 1
    while j >= 0 do
      i = 0
      while i <= j do
        if array[i] >= array[j]
          dp[i][0] = dp[i][1]
        else
          l = 1 + dp[j][1]
          r = dp[i][1]
          dp[i][0] = [l, r].max
        end
        i += 1
      end

      i = 0
      while i <= size do
        dp[i][1] = dp[i][0]
        dp[i][0] = nil
        i += 1
      end

      j -= 1
    end

    dp[0][1]
  end

  def self.lis_dp_squared(array)
    dp = Array.new(array.length) { 1 }

    i = 1
    while i < array.length do
      j = 0
      while j < i do
        if array[i] > array[j] && dp[i] <= dp[j]
          dp[i] = dp[j] + 1
        end
        j += 1
      end
      i += 1
    end

    i = 0
    max = -1
    while i < array.length do
      max = [max, dp[i]].max
      i += 1
    end

    max
  end

  def self.find_ceiling(number, array)
    ceiling = -1
    ceiling_index = -1
    s, e = 0, array.length - 1

    while s <= e do
      m = (s + e) / 2
      if array[m] >= number
        ceiling = array[m]
        ceiling_index = m
        e = m - 1
      else
        s = m + 1
      end
    end

    return ceiling, ceiling_index
  end

  def self.lis_find_ceiling(number, array, end_value, t)
    ceiling_index = -1
    s, e = 0, end_value

    while s <= e do
      m = (s + e) / 2

      if array[t[m]] >= number
        ceiling_index = m
        e = m - 1
      else
        s = m + 1
      end
    end

    ceiling_index
  end

  def self.lis(array)
    t = Array.new(array.length)
    r = Array.new(array.length) { -1 }

    len = 0
    t[0] = 0
    i = 1
    while i < array.length do
      if array[i] < array[t[0]]
        t[0] = i
      elsif array[i] > array[t[len]]
        len += 1
        t[len] = i
        r[t[len]] = t[len - 1]
      else
        ceiling_index = lis_find_ceiling(array[i], array, len, t)
        t[ceiling_index] = i
        r[t[ceiling_index]] = t[ceiling_index - 1]
      end
      i += 1
    end

    len + 1
  end

  def self.largest_subsequence(s)
    return s[0] if s.length == 1
    rest = largest_subsequence(s[1..-1])
    rest[0] <= s[0] ? s[0] + rest : rest
  end

  def self.kmp(string)
    p = Array.new(string.length) { 0 }

    i = 1
    j = 0
    while i < string.length do
      # go the the last match before current position
      while j > 0 && string[i] != string[j]
        j = p[j - 1]
      end

      if string[i] == string[j]
        p[i] = j + 1
        j += 1
      end

      i += 1
    end

    p
  end

  def self.shortest_palindrome(s)
    reversed = s.reverse
    string = s + '$' + reversed
    longest_match = kmp(string).last
    reversed[0..(s.length - longest_match - 1)] + s
  end

  def self.find_kruskal_weight(vertices, edges)
    weight = 0
    size = vertices.length - 1
    sets = { }
    vertex_set = { }

    vertices.each_pair do |k, _|
      sets[k] = Set[k]
      vertex_set[k] = k
    end
    edges = edges.sort_by { |s, e, w| w }

    edge_index = 0
    i = 0

    while i < size && edge_index < edges.length do
      s, e, w = edges[edge_index]
      s = vertex_set[s]
      e = vertex_set[e]
      if !sets[s].include?(e)
        weight += w
        sets[e].each do |element|
          sets[s].add(element)
          vertex_set[element] = s
        end
        i += 1
      end
      edge_index += 1
    end

    weight
  end

  def self.find_prim_weight(graph, start_vertex)
    weight = 0

    visited = { }
    visited_edges = { }

    visited[start_vertex] = 1

    edges = MinHeap.new
    graph[start_vertex].keys.each do |end_vertex|
      edges.insert(
        Edge.new(
          start_vertex,
          end_vertex,
          graph.edge_weight(start_vertex, end_vertex)
        )
      )
      visited_edges[[start_vertex, end_vertex]] = 1
    end

    (graph.size - 1).times do
      min_edge = edges.extract
      while visited[min_edge.start_vertex] && visited[min_edge.end_vertex] do
        min_edge = edges.extract
      end
      weight += min_edge.weight
      visited[min_edge.end_vertex] = 1

      graph[min_edge.end_vertex].each_pair do |end_vertex, edge_weight|
        if !visited[end_vertex] &&
          !visited_edges[[min_edge.end_vertex, end_vertex]]
          edges.insert(
            Edge.new(
              min_edge.end_vertex,
              end_vertex,
              edge_weight
            )
          )
          visited_edges[[min_edge.end_vertex, end_vertex]] = 1
        end
      end
    end

    weight
  end

  def self.floyd_shortest_paths(graph, questions)
    answers = Array.new(questions.length)

    floyd = FloydShortestPath.new(graph)
    floyd.find_shortest_paths

    questions.length.times do |i|
      answers[i] = floyd.distance_between(*(questions[i]))
    end

    answers
  end

  def self.crab_graphs(graph, n, t)
    ford_fulkerson_graph = FordFulkersonGraph.new
    source = 1
    consumer = 2 * n + 2
    head_set = Set.new
    feet_set = Set.new
    existing_edges = { }

    graph.each_pair do |s, edges|
      edges.each_pair do |e, _|
        head_set.add(2 * s)
        feet_set.add(2 * s + 1)
        next if existing_edges[[s, e]] || existing_edges[[e, s]]
        existing_edges[[s, e]] = 1
        ford_fulkerson_graph.add_edge(2 * s, 2 * e + 1, 1)
        ford_fulkerson_graph.add_edge(2 * e, 2 * s + 1, 1)
      end
    end

    head_set.each do |k|
      weight = [ford_fulkerson_graph[k].length, t].min
      ford_fulkerson_graph.add_edge(source, k, weight)
    end

    feet_set.each { |k| ford_fulkerson_graph.add_edge(k, consumer, 1) }

    MaxFlow.new(ford_fulkerson_graph).find_max_flow(source, consumer)
  end

  def self.get_max_profit(stock_prices_yesterday)
    size = stock_prices_yesterday.length
    max_prices = Array.new(size)
    max_prices[0] = -1
    max_prices[size - 1] = stock_prices_yesterday[size - 1]

    i = size - 2
    while i >= 1 do
      max_prices[i] = [max_prices[i + 1], stock_prices_yesterday[i]].max
      i -= 1
    end

    max_profit = 0
    i = 0
    while i < size - 1 do
      max_profit = [max_prices[i + 1] - stock_prices_yesterday[i], max_profit].max
      i += 1
    end

    max_profit
  end

  def self.product_of_other_numbers(array)
    size = array.length
    result = Array.new(size)
    l = Array.new(size)
    l[0] = 1
    r = Array.new(size)
    r[size - 1] = 1
    
    i = 1
    while i < size do
      l[i] = array[i - 1] * l[i - 1]
      i += 1
    end

    i = size - 2
    while i >= 0 do
      r[i] = r[i + 1] * array[i + 1]
      i -= 1
    end

    i = 0
    while i < size do
      result[i] = l[i] * r[i]
      i += 1
    end

    result
  end

  def self.condense_meetings(ranges)
    max_val = -1
    i = 0
    while i < ranges.length do
      max_val = [ranges[i][1], max_val].max
      i += 1
    end

    meeting_times = Array.new(max_val + 1) { 0 }
    i = 0
    while i < ranges.length do
      (ranges[i][1] - 1).downto(ranges[i][0]) do |j|
        meeting_times[j] += 1
      end
      i += 1
    end

    condensed_meetings = []

    i = 0
    while i < meeting_times.length do
      if meeting_times[i] > 0
        start_range = i
        while meeting_times[i] > 0
          i += 1
        end
        condensed_meetings.push([start_range, i])
      end

      i += 1
    end

    condensed_meetings
  end

  def self.bst_lca_with_arrays(tree, a, b)
    node_a = tree.find_node(a)
    node_b = tree.find_node(b)

    return -1 if node_a == nil || node_b == nil

    patha = []
    while !node_a.nil? do
      patha.push(node_a)
      node_a = node_a.parent
    end

    pathb = []
    while !node_b.nil? do
      pathb.push(node_b)
      node_b = node_b.parent
    end

    i = patha.length - 1
    j = pathb.length - 1
    while patha[i] == pathb[j] do
      i -= 1
      j -= 1
    end

    if patha[i].value == pathb[j].value
      patha[i].value
    else
      patha[i + 1].value
    end
  end

  def self.bst_lca(tree, a, b)
    if tree.nil? || tree.find_node(a) == nil || tree.find_node(b) == nil
      return -1
    end

    stack = [tree.root]

    while !stack.empty? do
      node = stack.pop
      if a < node.value && b < node.value
        stack.push(node.left)
      elsif a > node.value && b > node.value
        stack.push(node.right)
      else
        return node.value
      end
    end
  end
end
