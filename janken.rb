require "csv"

def janken
    puts "じゃんけん・・・"
    puts "0（グー）:１（チョキ）：２（パー）:３（戦わない）"

    player_hand = gets.chomp.to_i
    cpu_hand = rand(3)

    jankens = ["グー","チョキ","パー","戦わない"]
    
    puts "ほい！"
    puts "---------------"
    puts "あなた：#{jankens[player_hand]}"
    puts "相手：#{jankens[cpu_hand]}"
    puts "---------------"
    
    if player_hand == cpu_hand
        puts "あいこ！"
        puts "---------------"
        return true
    elsif player_hand == 3 || cpu_hand == 3
        puts "戦わないが選択されました。終了します"
        exit
    elsif (player_hand == 0 && cpu_hand == 1) || (player_hand == 1 && cpu_hand ==2) || (player_hand == 2 && cpu_hand == 0)
        @janken_result = "win"
    else 
        @janken_result = "lose"
    end
    
    puts "あっちむいて・・・"
    puts "0（上）：1（左）：2（下）：3（右）"
    
    player_direction = gets.chomp.to_i
    cpu_direction = rand(4)
    
    directions = ["上","左","下","右"]
    
    puts "---------------"
    puts "ほい！"
    puts "あなた：#{directions[player_direction]}"
    puts "相手：#{directions[cpu_direction]}"
    puts "---------------"
    
    if player_direction == cpu_direction && @janken_result == "win"
        puts "君の勝ち！"
        return false
    elsif player_direction == cpu_direction && @janken_result == "lose"
        puts "君の負け！"
        return false
    else
        return true
    end
end


next_game = true

loop do
    next_game = janken
    if next_game == false
      break
    end
end




