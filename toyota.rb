# toyota.rb
class Toyota < Car
  def initialize
    @type = 'トヨタ'
    @capacity = 5
    @price = 200
    @speed = @price*0.8
    @height = 100
    @passenger = 1
  end
end
