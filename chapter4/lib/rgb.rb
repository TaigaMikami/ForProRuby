def to_hex(r, g, b)
  # '1'.rjust(2, '0') => "01"
  #
  # '#' +
  #   r.to_s(16).rjust(2, '0') +
  #   g.to_s(16).rjust(2, '0') +
  #   b.to_s(16).rjust(2, '0')
  [r,g,b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  r ,g ,b = hex[1..2],hex[3..4],hex[5..6]
  [r,g,b].map do |s|
    s.hex
  end
end
