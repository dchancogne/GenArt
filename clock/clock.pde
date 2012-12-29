
float centerX, centerY;
float angle, angleEnd;
float defaultRadius, radius;
int _color;

void setup() {

	size(500,400);
	frameRate(24);

	smooth();
	background(180);
	stroke(60);
	strokeWeight(1);

	centerX = width/2;
	centerY = height/2;
	defaultRadius = min(width, height)*2/6;
	angle = 0;
	angleEnd = random(90, 160);
	_color = 30;


} // End setup()


void draw() {

	float rad = radians(angle);
	_color += 1;
	radius = random(defaultRadius-50, defaultRadius+50);

	if ( angle < angleEnd ) {
		float x1 = centerX + (radius * cos(rad));
		float y1 = centerY + (radius * sin(rad));

		float opprad = rad + PI;
		float x2 = centerX + (radius * cos(opprad));
		float y2 = centerY + (radius * sin(opprad));

		stroke(_color);
		line(x1, y1, x2, y2);
		angle += 1;
	}
} // End draw()