clc;
clear;
play = input('Wanna Play Number Game? Enter 1 for YES, 0 for NO : ');
if play ~= 1
  disp('You are no fun!')
  return;
end
while play!=0
    num = randi([1 50],1,1);
    guess = input('Guess the number: ');
    if abs(guess - num)<= 10
        disp('WARM!')
    elseif abs(guess - num)>= 10
        disp('COLD')
    elseif guess == num
        fprintf('You got it! The number is %d!',num);
    end    
    count =9;
    while count!=0
        previous = guess;
        count=count-1;
        guess =input('Pick another number: ');
        if guess == num
            fprintf("You've won! The number is %d!", guess);
            fprintf('It took you %d tries, but you got it. Congrats!', 10-count);
            disp('Game Over')
        break;
        end    
        diff_current = abs(guess - num);
        diff_prev = abs(previous - num);
        if diff_current <= diff_prev
            disp('Warmer: You are closer than before')
        elseif diff_prev <= diff_current        
            disp('Colder: You are farther away than before')
        end
    end
    disp('You ran out of Shots!')
    play = input('Wanna Play Another Game? Enter 1 for YES, 0 for NO : ');
end