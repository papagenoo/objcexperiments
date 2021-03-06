//
//  Cell.h
//  CollectionView
//
//  Created by Max Boytsov on 14/05/14.
//  Copyright (c) 2014 Max. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Cell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property (weak, nonatomic) IBOutlet UIImageView *image;

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *pic;

@end
