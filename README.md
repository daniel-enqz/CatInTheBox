# CatInTheBox
<p align="center">
  <img src="assets/image.png" />
</p>

## Points to consider 🐱
> ✅ The cat will move every day we open a box.<br>
> ✅ The cat will always move to 1 adjacent box. <br>
> ✅ There are some patters we may consider: <br>
> 1. **ENDPOINT**: If the cat is at the first or last box, the only option for the cat will be moving either left if it is at the last box, or right if it is at the beginning. <br>
> **_Example Case:_** Let´s say the cat is hidden at box 5, and we are checking box 4, after that the cat will only have the option to move back to box 4, so if we check box 4 again, we will catch the cat. The interesting thing is that this will apply for any boxes length. <br>
> We can simulate this, with the next algorithm.
```ruby
def cat_moving_simulation(correct_box, boxes_array)
  return 1 if correct_box == 1
  return -1 if correct_box == boxes_array.last
  random_movement = rand(0..1)
  return random_movement == 0 ? 1 : -1
end
```
> 2. **ODD TO EVEN**: As the array is sorted, we can consider that the cat will always move from an _even_ number to an _odd_ one, or vice versa. <br>
> **_Example Case:_** If the cat is at box 3, it will always move to an even number, either 2 or 4. 

## Proposal :octocat:
> Considering the previous points, we can create an algorithm that takes care of Endpoints of an array, and always alternates checking from an odd number to an even number(Following **_ODD TO EVEN_** case), the brute force solution of doing this will be to iterate over each number without touching the endpoints (because the cat will always come back from an endpoint). We will suddenly find the cat if we iterate from index 1 all through index n-1. <br>
❗**We may find the cat in the first iteration, if not, we will need to check thorugh the array again, choosing the penultimate index twice (Following the _ENDPOINT CASE_) and iterating backwards.** 

# Time complexity: O(n^2), Lower Bound being Ω(1), Average Case O(n), 

## 🧦 **_Insights:_** 
1. Is it really fast?
> We can tell that the algorithm is fast in most cases. We will need 2 iterations over the array to find our index in the worst case, but there's the probability that we find it in the first iteration, being the average case O(n), here is a quick image of different time complexity algorithms and we can indeed see that O(n^2) is quite faster than others.
<br>

✅ **"When writing algorithms, time complexity and memory (space) are in balance"** <br>
✅ **"We use asymptotic notation to exclude less important cases, and ust focuses on running time"**

<p align="center">
  <img src="assets/complexity.png" />
</p>

# ✅ **"We can tell that one of the best apporoaches will be to follow the _ODD TO EVEN_ case, that´s in my opinion the most valuable insight of where the cat🐱 might be. and just take advantage of the endpoints, because the cat will ALWAYS move closer to us from an endpoint 💌"** <br>

# Try this code in your console!
```
git clone git@github.com:daniel-enqz/CatInTheBox.git
cd CatInTheBox
ruby main.rb
```
> ✅ **"Feel free to change this lines, and chenge the length of the array and the initial position of the cat 🐱"**
```ruby
boxes_array = (1..5).to_a
correct_box = 5
result = searching_minino(boxes_array, correct_box)
```
