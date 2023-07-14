# typed: true
# frozen_string_literal: true

require 'set'

class Day01
  SUM_TO = 2020

  def initialize()
    @input = File.readlines("inputs/day01").map(&:to_i)
  end

  def part_one(sum_to)
    elements = Set[]

    @input.each do |el|
      complement = sum_to - el

      if elements === complement
          return el * complement
      else
        elements.add(el)
      end
    end

    return nil
  end

  def part_two(sum_to)
    @input.each.with_index do |el, i|
      current_sum_to = sum_to - el

      result = part_one(current_sum_to)

      if result != nil
        return el * result
      end
    end

    return nil
  end
end

solution = Day01.new()

puts solution.part_one(Day01::SUM_TO)
puts solution.part_two(Day01::SUM_TO)
