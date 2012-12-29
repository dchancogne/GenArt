
int diam = 10;
float centerX, centerY;

void setup() {
	
	size(500, 450);
	frameRate(24);
	smooth();
	background(180);
	centerX = width/2;
	centerY = height/2;
	stroke(0);
	strokeWeight(1);
	noFill();
	fill(255, 10);

} // End setup()

void draw() {

	if ( diam <= 400 ) {
		ellipse(centerX, centerY, diam, diam);
		diam += 10;
	}
	// else {
	// 	saveFrame("circles-####.png");
	// }

} // End draw()