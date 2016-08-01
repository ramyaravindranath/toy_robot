# Toy_robot

<h1> How to run: </h1>

- git clone https://github.com/ramyaravindranath/toy_robot.git <br/>
-   cd toy_robot <br/>
-   bundle install <br/>
-   ruby main.rb <br/>


<h1> To run tests </h1>

  - bundle exec rake test


<h1> Description </h1>
- The application is a simulation of a toy robot moving on a square tabletop, of dimensions 5 units x 5 units.<br/>
-   There are no other obstructions on the table surface.<br/>
-   The robot is free to roam around the surface of the table, but must be prevented from falling to destruction.<br/>
-   Any movement that would result in the robot falling from the table must be prevented,however further valid movement commands must still be allowed.


<h2>Valid Input data </h2>
- PLACE X,Y,F <br/>
- MOVE <br/>
- LEFT <br/>
- RIGHT<br/>
- REPORT<br/>

- PLACE will put the toy robot on the table in position X,Y and facing NORTH, SOUTH, EAST or WEST.<br/>
-   The origin (0,0) can be considered to be the SOUTH WEST most corner.<br/>
-   The first valid command to the robot is a PLACE command, after that, any sequence of commands may be issued, in any     order, including another PLACE command. The application should discard all commands in the sequence until a valid PLACE command has been executed.<br/>
-   MOVE will move the toy robot one unit forward in the direction it is currently facing.<br/>
-   LEFT and RIGHT will rotate the robot 90 degrees in the specified direction without changing the position of the robot.
-   REPORT will announce the X,Y and F of the robot. This can be in any form, but standard output is sufficient.
-   A robot that is not on the table can choose the ignore the MOVE, LEFT, RIGHT
-   and REPORT commands.


<h1>Constraints:</h1>

- The toy robot must not fall off the table during movement. This also includes the initial placement of the toy robot<br/>
- Any move that would cause the robot to fall must be ignored.




<h2> Valid output </h2>
- X,Y,F

