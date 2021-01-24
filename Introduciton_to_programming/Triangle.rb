a, b, c = gets.split
puts a.to_f * b.to_f * Math.sin( c.to_i * Math::PI/180) / 2
puts a.to_f + b.to_f + Math.sqrt(a.to_f  ** 2 +  b.to_f ** 2 - 2 * Math.cos( c.to_i * Math::PI/180) * a.to_f * b.to_f)
puts b.to_f *  Math.sin( c.to_i * Math::PI/180) 