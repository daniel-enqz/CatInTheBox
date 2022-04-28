def cat_moving_simulation(correct_box, boxes_array)
  return 1 if correct_box == 1
  return -1 if correct_box == boxes_array.last
  random_movement = rand(0..1)
  return random_movement == 0 ? 1 : -1
end

def searching_minino(boxes_array, correct_box)
  days = 1
  direction = 1
  i = 1

  while boxes_array[i] != correct_box
    if days == boxes_array.length - 2
      i += 1
      direction = -1
    end

    i += direction
    days += 1
    correct_box += cat_moving_simulation(correct_box, boxes_array)
  end
  return [days, boxes_array[i]]
end

boxes_array = (1..5).to_a
result = searching_minino(boxes_array, 5)
puts "GREAT, we needed #{result[0]} days, to find the CAT in BOX #{result[1]}"
