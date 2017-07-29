//
//  NiceManager.m
//  PizzaRestaurant
//
//  Created by Elle Ti on 2017-07-28.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "NiceManager.h"

@implementation NiceManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza
{
    NSLog(@"Thanks for waiting, we've upgraded your pizza for free! :)");
}

@end
