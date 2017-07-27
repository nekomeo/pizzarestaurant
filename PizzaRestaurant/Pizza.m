//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Elle Ti on 2017-07-27.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithPizzaSize:(PizzaSize)size andToppings:(NSMutableArray *)toppings
{
    if (self = [super init])
    {
        _pizzaSize = size;
        _toppings = toppings;
    }
    return self;
}

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
            break;
    }

    return size;
}


//Argument - NSString
//Return - Enum/PizzaSize
+(PizzaSize)sizeFromString:(NSString *)userInput
{
    if ([userInput isEqualToString:@"large"])
    {
        return large;
    }
    else if ([userInput isEqualToString:@"medium"])
    {
        return medium;
    }
    else
    {
        return small;
    }
}
@end
