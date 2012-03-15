/*
 * DGDrawView.j
 * drawView - example of CustomView
 *
 * Created by German Vivero on March 15, 2012.
 * Copyright 2012, Your Company All rights reserved.
 */

@import <AppKit/CPView.j>

@implementation DGDrawView:CPView
{
		
}


- (id)initWithFrame:(CGRect)aFrame
 {
    self = [super initWithFrame:aFrame];
	if (self)
	{
        //put your initialize code		
	}

    return self;
 }


- (void)drawRect:(CGRect)rect {
	
	// Drawing code here.
	width = rect.size.width-50 ;
	height = rect.size.height - 50;
	var green =[CPColor colorWithCalibratedRed:57.0/255.0 green:107.0/255.0 blue:59.0/255.0 alpha:1.0];
		    
	// Create our drawing path
        
    [green setFill];
    
	drawingPath = [CPBezierPath bezierPath];
	
	[drawingPath appendBezierPathWithRoundedRect:rect xRadius:7.00 yRadius:7.00];// draw green square 
	[drawingPath fill];
	[drawingPath stroke];
    
    drawingPath2 = [CPBezierPath bezierPath];
    [drawingPath2 appendBezierPathWithRoundedRect:CGRectMake(10,10,width, height) xRadius:7.00 yRadius:7.00];  // draw gray square
    [[CPColor lightGrayColor] setFill];//set color of line

	[drawingPath2 fill];
	[drawingPath2 stroke];
}

@end