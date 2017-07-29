//
//  MeanManager.m
//  PizzaRestaurant
//
//  Created by Elle Ti on 2017-07-28.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "MeanManager.h"

@implementation MeanManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
    for (NSString *anchovies in toppings)
    {
        if ([anchovies isEqualToString:@"anchovies"])
        {
            // Go to Kitchen class to make pizza
            // Grab kitchen
            NSLog(@"Eww, no pizza for you");
            return NO;
        }
    }
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return NO;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza
{}


@end
