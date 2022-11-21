puts "ジャンケン!!"
def janken
  puts "グー(0) チョキ(1) パー(2)"
  my_hand = gets.chomp.to_i
  aite_hand = rand(3)
  jankens = ["グー" , "チョキ" , "パー"]
  puts "自分の手 #{jankens[my_hand]}, 相手の手 #{jankens[aite_hand]}"
  
  if my_hand == aite_hand
    puts "あいこで、しょ"
    janken
  elsif (my_hand == 0 && aite_hand == 1) || (my_hand == 1 && aite_hand == 2) || (my_hand == 2 && aite_hand == 0)
    puts "あなたの勝ち"
    @janken_result = "win"
    acchimuitehoi
  else
    puts "あなたの負け"
    @janken_result = "lose"
    acchimuitehoi
  end 
end

def acchimuitehoi
  puts "あっちむいて"
  puts "↑(0) , →(1) , ↓(2) , ←(3)"
  my_direction = gets.chomp.to_i
  aite_direction = rand(4)
  directions = ["↑" , "→" , "↓" , "←"]
  puts "自分#{directions[my_direction]} 相手#{directions[aite_direction]}"
  
  if my_direction == aite_direction && @janken_result == "win"
    puts "あなたの勝ち"
    return false
  elsif my_direction == aite_direction && @janken_result =="lose"
    puts "あなたの負け"
    return false
  else
    puts "引き分け"
    janken
  end
  
end

janken
