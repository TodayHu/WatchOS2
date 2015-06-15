//
//  ImageSequenceInterfaceController.m
//  CoreDataSample
//
//  Created by Sudarshan Shetty on 6/13/15.
//  Copyright © 2015 Sudarshan Shetty. All rights reserved.
//

#import "ImageSequenceInterfaceController.h"

@interface ImageSequenceInterfaceController ()

@end

@implementation ImageSequenceInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    [self ImagePicker];
    // Configure interface objects here.
}


-(void)ImagePicker
{
    
    WKImage *theimage=[WKImage imageWithImageName:@"homebg_00074@2x.png"];
    
    WKPickerItem *item1 = [[WKPickerItem alloc] init];
    item1.contentImage=theimage;
    
    WKPickerItem *item2 = [[WKPickerItem alloc] init];
    item2.contentImage=[WKImage imageWithImageName:@"homebg_00075.png"];
    
    WKPickerItem *item3 = [[WKPickerItem alloc] init];
    item3.contentImage=[WKImage imageWithImageName:@"homebg_00076.png"];
    
    
    WKPickerItem *item4 = [[WKPickerItem alloc] init];
    item4.contentImage=[WKImage imageWithImageName:@"homebg_00077.png"];
    
    
    WKPickerItem *item5 = [[WKPickerItem alloc] init];
    item5.contentImage=[WKImage imageWithImageName:@"homebg_00078.png"];
    
    WKPickerItem *item6 = [[WKPickerItem alloc] init];
    item6.contentImage=[WKImage imageWithImageName:@"homebg_00079.png"];
    
    NSMutableArray *theArray =[[NSMutableArray alloc]init];
    [theArray addObject:item1];
    [theArray addObject:item2];
    [theArray addObject:item3];
    [theArray addObject:item4];
    [theArray addObject:item5];
    [theArray addObject:item6];
    
    
    [self.pickerView setItems:theArray];
    
}



- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



