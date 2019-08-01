class Car
  attr_accessor :type, :capacity, :price, :speed, :height, :passenger, :distance, :brake_speed

  def equipment
    %w[アクセル ブレーキ]
  end

  def output_information(car)
    puts "車種: #{car.type}"
    puts "定員: #{car.capacity}"
    puts "価格: #{car.price}万円"
    puts "時速: #{car.speed}km"
    puts "車高: #{car.height}cm"
    puts "装備: #{car.equipment.join(', ')}"
  end

  def time #レースタイムを算出。
    @distance = 10000 #走行距離
    @brake_speed = @speed/2 #減速時の速度
    random = Random.new
    @brake_time = random.rand(1..5) #今回はブレーキを踏む回数を1〜5回でランダム設定
    @distance / (@brake_speed*@brake_time) + (10000-@brake_speed*@brake_time) / @speed #タイム算出の計算式・・・ 減速時に進んだ時間 + 通常時に進んだ時間の和
    # 距離/ (ブレーキ時速度*ブレーキ回数) + (距離-ブレーキ時速度*ブレーキ回数) / 通常時速度 = タイム
  end
end
