def main
    player_hand_one = hand_picker
    player_hand_two = hand_picker
    winner_decider(player_hand_one, player_hand_two)
end

def hand_picker
    puts "Please pick between, Rock, Papper, and Scissors."
    picked = gets.chomp.downcase
    if picked == "rock" || picked == "papper" || picked == "scissors"
        return picked
    else 
        puts "Error, pleae try again."
        main
    end
end

def winner_decider(player_hand_one, player_hand_two)
    if player_hand_one == "rock"
        player_one = 1
    elsif player_hand_one == "papper"
        player_one = 2
    elsif player_hand_one == "scissors"
        player_one = 3
    else
        puts "Error 2"
        return false
    end
    
    if player_hand_two == "rock"
        player_two = 1
    elsif player_hand_two == "papper"
        player_two = 2
    elsif player_hand_two == "scissors"
        player_two = 3
    else
        puts "Error 3"
        return false
    end
    
    if player_one == 1 && player_two == 3
        player_one = 4
    elsif player_one == 3 && player_two == 1
        player_two = 4
    end
    
    if player_one > player_two
        puts "Player one wins!"
    elsif player_two > player_one
        puts "Player two wins!"
    elsif player_one == player_two
        puts "It's a tie."
    else
        puts "Error 3"
        return false
    end
end

main