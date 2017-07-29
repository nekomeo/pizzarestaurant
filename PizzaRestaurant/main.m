//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "Manager.h"
#import "NiceManager.h"
#import "MeanManager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
//        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        Manager *manager = [[Manager alloc] init];
        NiceManager *jon = [[NiceManager alloc] init];
        MeanManager *john = [[MeanManager alloc] init];
        
        while (TRUE) {
            // Loop forever
            NSLog(@"Please pick your pizza size and toppings:");
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
//            NSLog(@"Input was %@", inputString);
            NSLog(@"Who would you like to make your pizza? 1 for John or 2 for Jon 3 if you don't care:");
            char input[10];
            fgets(input, 10, stdin);
            
            NSString *managerString = [[NSString alloc] initWithUTF8String:input];
            NSInteger managerNumber = [managerString integerValue];
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            //TODO Get the Size
            NSString *sizeString = commandWords.firstObject;
            
            //TODO Get the toppings
            NSArray *pizzaArray = [commandWords subarrayWithRange:NSMakeRange(1, commandWords.count - 1)];
            
//            Convert string to enum
//            PizzaSize size = [Pizza sizeFromString:commandWords[0]];
            
            if (managerNumber == 1)
            {
                restaurantKitchen.delegate = john;
            }
            else if(managerNumber == 2)
            {
                restaurantKitchen.delegate = jon;
            }
            else if (managerNumber == 3)
            {
                restaurantKitchen.delegate = manager;
                NSLog(@"Here's your %@ pizza", inputString);
            }
            else
            {
                restaurantKitchen.delegate = nil;
                NSLog(@"You need to pick a valid manager number. Please try again");
            }
            
            
            // And then send some message to the kitchen...
            PizzaSize someSize = [Pizza sizeFromString:sizeString];
            
            
            // tell kitchen to make pizza
            //TODO Get kitchen
            [restaurantKitchen makePizzaWithSize:someSize toppings:pizzaArray];
            

        }
    }
    return 0;
}

