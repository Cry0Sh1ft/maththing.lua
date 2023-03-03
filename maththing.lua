-- variables
number = math.random(1, 5)
    fruit = math.random(1, 3)
    if fruit == 1 then
        fruit = "apple"
    elseif fruit == 2 then
        fruit = "orange"
    elseif fruit == 3 then
        fruit = "banana"
    end
points = 0
-- functions

function startGame()
    --body
    print("type y to start")
    answer = io.read()
    if answer == "y" then
        getUserAnswer()
        checkAnswer()
    elseif answer == "n" then
        print("ok we are not playing then")
    end
end

function getUserAnswer()
    -- body
    print("Pick a number that is one through five.")
    userNumber = io.read()
    print("pick a fruit that is either a apple, banana, or orange")
    userFruit = io.read()
    if userNumber == "1" or "one" then
        userNumber = 1
    elseif userNumber == "2" or "two" then
        userNumber = 2
    elseif userNumber == "3" or "three" then
        userNumber = 3
    elseif userNumber == "4" or "four" then
        userNumber = 4
    elseif userNumber == "5" or "five" then
        userNumber = 5
    else 
        print("unreconized number")
    end 
end

function checkAnswer()
    if number == userNumber then
        print("+10 points!")
        points = points + 10
    else
        
    end

    if fruit == userFruit then 
        print("+10 points!")
        points = points + 1
    else

    end
    print("the number was...")
    print(number)
    print("the fruit was...")
    print(fruit)
    if points == 100 then
        print("you win!")
    else
        continue()
    end
    
end


function continue()
    getUserAnswer()
    checkAnswer() 
end
startGame()