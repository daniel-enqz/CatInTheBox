# CatInTheBox
<p align="center">
  <img src="assets/image.png" />
</p>

## Points to consider 🐱
> ✅ The cat will move every day we open a box, if we start from box 1, and check that box n times, the cat will move n times.<br>
> ✅ The cat will always move to 1 adjacent box. <br>


## Proposal :octocat:
> Create an algorithm that iterates n times over the first index. (n being the length of our array.) <br>
> Example: If we have an array of 5 elements/boxes we will check over the first box for 5 days, generating 5 movements on the cat.
> Then, we will continue iterating over the next index but only n - 1 times, the next index we will iterate n - 2, and so on.

# Time complexity:
> ## `n(n+1)/2` = O(n)

## 🧦 **_Insights:_** 
1. Is it really fast?
> We can tell that the algorithm is fast, because as we are genrating movements on the cat each day we check, we are somehow increasing the probability that the cat passes through a box we are checking, here is a quick image of different time complexity algorithms and we can indeed see that O(n) is quite faster than others.
✅ **"When writing algorithms, time complexity and memory (space) are in balance"** <br>
✅ **"We use asymptotic notation to exclude less important cases, and ust focuses on running time"**

<p align="center">
  <img src="assets/complexity.png" />
</p>
