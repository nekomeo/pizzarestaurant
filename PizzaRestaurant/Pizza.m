//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Elle Ti on 2017-07-27.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (NSString *)convertPizzaToString:(PizzaSize)pizzaSize
{
    NSString *size = nil;
    
    switch (self.pizzaSize)
    {
        case small:
            size = @"small";
            break;
        case medium:
            size = @"medium";
            break;
        case large:
            size = @"large";
            break;
        default:
            size = @"small";
            break;
    }

    return size;
}

- (void)listOfToppings:(NSArray *)toppings
{
    toppings = @[@"pineapple", @"pepperoni", @"cheese", @"chicken", @"peppers", @"ham"];
}

@end
