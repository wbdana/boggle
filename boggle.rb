# frozen_string_literal: true

require_relative 'constants'

class Boggle
  attr_accessor :results

  def initialize(squares)
    @squares = squares
    @results = {}
    boggle
  end

  def boggle
    # Starting with each letter object (a square), traverse the board and add
    # results to results array
    @squares.each do |letter_obj|
      # Initial string will be empty for each square
      current_string = ''
      # Initial array of visited ids will be empty for each square
      visited_ids = []
      # Traverse the board
      traverse_board(letter_obj, current_string, visited_ids)
    end

    print "Results: \n" + @results.keys.to_s + "\n"
    puts 'Count: ' + @results.keys.length.to_s
  end

  def traverse_board(current_square, current_string, visited_ids)
    # Add the current square's value to the current string
    current_string += current_square[:val]

    # Add the current square's id to the array of visited ids for this starting square
    visited_ids.push(current_square[:id])

    # Check if current string is a prefix. If not, return
    return unless is_prefix?(current_string)

    # Check if current string is a word not in results. If so, add it to results
    if is_word?(current_string) && !@results.include?(current_string)
      @results[current_string] = 1
    end

    # Iterate over the square's keys, which are mostly directions
    current_square.keys.each do |key|
      # Omit id and val keys, since they are not directions
      next if key == :id || key == :val

      next_square_id = current_square[key]

      # Omit directions where the id is nil
      next if next_square_id.nil?

      # Omit directions with ids we have already visited
      next if visited_ids.include?(next_square_id)

      next_square = get_square_by_id(next_square_id)

      traverse_board(
        next_square,
        current_string,
        visited_ids
      )
    end
  end

  # Check if a string is a word in the dictionary
  def is_word?(word)
    Constants::DICTIONARY.key?(word.downcase)
  end

  # Check is a string is a prefix for a word in the dictionary
  def is_prefix?(word)
    Constants::PREFIXES.key?(word.downcase)
  end

  # Locate and return a particular square object from the board
  def get_square_by_id(id)
    @squares.find { |obj| obj[:id] == id }
  end
end

Boggle.new(Constants::SQUARES)
