# helper class to test certain pieces of code

class HackerRank
  def self.sumar(x1, y1, x2, y2)
    number_of_ys = 0
    x1 *= -1 if x1 < 0
    x2 *= -1 if x2 < 0
    y1 *= -1 if y1 < 0
    y2 *= -1 if y2 < 0

    xi = x1 + 1

    while xi < x2 do
      yi = ((xi - x1) * (y2 - y1)) / ((x2 - x1) * 1.0) + y1
      number_of_ys += 1 if yi % 1 == 0
      xi += 1
    end

    number_of_ys
  end
end
