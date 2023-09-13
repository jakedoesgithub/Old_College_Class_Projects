# vaccuum_world_Artifical_Int_prog1
This is a program I wrote for my Artificial Intelligence class at LSU for the first assignment.

This is the assignment instructions:


We make the following assumptions:
• We assume a 3 by 3 grid world known to the agent. The environment is fully observable: the
percepts give complete information about the Dirty/Clean status of every square and the agent’s
location.
• The environment is deterministic: A clean square remains clean and a dirty square remains
dirty unless the agent cleans it up.
• The actions available for the agent are: Left, Right, Up, Down, Suck. Each action takes place
in one time "step".
• The actions and percepts are perfectly reliable.
• Each of the actions will incur a penalty of −1 point.
• The agent will get a penalty of -2 points per dirty square per time step,
• The agent’s performance is measured by the sum of negative points received on reaching a
state with all squares in the environment being "Clean". As usual, a rational agent should maximize its performance score


Write (or adapt from open-source implementation) a computer program to implement the A* algorithm for
the vacuum cleaning agent’s problem  for an optimal sequence of actions. Your
agent should utilize the admissible heuristic function h defined in part 3(c). Run the program for the 3 by 3
grid world with top 3 squares dirty, and agent in the center square (second row and second column) as the
initial state. Print out the sequence of actions and the associated sequence of states in one optimal path returned by the program. Also print out the optimal path’s cost.
Part (B)
Run your A* algorithm for the same problem, using the alternative heuristic function h2 defined in your answer to Question 3(c). Again, print out the sequence of actions and the associated sequence of states in one
optimal path returned by the program. Also print out the optimal path’s cost.
Moreover, print out the number of nodes expanded (the final size of the set "explored") by using h2 and by
using h in your program runs.
