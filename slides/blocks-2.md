##  Blocks (2)

```ruby
def our_programmers
  yield "Hiraq", "Backend"
  yield "Fikri", "Frontend"
end

our_programmers do |name, role|
  puts "#{name} is a #{role} developer"
end
```
