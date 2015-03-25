#!/home/delta/.rbenv/shims/ruby

class Animal; def walk; "Walking..."; end; end;
class Cat < Animal
  def speak
    "Meong..."
  end
end

puts "#{Cat.new.speak} while #{Cat.new.walk}"
