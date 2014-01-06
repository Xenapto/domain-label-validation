tests = [
  ['01010', true],
  ['abc', true],
  ['A0c', true],
  ['A0c-', false],
  ['-A0c', false],
  ['A-0c', true],
  ['o123456701234567012345670123456701234567012345670123456701234567', false],
  ['o12345670123456701234567012345670123456701234567012345670123456', true],
  ['', false],
  ['a', true],
  ['0--0', true],
  ["A0c\nA0c", false]
]

regex = /\A(?!-)[a-zA-Z0-9-]{1,63}(?<!-)\z/
tests.each do |label, expected|
  is_match = !!(regex =~ label)
  puts is_match == expected
end
