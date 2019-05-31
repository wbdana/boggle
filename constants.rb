# frozen_string_literal: true

require 'json'

module Constants
  # Use hashes for constant time lookups
  DICTIONARY = JSON.load File.open './dictionary.json'

  PREFIXES = JSON.load File.open './prefixes.json'

  # A visualization of the 4x4 Boggle board as a 2D array
  # [
  #     [ "F", "D", "Z", "R" ],
  #     [ "A", "C", "E", "D" ],
  #     [ "D", "S", "B", "X" ],
  #     [ "E", "A", "D", "T" ],
  # ]

  SQUARES = [
    {
      id: 1,
      val: 'F',
      north: nil,
      northeast: nil,
      east: 2,
      southeast: 6,
      south: 5,
      southwest: nil,
      west: nil,
      northwest: nil
    },
    {
      id: 2,
      val: 'D',
      north: nil,
      northeast: nil,
      east: 3,
      southeast: 7,
      south: 6,
      southwest: 5,
      west: 1,
      northwest: nil
    },
    {
      id: 3,
      val: 'Z',
      north: nil,
      northeast: nil,
      east: 4,
      southeast: 8,
      south: 7,
      southwest: 6,
      west: 2,
      northwest: nil
    },
    {
      id: 4,
      val: 'R',
      north: nil,
      northeast: nil,
      east: nil,
      southeast: nil,
      south: 8,
      southwest: 7,
      west: 3,
      northwest: nil
    },
    {
      id: 5,
      val: 'A',
      north: 1,
      northeast: 2,
      east: 6,
      southeast: 10,
      south: 9,
      southwest: nil,
      west: nil,
      northwest: nil
    },
    {
      id: 6,
      val: 'C',
      north: 2,
      northeast: 3,
      east: 7,
      southeast: 11,
      south: 10,
      southwest: 9,
      west: 5,
      northwest: 1
    },
    {
      id: 7,
      val: 'E',
      north: 3,
      northeast: 4,
      east: 8,
      southeast: 12,
      south: 11,
      southwest: 10,
      west: 6,
      northwest: 2
    },
    {
      id: 8,
      val: 'D',
      north: 4,
      northeast: nil,
      east: nil,
      southeast: nil,
      south: 12,
      southwest: 11,
      west: 7,
      northwest: 3
    },
    {
      id: 9,
      val: 'D',
      north: 5,
      northeast: 6,
      east: 10,
      southeast: 14,
      south: 13,
      southwest: nil,
      west: nil,
      northwest: nil
    },
    {
      id: 10,
      val: 'S',
      north: 6,
      northeast: 7,
      east: 11,
      southeast: 15,
      south: 14,
      southwest: 13,
      west: 9,
      northwest: 5
    },
    {
      id: 11,
      val: 'B',
      north: 7,
      northeast: 8,
      east: 12,
      southeast: 16,
      south: 15,
      southwest: 14,
      west: 10,
      northwest: 6
    },
    {
      id: 12,
      val: 'X',
      north: 8,
      northeast: nil,
      east: nil,
      southeast: nil,
      south: 16,
      southwest: 15,
      west: 11,
      northwest: 7
    },
    {
      id: 13,
      val: 'E',
      north: 9,
      northeast: 10,
      east: 14,
      southeast: nil,
      south: nil,
      southwest: nil,
      west: nil,
      northwest: nil
    },
    {
      id: 14,
      val: 'A',
      north: 10,
      northeast: 11,
      east: 15,
      southeast: nil,
      south: nil,
      southwest: nil,
      west: 13,
      northwest: 9
    },
    {
      id: 15,
      val: 'D',
      north: 11,
      northeast: 12,
      east: 16,
      southeast: nil,
      south: nil,
      southwest: nil,
      west: 14,
      northwest: 10
    },
    {
      id: 16,
      val: 'T',
      north: 12,
      northeast: nil,
      east: nil,
      southeast: nil,
      south: nil,
      southwest: nil,
      west: 15,
      northwest: 11
    }
  ].freeze
end
