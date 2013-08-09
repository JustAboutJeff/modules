# Re-implement the ruby shuffle method, and testing randomness

class Array

  def shuffle
    self.dup.shuffle!
  end

  def shuffle!
    self.sort_by! { rand }
  end
end

if $0 == __FILE__
  shuffled = []
  10000.times do
    shuffled << (1..10).to_a.shuffle
  end
  test = shuffled.size - shuffled.uniq.size
  puts test > 0 ? "--> NOT RANDOM #{test} MATCHES" : "--> RANDOM"
end

__END__

To shuffle an array a of n elements (indices 0..n-1):
  for i from n − 1 downto 1 do
       j ← random integer with 0 ≤ j ≤ i
       exchange a[j] and a[i]
