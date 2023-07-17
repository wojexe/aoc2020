# typed: true
# frozen_string_literal: true

class Day02
  def initialize()
    @input = File.readlines("inputs/day02.example")

    @input.map { |line| read_section(line) } 

    @input.each { |line| puts line }
  end

  # `1-3 a: abcde`
  def read_section(line)
    divider = line.index '-'
    space = line.index ' '
    second_space = line.index ' ' # make it properly tho

    puts "Processing `#{line.strip}`"

    result = {
      start: Integer(line[0, divider]),
      end: Integer(line[divider + 1, space - 1]),
      symbol: line[space + 1, space + 2],
      password: line[second_space + 1 ..]
    }

    puts result

    return {
      start: Integer(line[0, divider]),
      end: Integer(line[divider + 1, space - 1]),
      symbol: line[space + 1, space + 2],
      password: line[second_space + 1 ..]
    }
  end

  def part_one
    return nil
  end

  def part_two
    return nil
  end
end

solution = Day02.new()

puts solution.part_one()
puts solution.part_two()
