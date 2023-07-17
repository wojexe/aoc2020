# typed: true
# frozen_string_literal: true

class Day02
  def initialize()
    @input = File.readlines("inputs/day02")
                 .filter { |line| !line.empty? }
                 .map { |line| read_section(line) }
  end

  def read_section(line)
    startP, endP, char, str = line.strip.match(/(\d+)-(\d+) (\w): (\w+)/).captures

    return {
      startP: Integer(startP) - 1,
      endP: Integer(endP),
      char: ,
      str: ,
    }
  end

  def part_one
    @input.reduce(0) do |memo, line|
      line => { startP:, endP:, char:, str: }

      count = str.chars.filter { |c| c == char }.count

      memo + (count.between?(startP + 1, endP) ? 1 : 0)
    end
  end

def part_two
    def exactly_one_equal(a, b, c)
      (a == c) ^ (b == c)
    end

    @input.reduce(0) do |memo, line|  
      line => { startP:, endP:, char:, str: }

      memo + (exactly_one_equal(str[startP], str[endP - 1], char) ? 1 : 0)
    end
  end
end

solution = Day02.new()

puts solution.part_one()
puts solution.part_two()
