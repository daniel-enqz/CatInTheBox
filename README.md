# CatInTheBox
<p align="center">
  <img src="assets/image.png" />
</p>

## Points to consider 🐱
> ✅ The cat will move every day we open a box.<br>
> ✅ The cat will always move to 1 adjacent box. <br>
> ✅ There are some patters we may consider: <br>
> 1. If the cat is at the first or last box, the only option for the cat will be moving either left if it is at the last box, or right if it is at the beginning. <br>
> **_Example Endpoint Case:_** Let´s say the cat is hidden at box 5, and we are checking box 4, after that the cat will only have the option to move back to box 4, so if we check box 4 again, we will catch the cat. The interesting thing is that this will apply for any boxes length.
> We can simulate this, with the next algorithm.
```ruby
def cat_moving_simulation(correct_box, boxes_array)
  return 1 if correct_box == 1
  return -1 if correct_box == boxes_array.last
  random_movement = rand(0..1)
  return random_movement == 0 ? 1 : -1
end
```
> 2. As the array is sorted, we can consider that the cat will always move from an _even_ number to an _odd_ one, or vice versa. <br>
> **_Example Case:_** If the cat is at box 3, it will always move to an even number, either 2 or 4. 

## Proposal :octocat:
> Create an algorithm that iterates over each element except from the first and the last element, 

# Time complexity: O(n^2), Lower Bound being Ω(1)

## 🧦 **_Insights:_** 
1. Is it really fast?
> We can tell that the algorithm is fast, because as we are genrating movements on the cat each day we check, we are somehow increasing the probability that the cat passes through a box we are checking, here is a quick image of different time complexity algorithms and we can indeed see that O(n) is quite faster than others.
<br>

✅ **"When writing algorithms, time complexity and memory (space) are in balance"** <br>
✅ **"We use asymptotic notation to exclude less important cases, and ust focuses on running time"**

<p align="center">
  <img src="assets/complexity.png" />
</p>

# ✅ **"We can tel that the maximum amount of days needed for 5 boxes will be 14"** <br>

## 🧦 **_Code_** 
```ruby
def cat_moving_simulation(correct_box, boxes_array)
  return 1 if correct_box == 1
  return -1 if correct_box == boxes_array.last
  random_movement = rand(0..1)
  return random_movement == 0 ? 1 : -1
end
```
> This is a simulator we used to test our code, so that evrey time we check a box, this function will be called and the cat will move, a good thing to specify is that we will always move the cat 1 box to the right if is at box 1, because the cat can't go to any other place. A similar situation happens with the last box, that's why we use this 2 lines.
```ruby
return 1 if correct_box == 1
return -1 if correct_box == boxes_array.last
```
<hr>

```ruby
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
```
> This is our main function, and there are a few things to highlight, the function receives our array, and the initial position of the cat which will suddenly be changed. We also specify a days counter to check how many days we spent to get the final solution. The function will check over each index/box in our array, until it finds that the box checked macthes with the correct position of the cat. <br>
> ✅ **"Each time we change from box, we are iterating over that box -1 times than the previous one"**

# Try this code in your console!
```
git clone git@github.com:daniel-enqz/CatInTheBox.git
cd CatInTheBox
ruby main.rb
```
> ✅ **"Feel free to change this lines, and chenge the length of the array and the initial position of the cat 🐱"**
```ruby
boxes_array = (1..5).to_a
result = searching_minino(boxes_array, 4)
```
