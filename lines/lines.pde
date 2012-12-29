
size(500, 300);

smooth();
background(180);
strokeWeight(1);

float xstep = 10;
float ystep = 10;

float lastx, lasty, y;

for ( int l = 0; l < 101; l++) {

	lastx = 20;
	lasty = height/2;
	y = height/2;

	int c = floor(random(20, 200));
	stroke(c, 200);

	for (int x = 20; x<=480; x+=xstep){
		ystep = random(20)-10;
		y += ystep;
		line(x, y, lastx, lasty);
		lastx = x;
		lasty = y;
	}

}
// saveFrame("lines-####.png");