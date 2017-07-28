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

- (instancetype)initWithPizzaSize:(PizzaSize)size andToppings:(NSArray *)toppings;
+(PizzaSize)sizeFromString:(NSString *)userInput;

@end
