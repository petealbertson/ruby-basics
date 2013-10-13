# CHALLENGES:
#
# Can you simulate a hand of blackjack?
#
# 1. Randomly choose two cards from a standard deck of 52 cards.
# HINT: Don't worry about the suits.  Just the card value/face matters.
# HINT: Arrays have a #sample method that can (optionally) accept a parameter.
#
# Example Output #1:
# 5 8
#
# Example Output #2:
# Q 6
#
# Example Output #3:
# 2 A

card_types = Hash "A" => 11, "J" => 10, "Q" => 10, "K" => 10, "2"  => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "10" => 10

card1 = card_types.keys.sample
card2 = card_types.keys.sample
card3 = card_types.keys.sample
result = card_types.values_at(card1) + card_types.values_at(card2)
new_result = card_types.values_at(card1) + card_types.values_at(card2) + card_types.values_at(card3)
total = result[0] + result[1]
new_total = new_result[0] + new_result[1] + new_result[2]

puts card1, card2
result.to_a
puts "You have #{total}."

if total < 17 then
  puts card3, "You now have #{new_total}."
end

if total<16 and new_total>21 then
  puts "BUSTED!"
end

if new_total > 21 and (card1 or card2 or card3) == "A"
  then {"A" => 1}
end


# 2. Enhance #1 by showing the total score.
# HINT: Consider all aces to have a value of 11.
# Example Output #1:
#
# 5 8
# You have 13.
#
# Example Output #2:
# Q 6
# You have 16.
#
# Example Output #3:
# 2 A
# You have 13.












# 3. Enhance #2 by adding a card if the score is less than 17.
# Example Output #1:
# 2 A 6
# You have 19.

# Example Output #1:
# Q A
# You have 20.






# 4. Enhance #3 by displaying a message if the score is over 21.
# Example Output #1:
# 7 A 6
# You have 24.
# You're busted!







# 5. Enhance #4 by considering an Ace to be 1 if it would prevent
# the total score from going over 21.
# Example Output #1:
# 4 A 9
# You have 14.
