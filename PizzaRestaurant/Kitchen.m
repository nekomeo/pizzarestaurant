//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    Pizza *newPizza = [[Pizza alloc] initWithPizzaSize:size andToppings:toppings];
    
    if ([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings] == NO)
    {
        return nil;
    }
    else
    {
        if ([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings])
        {
            PizzaSize targetSize = size;
            if ([self.delegate kitchenShouldUpgradeOrder:self])
            {
                targetSize = large;
            }
            newPizza = [[Pizza alloc] initWithPizzaSize:size andToppings:toppings];
            if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)])
            {
                [self.delegate kitchenDidMakePizza:newPizza];
            }
        }
    }
    return newPizza;
}


@end
