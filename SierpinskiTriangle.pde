int c1 = (int)(Math.random()*256);
int c2 = (int)(Math.random()*256);
int c3 = (int)(Math.random()*256);
boolean s1 = true;
boolean s2 = true;
boolean s3 = true;

int lim = 500;

public void setup()
{
	size(500,500);
}
public void draw()
{
	if(c1>254)
	{
		s1 = false;
	}
	else if(c1<1)
	{
		s1 = true;
	}
	else 
	{
		s1 = s1;
	}
	if(s1 == false)
	{
		c1 -= (int)(Math.random()*5);
	}
	else
	{
		c1 += (int)(Math.random()*5);
	}

	if(c2>254)
	{
		s2 = false;
	}
	else if(c2<1)
	{
		s2 = true;
	}
	else 
	{
		s2 = s2;
	}
	if(s2 == false)
	{
		c2 -= (int)(Math.random()*5);
	}
	else
	{
		c2 += (int)(Math.random()*5);
	}

	if(c3>254)
	{
		s3 = false;
	}
	else if(c3<1)
	{
		s3 = true;
	}
	else 
	{
		s3 = s3;
	}
	if(s3 == false)
	{
		c3 -= (int)(Math.random()*5);
	}
	else
	{
		c3 += (int)(Math.random()*5);
	}

	background(c1,c2,c3);
	
	sierpinski(0,500,500);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len<2)
	{
		triangle(x,y,x+len,y,x+(len/2),y-len);
	}
	else  
	{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);	
		sierpinski(x+len/4,y-len/2,len/2);
	}
}