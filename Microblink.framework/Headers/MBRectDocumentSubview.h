//
//  MBDocumentSubview.h
//  MicroBlinkDev
//
//  Created by Jura on 03/02/2019.
//

#import "MBSubview.h"

@protocol MBRectDocumentSubviewDelegate;

NS_ASSUME_NONNULL_BEGIN

/**
 * Overlay subview presenting the document for scanning
 */
MB_CLASS_AVAILABLE_IOS(8.0) MB_FINAL
@interface MBRectDocumentSubview : MBSubview

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithCoder:(NSCoder *)aDecoder NS_UNAVAILABLE;

- (instancetype)initWithFrame:(CGRect)frame NS_DESIGNATED_INITIALIZER;

@property (nonatomic) CGFloat widthToHightAspectRatio;

@property (nonatomic) NSString *titleText;

@property (nonatomic) UILabel *titleView;

@property (nonatomic) CGSize viewSize;

@property (nonatomic, weak, nullable) id<MBRectDocumentSubviewDelegate> rectSubviewDelegate;

- (void)startScanLineAnimation;

- (void)stopScanLineAnimation;

- (void)startFlipAnimation;

- (void)startErrorModeUI;

- (void)startIdleModeUI;

- (void)startAnimation;

- (void)startTransitionFinishedAnimation;

- (void)resetTitleLabelConstraint;

@end

@protocol MBRectDocumentSubviewDelegate <NSObject>

- (void)rectDocumentSubviewDidFinishFlipAnimation:(nonnull MBRectDocumentSubview *)rectDocumentSubvie;

- (void)rectDocumentSubviewDidFinishAnimation:(nonnull MBRectDocumentSubview *)rectDocumentSubvie;

- (void)rectDocumentSubviewDidFinishTransitionAnimation:(nonnull MBRectDocumentSubview *)rectDocumentSubvie;

@end

NS_ASSUME_NONNULL_END
