//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Elle Ti on 2017-07-28.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"

@implementation Manager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return NO;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza
{}

@end
