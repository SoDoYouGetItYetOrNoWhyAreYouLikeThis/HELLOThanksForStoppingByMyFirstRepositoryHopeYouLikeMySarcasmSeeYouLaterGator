#!/bin/bash

# SODOYOUGETITYETORNOWHYAREYOULIKETHIS - The Rubik's Cube of Never-Ending Frustration
echo "Welcome to the Rubik's Cube of Never-Ending Frustration!"

# Function to simulate a random scramble
scramble() {
    echo "Scrambling the cube... You'll never solve it!"
    sleep 2
    echo "You can rotate it 90 degrees left or right... but it'll get worse."
}

# Function to simulate frustration
random_instruction() {
    instructions=("Rotate 90 degrees left" "Move to the right and hope it works" "Hold breath, make a wish" "Turn it 180 degrees upside down" "Pray to the Rubik’s gods")
    random_instruction=${instructions[$RANDOM % ${#instructions[@]}]}
    echo "Random Instruction: $random_instruction"
}

# Function to simulate sarcastic feedback
sarcastic_feedback() {
    feedbacks=("You're doing great... just 99 moves away from completing it." "Oh, you're so close, just one more random twist away!" "Is this the move that solves it? Ha! No, of course not.")
    random_feedback=${feedbacks[$RANDOM % ${#feedbacks[@]}]}
    echo "$random_feedback"
}

# Function to handle 5-minute countdown
five_minute_timer() {
    echo "Hang tight... You’re so close... or are you?"
    for i in {1..5}; do
        echo "Just $((5 - i)) minutes left..."
        sleep 60
    done
}

# Function to simulate solving after 5 minutes
solve_puzzle() {
    echo "Wait for it... Wait for it... 💥"
    sleep 2
    echo "And boom! The puzzle is solved!"
    echo "Solution: There was no solution... but you made it!"
}

# Function to simulate all 100 levels
play_game() {
    for level in {1..100}; do
        echo "-------------------------------------"
        echo "Level $level: Frustration Level 1000000"
        scramble
        random_instruction
        sarcastic_feedback

        # Introduce a timed frustration period
        five_minute_timer

        # After 5 minutes, solve the puzzle with snarky commentary
        if [ $level -eq 100 ]; then
            solve_puzzle
        fi

        # Sarcastic completion message
        echo "Level $level completed! You didn’t do anything, but here’s a sticker for participation."
        sleep 1
    done

    # End of the game
    echo "Well done! You've completed the Rubik’s Cube of Never-Ending Frustration."
    echo "But did you really solve it? Probably not."
    echo "Solution: The only solution is that there is no solution."
}

# Start the game
play_game
