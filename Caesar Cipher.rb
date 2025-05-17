def caesar_cipher(string, shift)
  result = ""

  string.each_char do |char|
    if char.match?(/[A-Za-z]/)
      base = char.ord < 91 ? 'A'.ord : 'a'.ord
      shifted_char = ((char.ord - base + shift) % 26 + base).chr
      result += shifted_char
    else
      result += char
    end
  end

  result
end

