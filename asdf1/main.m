//
//  main.m
//  asdf1
//
//  Created by Josh Woods on 7/21/14.
//  Copyright (c) 2014 joshwoods. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdlib.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Each person gives and receives a gift at least once
        NSLog(@"\n\nPt 1 Started!\n\n");
        NSArray *array = @[@"Fred", @"Pebbles", @"Bam", @"Wilma", @"Dino"];
        NSInteger arrayCount = [array count];
        
        for(int i = 0; i < arrayCount; i++)
        {
            NSInteger giverIndex = i;
            NSInteger receiverIndex = giverIndex + 1;
            if(receiverIndex != arrayCount)
            {
                NSLog(@"%@ gives to %@", array[giverIndex], array[receiverIndex]);
            } else {
                NSLog(@"%@ gives to %@", array[giverIndex], array[0]);
            }
        }
        NSLog(@"\n\nFINISED\n\n");
        
        //people are picked at random to give a gift and receive a gift, never receiving or giving more than once nor giving to themselves
        
        NSLog(@"\n\nPt 2 Started!\n\n");
        NSMutableArray *excerciseArray1 = [NSMutableArray arrayWithArray:array];
        NSMutableArray *excerciseArray2 = [NSMutableArray arrayWithArray:array];
        
        //prevent any of the indexes from being the same
        while ([excerciseArray1[0] isEqualToString:excerciseArray2[0]] || [excerciseArray1[1] isEqualToString:excerciseArray2[1]] || [excerciseArray1[2] isEqualToString:excerciseArray2[2]] || [excerciseArray1[3] isEqualToString:excerciseArray2[3]] || [excerciseArray1[4] isEqualToString:excerciseArray2[4]]) {
            for (int i = 0; i < arrayCount; i++) {
                NSUInteger a = arc4random() % arrayCount;
                [excerciseArray1 exchangeObjectAtIndex:i withObjectAtIndex:a];
                NSUInteger b = arc4random() % arrayCount;
                [excerciseArray2 exchangeObjectAtIndex:i withObjectAtIndex:b];
            }
        }
        
        for(int i = 0; i < arrayCount; i++)
        {
            NSLog(@"%@ gives to %@", excerciseArray1[i], excerciseArray2[i]);
        }
        
        NSLog(@"\n\nFINISED");
        //        NSLog(@"%@, %@", excerciseArray1, excerciseArray2);
        //        while ([excerciseArray1[0] isEqualToString:excerciseArray2[0]] || [excerciseArray1[1] isEqualToString:excerciseArray2[1]] || [excerciseArray1[2] isEqualToString:excerciseArray2[2]] || [excerciseArray1[3] isEqualToString:excerciseArray2[3]] || [excerciseArray1[4] isEqualToString:excerciseArray2[4]])
        //        {
        //            for (int i = 0; i < arrayCount; i++) {
        //                NSUInteger a = arc4random() % arrayCount;
        //                [excerciseArray2 replaceObjectAtIndex:i withObject:excerciseArray1[a]];
        //            }
        //            for (int i = 0; i < arrayCount; i++) {
        //                NSUInteger a = arc4random() % arrayCount;
        //                [excerciseArray2 replaceObjectAtIndex:i withObject:excerciseArray1[a]];
        //            }
        //        }
        //        NSMutableArray *possibleReceiverArray = [NSMutableArray arrayWithArray:array];
        //        NSMutableArray *alreadyGivenTo = [[NSMutableArray alloc] init];
        //
        //        NSString *giver = nil;
        //        NSString *receiver = nil;
        //        for (int i = 0; i < arrayCount; i++) {
        //            giver = possibleGiverArray[arc4random_uniform([possibleGiverArray count])];
        //            [possibleGiverArray removeObject:giver];
        //            [possibleReceiverArray removeObject:giver];
        //            receiver = possibleReceiverArray[arc4random_uniform([possibleReceiverArray count])];
        //            [possibleReceiverArray removeObject:receiver];
        //            NSLog(@"%@ gives to %@", giver, receiver);
        //            [alreadyGivenTo addObject:receiver];
        //            if(![alreadyGivenTo containsObject:giver]){
        //                [possibleReceiverArray addObject:giver];
        //            }
        //
        //        }
        return 0;
    }
}
