//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Elle Ti on 2017-07-27.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    small,
    medium,
    large
} PizzaSize;

@interface Pizza : NSObject

@property (nonatomic) PizzaSize pizzaSize;
@property (nonatomic, strong) NSArray *toppings;

- (void)listOfToppings:(NSArray *)toppings;
- (NSString *)convertPizzaToString:(PizzaSize)pizzaSize;

@end
