//
//  Cell.m
//  CollectionView
//
//  Created by Max Boytsov on 14/05/14.
//  Copyright (c) 2014 Max. All rights reserved.
//

#import "Cell.h"

@implementation Cell

- (void)setName:(NSString *)name
{
    _name = name;
    self.myLabel.text = name;
}

- (void)setPic:(NSString *)pic
{
    _pic = pic;
    self.image.image = [UIImage imageNamed:pic];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
