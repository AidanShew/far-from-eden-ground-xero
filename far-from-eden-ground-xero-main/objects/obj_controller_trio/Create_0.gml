revolver_timer=0;
move_timer=120;
star_timer=20;

revolver_soldiers=[];
star_drones_left=[];
star_drones_right=[]; //Array for throwing drones

soldier_create(4, MOVE.TRIO);
drone_create(3, MOVE.TRIO_RIGHT);
drone_create(3, MOVE.TRIO_LEFT);
x=300;
y=500;

