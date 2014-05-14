//
//  ViewController.m
//  CollectionView
//
//  Created by Max Boytsov on 14/05/14.
//  Copyright (c) 2014 Max. All rights reserved.
//

#import "ViewController.h"
#import "Cell.h"
#import "HeaderClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    HeaderClass *header = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"myHeader" forIndexPath:indexPath];
    header.myHeaderLabel.text = [NSString stringWithFormat:@"Section %d", indexPath.section + 1];
    return header;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 3;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.dataArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Row: %d, Section: %d", indexPath.row, indexPath.section);
    Cell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];
    cell.name = self.dataArray[indexPath.row];
    cell.pic = @"Xcode_48px.png";
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.dataArray = @[@"Jan", @"Feb", @"Mar", @"Apr", @"May", @"Jun", @"Jul", @"Aug", @"Sep", @"Oct", @"Nov", @"Dec"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
