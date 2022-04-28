def cat_moving_simulation(correct_box, boxes_array)
  return 1 if correct_box == 1
  return -1 if correct_box == boxes_array.last
  random_movement = rand(0..1)
  return random_movement == 0 ? 1 : -1
end

def searching_minino(boxes_array, correct_box)

  # INITIAL PARAMETERS
  middle_array_position = (boxes_array.length / 2.0).round - 1 if boxes_array.length.odd?
  middle_array_position = (boxes_array.length / 2) - 1 if boxes_array.length.even?
  guess_index = middle_array_position
  days = 1
  target_index = 0
  target_tries_per_box = 1

  while guess_index != target_index
    tries_per_box = 0
    while tries_per_box != target_tries_per_box
      return [boxes_array[guess_index], days] if boxes_array[guess_index] == correct_box
      tries_per_box += 1
      days += 1
      correct_box += cat_moving_simulation(correct_box, boxes_array)
    end

    target_tries_per_box += 1

    target_index == 0 ? guess_index -= 1 : guess_index += 1

    if guess_index == 0
      target_index = boxes_array.length - 1
      guess_index = middle_array_position
      target_tries_per_box = 1
    end

    if guess_index == boxes_array.length - 1
      target_index = 0
      guess_index = middle_array_position
      target_tries_per_box = 1
    end

  end
end

boxes_array = (1..5).to_a
result = searching_minino(boxes_array, 5)
puts "GREAT, we needed #{result[1]} days, to find the CAT in BOX #{result[0]}"
