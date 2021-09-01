def janken
  puts "じゃんけん。。。"
  puts "0(グー)、1(チョキ)、2(パー),3(戦わない)"

  janken_menu = ["グー", "チョキ", "パー", "戦わない"]

  player_hand = gets.to_i
  enemy_hand = rand(0..2)
  puts "ほい！！"
  puts "--------------------"
  puts "あなた: #{janken_menu[player_hand]}"
  puts "相手:#{janken_menu[enemy_hand]}"

  if player_hand == 3
    puts "じゃんけんしないの？"
  elsif player_hand == enemy_hand
    puts "--------------------"
    puts "あいこで。。。"
    return true
  elsif player_hand == 0 && enemy_hand == 1 || player_hand == 1 && enemy_hand == 2 || player_hand == 2 && enemy_hand == 0
    puts "あなたの勝ちです！！"
    puts "あっちむいて。。。"

    look = ["上", "下", "右", "左"]

    your_look = gets.to_i
    enemy_look = rand(0..2)
    puts "--------------------"
    puts "あなた: #{look[your_look]}"
    puts "相手: #{look[enemy_look]}"
    puts "ほい！" 
    if your_look == enemy_look
      puts "あなたの勝ちです！"
      return false
    else
      return true 
    end
  else
    puts "あなたの負けです。。。"
    puts "相手が方向を選びます"
    puts "あっちむいて。。。"
    look = ["上", "下", "右", "左"]
    your_look = gets.to_i
    enemy_look = rand(0..2)
    puts "--------------------"
    puts "あなた: #{look[your_look]}"
    puts "相手: #{look[enemy_look]}"
    puts "ほい！"
    if your_look == enemy_look
      puts "あなたの負けです。。。残念。。。"
      return false
    else
      return true
    end
  end
end

next_game = true

while next_game do
  next_game = janken
end
