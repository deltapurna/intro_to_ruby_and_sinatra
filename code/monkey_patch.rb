#!/home/delta/.rbenv/shims/ruby

class String
  def shout!
    "#{self.upcase}!!!"
  end
end

puts "Tech Talk JDV".shout!
