def cat_moving_simulation(correct_box, boxes_array)
  return 1 if correct_box == 1
  return -1 if correct_box == boxes_array.last
  random_movement = rand(0..1)
  return random_movement == 0 ? 1 : -1
end

def searching_minino(boxes_array, correct_box)
  days = 1
  boxes_array.each_with_index do |box, index|
    tries_per_box = boxes_array.length - index
    while tries_per_box != 0
      return [days, box] if box == correct_box
      tries_per_box -= 1
      days += 1
      correct_box += cat_moving_simulation(correct_box, boxes_array)
    end
  end
end

boxes_array = (1..5).to_a
result = searching_minino(boxes_array, 4)
puts "GREAT, we needed #{result[0]} days, to find the CAT in BOX #{result[1]}"
