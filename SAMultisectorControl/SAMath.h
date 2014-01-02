//
//  Common.h
//  CustomControl
//
//  Created by Snipter on 12/31/13.
//  Copyright (c) 2013 SmartAppStudio. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef struct{
    double radius;
    double angle;
} SAPolarCoordinate;

CGFloat toDegrees (CGFloat radians);
CGFloat toRadians (CGFloat degrees);

CGFloat segmentAngle (CGPoint startPoint, CGPoint endPoint);
CGFloat segmentLength(CGPoint startPoint, CGPoint endPoint);

CGPoint polarToDecart(CGPoint startPoint, CGFloat radius, CGFloat angle);
SAPolarCoordinate decartToPolar(CGPoint center, CGPoint point);
