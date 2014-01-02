//
//  Common.m
//  CustomControl
//
//  Created by Snipter on 12/31/13.
//  Copyright (c) 2013 SmartAppStudio. All rights reserved.
//

#import "SAMath.h"

CGFloat toDegrees (CGFloat radians){
    return radians * 180 / M_PI;
}

CGFloat toRadians (CGFloat degrees){
    return degrees * M_PI / 180;
}

CGFloat segmentAngle (CGPoint startPoint, CGPoint endPoint){
    CGPoint v = CGPointMake(endPoint.x-startPoint.x, endPoint.y-startPoint.y);
    float vmag = sqrt(powf(v.x, 2.0) + powf(v.y, 2.0));
    v.x /= vmag;
    v.y /= vmag;
    double radians = atan2(v.y,v.x);
    return radians;
}

CGFloat segmentLength(CGPoint startPoint, CGPoint endPoint){
    return decartToPolar(startPoint, endPoint).radius;
}

CGPoint polarToDecart(CGPoint startPoint, CGFloat radius, CGFloat angle){
    CGFloat x = radius * cos(angle) + startPoint.x;
    CGFloat y = radius * sin(angle) + startPoint.y;
    return CGPointMake(x, y);
}

SAPolarCoordinate decartToPolar(CGPoint center, CGPoint point){
    double x = point.x - center.x;
    double y = point.y - center.y;
    
    SAPolarCoordinate polar;
    polar.radius = sqrt(pow(x, 2.0) + pow(y, 2.0));
    polar.angle = acos(x/(sqrt(pow(x, 2.0) + pow(y, 2.0))));
    if(y < 0) polar.angle = 2 * M_PI - polar.angle;
    return polar;
}
