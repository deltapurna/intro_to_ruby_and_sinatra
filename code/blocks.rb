#!/home/delta/.rbenv/shims/ruby

def my_block
  puts "Begin"
  yield
  yield
  puts "End"
end

my_block { puts "Inside my block" }
