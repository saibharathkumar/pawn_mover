# pawn_mover
It's a console based ruby application.

User can move a chess pawn in a 8X8 board by entering commands in the ruby console.

below, I am pasting the sample output by executing the pawn_mover.rb,

<<<< !!! ------------------------------------------------------------------------------- !!! >>>
(base) BLRMAC62:practice sai$ ruby pawn_mover.rb

please enter a command(valid commands --> PLACE, MOVE, LEFT, RIGHT, REPORT, EXIT(to exit))
PLACE
please enter x position
2
please enter Y position
3
please enter facing(NORTH, EAST, WEST, SOUTH)
EAST
please enter color(BLACK, WHITE)
BLACK
{"place"=>{"x"=>2, "y"=>3, "facing"=>"EAST", "color"=>"BLACK"}}
please enter a command(valid commands --> PLACE, MOVE, LEFT, RIGHT, REPORT, EXIT(to exit))
MOVE
please enter the no.of positions to move the pawn
2
please enter a command(valid commands --> PLACE, MOVE, LEFT, RIGHT, REPORT, EXIT(to exit))
REPORT
4
3
EAST
BLACK
please enter a command(valid commands --> PLACE, MOVE, LEFT, RIGHT, REPORT, EXIT(to exit))
LEFT
please enter a command(valid commands --> PLACE, MOVE, LEFT, RIGHT, REPORT, EXIT(to exit))
RIGHT
please enter a command(valid commands --> PLACE, MOVE, LEFT, RIGHT, REPORT, EXIT(to exit))
MOVE
please enter the no.of positions to move the pawn
4
It's an invalid move!!, please enter a command(valid commands --> PLACE, MOVE, LEFT, RIGHT, REPORT, EXIT(to exit))
MOVE
please enter the no.of positions to move the pawn
1
please enter a command(valid commands --> PLACE, MOVE, LEFT, RIGHT, REPORT, EXIT(to exit))
REPORTT
please enter valid command
please enter a command(valid commands --> PLACE, MOVE, LEFT, RIGHT, REPORT, EXIT(to exit))
REPORT
5
3
EAST
BLACK
please enter a command(valid commands --> PLACE, MOVE, LEFT, RIGHT, REPORT, EXIT(to exit))

<<<< !!! ------------------------------------------------------------------------------- !!! >>>
