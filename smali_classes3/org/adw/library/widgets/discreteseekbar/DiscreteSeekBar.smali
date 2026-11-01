.class public Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;,
        Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$new;,
        Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$try;,
        Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_FORMATTER:Ljava/lang/String; = "%d"

.field private static final DEFAULT_THUMB_COLOR:I = -0xff6978

.field private static final FOCUSED_STATE:I = 0x101009c

.field private static final INDICATOR_DELAY_FOR_TAPS:I = 0x96

.field private static final PRESSED_STATE:I = 0x10100a7

.field private static final PROGRESS_ANIMATION_DURATION:I = 0xfa

.field private static final SEPARATION_DP:I = 0x5

.field private static final isLollipopOrGreater:Z


# instance fields
.field private mAddedTouchBounds:I

.field private mAllowTrackClick:Z

.field private mAnimationPosition:F

.field private mAnimationTarget:I

.field private mDownX:F

.field private mDragOffset:I

.field private mFloaterListener:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field public mFormatter:Ljava/util/Formatter;

.field private mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/do;

.field private mIndicatorFormatter:Ljava/lang/String;

.field private mIndicatorPopupEnabled:Z

.field private mInvalidateRect:Landroid/graphics/Rect;

.field private mIsDragging:Z

.field private mKeyProgressIncrement:I

.field private mMax:I

.field private mMin:I

.field private mMirrorForRtl:Z

.field private mNumericTransformer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$try;

.field private mPositionAnimator:Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;

.field private mPublicChangeListener:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;

.field private mRipple:Landroid/graphics/drawable/Drawable;

.field private mScrubber:Landroid/support/v4/f82;

.field private mScrubberHeight:I

.field private mShowIndicatorRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

.field private mTouchSlop:F

.field private mTrack:Landroid/support/v4/f82;

.field private mTrackHeight:I

.field private mValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isLollipopOrGreater:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lorg/adw/library/widgets/discreteseekbar/R$attr;->discreteSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v0, p0

    .line 3
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x1

    .line 4
    iput v1, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mKeyProgressIncrement:I

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMirrorForRtl:Z

    .line 6
    iput-boolean v1, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAllowTrackClick:Z

    .line 7
    iput-boolean v1, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicatorPopupEnabled:Z

    .line 8
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    .line 9
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 10
    new-instance v3, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$if;

    invoke-direct {v3, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$if;-><init>(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V

    iput-object v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mShowIndicatorRunnable:Ljava/lang/Runnable;

    .line 11
    new-instance v3, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$for;

    invoke-direct {v3, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$for;-><init>(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V

    iput-object v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mFloaterListener:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 14
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTouchSlop:F

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 16
    sget-object v4, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar:[I

    sget v5, Lorg/adw/library/widgets/discreteseekbar/R$style;->Widget_DiscreteSeekBar:I

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-virtual {v7, v8, v4, v9, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 17
    sget v5, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_mirrorForRtl:I

    iget-boolean v6, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMirrorForRtl:Z

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMirrorForRtl:Z

    .line 18
    sget v5, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_allowTrackClickToDrag:I

    iget-boolean v6, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAllowTrackClick:Z

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAllowTrackClick:Z

    .line 19
    sget v5, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_indicatorPopupEnabled:I

    iget-boolean v6, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicatorPopupEnabled:Z

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicatorPopupEnabled:Z

    .line 20
    sget v5, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_trackHeight:I

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v6, v6, v3

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTrackHeight:I

    .line 21
    sget v5, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_scrubberHeight:I

    const/high16 v6, 0x40800000    # 4.0f

    mul-float v6, v6, v3

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubberHeight:I

    .line 22
    sget v5, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_thumbSize:I

    const/high16 v6, 0x41400000    # 12.0f

    mul-float v6, v6, v3

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 23
    sget v5, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_indicatorSeparation:I

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float v6, v6, v3

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/high16 v6, 0x42000000    # 32.0f

    mul-float v3, v3, v6

    float-to-int v3, v3

    sub-int/2addr v3, v11

    .line 24
    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    .line 25
    sget v3, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_max:I

    .line 26
    sget v6, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_min:I

    .line 27
    sget v10, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_value:I

    .line 28
    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 29
    invoke-virtual {v4, v3, v12}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v13

    const/4 v14, 0x5

    const/16 v15, 0x64

    if-eqz v13, :cond_1

    .line 30
    iget v13, v12, Landroid/util/TypedValue;->type:I

    if-ne v13, v14, :cond_0

    .line 31
    invoke-virtual {v4, v3, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v4, v3, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v15

    .line 33
    :cond_1
    :goto_0
    invoke-virtual {v4, v6, v12}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 34
    iget v3, v12, Landroid/util/TypedValue;->type:I

    if-ne v3, v14, :cond_2

    .line 35
    invoke-virtual {v4, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {v4, v6, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 37
    :goto_1
    invoke-virtual {v4, v10, v12}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 38
    iget v6, v12, Landroid/util/TypedValue;->type:I

    if-ne v6, v14, :cond_4

    .line 39
    invoke-virtual {v4, v10, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    goto :goto_2

    .line 40
    :cond_4
    invoke-virtual {v4, v10, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    .line 41
    :goto_2
    iput v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    add-int/lit8 v10, v3, 0x1

    .line 42
    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    .line 43
    invoke-static {v15, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    .line 44
    invoke-direct/range {p0 .. p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateKeyboardRange()V

    .line 45
    sget v3, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_indicatorFormatter:I

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicatorFormatter:Ljava/lang/String;

    .line 46
    sget v3, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_trackColor:I

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 47
    sget v6, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_progressColor:I

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 48
    sget v10, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_rippleColor:I

    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v12

    if-nez v12, :cond_6

    if-nez v10, :cond_7

    .line 50
    :cond_6
    new-instance v10, Landroid/content/res/ColorStateList;

    new-array v13, v1, [[I

    new-array v14, v2, [I

    aput-object v14, v13, v2

    new-array v14, v1, [I

    const v15, -0xbbbbbc

    aput v15, v14, v2

    invoke-direct {v10, v13, v14}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    :cond_7
    if-nez v12, :cond_8

    if-nez v3, :cond_9

    .line 51
    :cond_8
    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v13, v1, [[I

    new-array v14, v2, [I

    aput-object v14, v13, v2

    new-array v14, v1, [I

    const v15, -0x777778

    aput v15, v14, v2

    invoke-direct {v3, v13, v14}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    :cond_9
    if-nez v12, :cond_a

    if-nez v6, :cond_b

    .line 52
    :cond_a
    new-instance v6, Landroid/content/res/ColorStateList;

    new-array v13, v1, [[I

    new-array v14, v2, [I

    aput-object v14, v13, v2

    new-array v1, v1, [I

    const v14, -0xff6978

    aput v14, v1, v2

    invoke-direct {v6, v13, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 53
    :cond_b
    invoke-static {v10}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/if;->do(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    .line 54
    sget-boolean v10, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isLollipopOrGreater:Z

    if-eqz v10, :cond_c

    .line 55
    invoke-static {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/if;->new(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 56
    :cond_c
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 57
    :goto_3
    new-instance v1, Landroid/support/v4/f82;

    invoke-direct {v1, v3}, Landroid/support/v4/f82;-><init>(Landroid/content/res/ColorStateList;)V

    .line 58
    iput-object v1, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTrack:Landroid/support/v4/f82;

    .line 59
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 60
    new-instance v1, Landroid/support/v4/f82;

    invoke-direct {v1, v6}, Landroid/support/v4/f82;-><init>(Landroid/content/res/ColorStateList;)V

    .line 61
    iput-object v1, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubber:Landroid/support/v4/f82;

    .line 62
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 63
    new-instance v1, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    invoke-direct {v1, v6, v11}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;-><init>(Landroid/content/res/ColorStateList;I)V

    iput-object v1, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    .line 64
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 65
    iget-object v1, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    invoke-virtual {v1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->getIntrinsicWidth()I

    move-result v3

    iget-object v6, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    invoke-virtual {v6}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v1, v2, v2, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-nez v12, :cond_d

    .line 66
    new-instance v1, Lorg/adw/library/widgets/discreteseekbar/internal/do;

    iget v2, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    invoke-direct {v0, v2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->convertValueToMessage(I)Ljava/lang/String;

    move-result-object v10

    iget v2, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    add-int/2addr v2, v11

    add-int v12, v2, v5

    move-object v6, v1

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v6 .. v12}, Lorg/adw/library/widgets/discreteseekbar/internal/do;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;II)V

    iput-object v1, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/do;

    .line 67
    iget-object v2, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mFloaterListener:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    invoke-virtual {v1, v2}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->catch(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;)V

    .line 68
    :cond_d
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    new-instance v1, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$new;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$new;-><init>(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$do;)V

    invoke-virtual {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setNumericTransformer(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$try;)V

    return-void
.end method

.method public static synthetic access$100(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->showFloater()V

    return-void
.end method

.method public static synthetic access$200(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    return-object p0
.end method

.method private attemptClaimDrag()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private convertValueToMessage(I)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicatorFormatter:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "%d"

    .line 2
    :goto_0
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mFormatter:Ljava/util/Formatter;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_3

    .line 4
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v3, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 5
    iget-object v3, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mFormatBuilder:Ljava/lang/StringBuilder;

    if-nez v3, :cond_3

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v3, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mFormatBuilder:Ljava/lang/StringBuilder;

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 8
    :goto_2
    new-instance v1, Ljava/util/Formatter;

    iget-object v3, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mFormatter:Ljava/util/Formatter;

    .line 9
    :goto_3
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mFormatter:Ljava/util/Formatter;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAnimatedProgress()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getAnimationTarget()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    :goto_0
    return v0
.end method

.method private getAnimationTarget()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAnimationTarget:I

    return v0
.end method

.method private hideFloater()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mShowIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/do;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->new()V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->notifyBubble(Z)V

    :cond_0
    return-void
.end method

.method private isDragging()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIsDragging:Z

    return v0
.end method

.method private isInScrollingContainer()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/if;->for(Landroid/view/ViewParent;)Z

    move-result v0

    return v0
.end method

.method private notifyBubble(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->onShowBubble()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->onHideBubble()V

    :goto_0
    return-void
.end method

.method private notifyProgress(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mPublicChangeListener:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1, p2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;->onProgressChanged(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;IZ)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->onValueChanged(I)V

    return-void
.end method

.method private setHotspot(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    return-void
.end method

.method private setProgress(IZ)V
    .locals 2

    .line 2
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mPositionAnimator:Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;->do()V

    .line 5
    :cond_0
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    if-eq v0, p1, :cond_1

    .line 6
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    .line 7
    invoke-direct {p0, p1, p2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->notifyProgress(IZ)V

    .line 8
    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateProgressMessage(I)V

    .line 9
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateThumbPosFromCurrentProgress()V

    :cond_1
    return-void
.end method

.method private showFloater()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->goto()V

    .line 3
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/do;

    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->const(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->notifyBubble(Z)V

    :cond_0
    return-void
.end method

.method private startDragging(Landroid/view/MotionEvent;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 2
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 3
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    neg-int v2, v1

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    iput-boolean v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIsDragging:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 5
    iget-boolean v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAllowTrackClick:Z

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 6
    iput-boolean v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIsDragging:Z

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    sub-int/2addr p2, v1

    iput p2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mDragOffset:I

    .line 8
    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateDragging(Landroid/view/MotionEvent;)V

    .line 9
    iget-object p2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 10
    iget p2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    neg-int v1, p2

    neg-int p2, p2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Rect;->inset(II)V

    .line 11
    :cond_0
    iget-boolean p2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIsDragging:Z

    if-eqz p2, :cond_1

    .line 12
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 13
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->attemptClaimDrag()V

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, p2, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setHotspot(FF)V

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget p2, v0, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iget p2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mDragOffset:I

    .line 16
    iget-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mPublicChangeListener:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;

    if-eqz p1, :cond_1

    .line 17
    invoke-interface {p1, p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;->onStartTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V

    .line 18
    :cond_1
    iget-boolean p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIsDragging:Z

    return p1
.end method

.method private stopDragging()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mPublicChangeListener:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;->onStopTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIsDragging:Z

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method private updateDragging(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setHotspot(FF)V

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 3
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 5
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    .line 6
    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mDragOffset:I

    sub-int/2addr p1, v2

    add-int/2addr p1, v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v0

    add-int/2addr v4, v1

    sub-int/2addr v3, v4

    if-ge p1, v2, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    if-le p1, v3, :cond_1

    move p1, v3

    :cond_1
    :goto_0
    sub-int/2addr v3, v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    int-to-float v0, v3

    div-float/2addr p1, v0

    .line 9
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    .line 10
    :cond_2
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float p1, p1, v0

    int-to-float v0, v1

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, p1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(IZ)V

    return-void
.end method

.method private updateFromDrawableState()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v5, v0, v2

    const v6, 0x101009c

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const v6, 0x10100a7

    if-ne v5, v6, :cond_1

    const/4 v4, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v3, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    iget-boolean v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicatorPopupEnabled:Z

    if-eqz v1, :cond_4

    .line 4
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mShowIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mShowIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 6
    :cond_4
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->hideFloater()V

    .line 7
    :goto_2
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    invoke-virtual {v1, v0}, Landroid/support/v4/o12;->setState([I)Z

    .line 8
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTrack:Landroid/support/v4/f82;

    invoke-virtual {v1, v0}, Landroid/support/v4/o12;->setState([I)Z

    .line 9
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubber:Landroid/support/v4/f82;

    invoke-virtual {v1, v0}, Landroid/support/v4/o12;->setState([I)Z

    .line 10
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method private updateIndicatorSizes()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mNumericTransformer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$try;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$try;->for()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/do;

    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mNumericTransformer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$try;

    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    invoke-virtual {v1, v2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$try;->if(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->throw(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/do;

    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mNumericTransformer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$try;

    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    invoke-virtual {v1, v2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$try;->do(I)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->convertValueToMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->throw(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateKeyboardRange()V
    .locals 3

    .line 1
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    sub-int/2addr v0, v1

    .line 2
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mKeyProgressIncrement:I

    if-eqz v1, :cond_0

    div-int v1, v0, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    int-to-float v0, v0

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v0, v2

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mKeyProgressIncrement:I

    :cond_1
    return-void
.end method

.method private updateProgressFromAnimation(F)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 3
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v0

    add-int/2addr v4, v1

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    .line 6
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 7
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getProgress()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 8
    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    const/4 v1, 0x1

    .line 9
    invoke-direct {p0, v0, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->notifyProgress(IZ)V

    .line 10
    invoke-direct {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateProgressMessage(I)V

    :cond_0
    int-to-float v0, v3

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 11
    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateThumbPos(I)V

    return-void
.end method

.method private updateProgressMessage(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mNumericTransformer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$try;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$try;->for()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/do;

    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mNumericTransformer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$try;

    invoke-virtual {v1, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$try;->if(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->class(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/do;

    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mNumericTransformer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$try;

    invoke-virtual {v1, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$try;->do(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->convertValueToMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->class(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateThumbPos(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->getIntrinsicWidth()I

    move-result v0

    .line 2
    div-int/lit8 v1, v0, 0x2

    .line 3
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    sub-int/2addr v2, v3

    sub-int p1, v2, p1

    sub-int/2addr p1, v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    add-int/2addr v2, v3

    add-int/2addr p1, v2

    .line 6
    :goto_0
    iget-object v3, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    iget-object v4, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 7
    iget-object v3, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    iget-object v4, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p1

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, p1, v5, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubber:Landroid/support/v4/f82;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 10
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubber:Landroid/support/v4/f82;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubber:Landroid/support/v4/f82;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 12
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubber:Landroid/support/v4/f82;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 13
    :goto_1
    iget-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 14
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/do;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->this(I)V

    .line 17
    :cond_2
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    neg-int v2, v1

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 18
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    neg-int v1, v0

    neg-int v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 19
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 20
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/if;->try(Landroid/graphics/drawable/Drawable;IIII)V

    .line 21
    iget-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method private updateThumbPosFromCurrentProgress()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->getIntrinsicWidth()I

    move-result v0

    .line 2
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    .line 3
    div-int/lit8 v0, v0, 0x2

    .line 4
    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    iget v3, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v4, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    sub-int/2addr v4, v3

    int-to-float v3, v4

    div-float/2addr v2, v3

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v0

    add-int/2addr v5, v1

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    int-to-float v0, v4

    mul-float v2, v2, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v2, v0

    float-to-int v0, v2

    .line 7
    invoke-direct {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateThumbPos(I)V

    return-void
.end method


# virtual methods
.method public animateSetProgress(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getAnimationPosition()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    .line 2
    :goto_0
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    if-ge p1, v1, :cond_1

    :goto_1
    move p1, v1

    goto :goto_2

    .line 3
    :cond_1
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    if-le p1, v1, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    :goto_2
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mPositionAnimator:Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v1}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;->do()V

    .line 6
    :cond_3
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAnimationTarget:I

    int-to-float p1, p1

    .line 7
    new-instance v1, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$do;

    invoke-direct {v1, p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$do;-><init>(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V

    invoke-static {v0, p1, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;->if(FFLorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;)Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;

    move-result-object p1

    iput-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mPositionAnimator:Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;

    const/16 v0, 0xfa

    .line 8
    invoke-virtual {p1, v0}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;->new(I)V

    .line 9
    iget-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mPositionAnimator:Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;

    invoke-virtual {p1}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;->try()V

    return-void
.end method

.method public drawableStateChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateFromDrawableState()V

    return-void
.end method

.method public getAnimationPosition()F
    .locals 1

    .line 1
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAnimationPosition:F

    return v0
.end method

.method public getMax()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    return v0
.end method

.method public getNumericTransformer()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$try;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mNumericTransformer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$try;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    return v0
.end method

.method public isAnimationRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mPositionAnimator:Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;->for()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRtl()Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMirrorForRtl:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mShowIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/do;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->try()V

    :cond_0
    return-void
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    sget-boolean v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isLollipopOrGreater:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTrack:Landroid/support/v4/f82;

    invoke-virtual {v0, p1}, Landroid/support/v4/o12;->draw(Landroid/graphics/Canvas;)V

    .line 5
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubber:Landroid/support/v4/f82;

    invoke-virtual {v0, p1}, Landroid/support/v4/o12;->draw(Landroid/graphics/Canvas;)V

    .line 6
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    invoke-virtual {v0, p1}, Landroid/support/v4/o12;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onHideBubble()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getAnimatedProgress()I

    move-result v0

    const/16 v3, 0x15

    if-eq p1, v3, :cond_2

    const/16 v3, 0x16

    if-eq p1, v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget v3, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    if-lt v0, v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v3, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->animateSetProgress(I)V

    goto :goto_0

    .line 5
    :cond_2
    iget v3, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    if-gt v0, v3, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    iget v3, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mKeyProgressIncrement:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->animateSetProgress(I)V

    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_5

    .line 7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mShowIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/do;

    invoke-virtual {p1}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->try()V

    .line 5
    :cond_0
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateFromDrawableState()V

    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 2
    iget-object p2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    invoke-virtual {p2}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 3
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;

    .line 3
    invoke-static {p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->try(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMin(I)V

    .line 4
    invoke-static {p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->for(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMax(I)V

    .line 5
    invoke-static {p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->do(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(IZ)V

    .line 6
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 7
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;

    invoke-direct {v1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getProgress()I

    move-result v0

    invoke-static {v1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->if(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;I)I

    .line 4
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    invoke-static {v1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->new(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;I)I

    .line 5
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    invoke-static {v1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->case(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;I)I

    return-object v1
.end method

.method public onShowBubble()V
    .locals 0

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    iget-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    invoke-virtual {p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->getIntrinsicWidth()I

    move-result p1

    .line 3
    iget-object p2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    invoke-virtual {p2}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;->getIntrinsicHeight()I

    move-result p2

    .line 4
    iget p3, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    .line 5
    div-int/lit8 p4, p1, 0x2

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p3

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, p3

    .line 9
    iget-object v3, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    sub-int p2, v2, p2

    add-int/2addr p1, v0

    invoke-virtual {v3, v0, p2, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    iget p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTrackHeight:I

    const/4 p2, 0x2

    div-int/2addr p1, p2

    const/4 v3, 0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 11
    iget-object v3, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTrack:Landroid/support/v4/f82;

    add-int/2addr v0, p4

    sub-int/2addr v2, p4

    sub-int v4, v2, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, p4

    sub-int/2addr v5, v1

    sub-int/2addr v5, p3

    add-int/2addr p1, v2

    invoke-virtual {v3, v0, v4, v5, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12
    iget p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubberHeight:I

    div-int/2addr p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 13
    iget-object p2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubber:Landroid/support/v4/f82;

    sub-int p3, v2, p1

    add-int/2addr v2, p1

    invoke-virtual {p2, v0, p3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 14
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateThumbPosFromCurrentProgress()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->stopDragging()V

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateDragging(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 7
    iget v3, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mDownX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTouchSlop:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    .line 8
    invoke-direct {p0, p1, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->startDragging(Landroid/view/MotionEvent;Z)Z

    goto :goto_0

    .line 9
    :cond_4
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isDragging()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAllowTrackClick:Z

    if-eqz v0, :cond_5

    .line 10
    invoke-direct {p0, p1, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->startDragging(Landroid/view/MotionEvent;Z)Z

    .line 11
    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateDragging(Landroid/view/MotionEvent;)V

    .line 12
    :cond_5
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->stopDragging()V

    goto :goto_0

    .line 13
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mDownX:F

    .line 14
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isInScrollingContainer()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->startDragging(Landroid/view/MotionEvent;Z)Z

    :cond_7
    :goto_0
    return v2
.end method

.method public onValueChanged(I)V
    .locals 0

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAnimationPosition(F)V
    .locals 2

    .line 1
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAnimationPosition:F

    .line 2
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    int-to-float v1, v0

    sub-float/2addr p1, v1

    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    .line 3
    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateProgressFromAnimation(F)V

    return-void
.end method

.method public setIndicatorFormatter(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicatorFormatter:Ljava/lang/String;

    .line 2
    iget p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateProgressMessage(I)V

    return-void
.end method

.method public setIndicatorPopupEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicatorPopupEnabled:Z

    return-void
.end method

.method public setMax(I)V
    .locals 2

    .line 1
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    .line 2
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 3
    invoke-virtual {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMin(I)V

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateKeyboardRange()V

    .line 5
    iget p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    if-lt p1, v0, :cond_1

    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    if-le p1, v1, :cond_2

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V

    .line 7
    :cond_2
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateIndicatorSizes()V

    return-void
.end method

.method public setMin(I)V
    .locals 2

    .line 1
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    .line 2
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    if-le p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMax(I)V

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateKeyboardRange()V

    .line 5
    iget p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    if-lt p1, v0, :cond_1

    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    if-le p1, v1, :cond_2

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V

    :cond_2
    return-void
.end method

.method public setNumericTransformer(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$try;)V
    .locals 1
    .param p1    # Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$try;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$new;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$new;-><init>(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$do;)V

    :goto_0
    iput-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mNumericTransformer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$try;

    .line 2
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateIndicatorSizes()V

    .line 3
    iget p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateProgressMessage(I)V

    return-void
.end method

.method public setOnProgressChangeListener(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;)V
    .locals 0
    .param p1    # Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mPublicChangeListener:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(IZ)V

    return-void
.end method

.method public setRippleColor(I)V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    new-array v2, v1, [[I

    const/4 v3, 0x0

    new-array v4, v3, [I

    aput-object v4, v2, v3

    new-array v1, v1, [I

    aput p1, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/if;->else(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setScrubberColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubber:Landroid/support/v4/f82;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/o12;->for(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setScrubberColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubber:Landroid/support/v4/f82;

    invoke-virtual {v0, p1}, Landroid/support/v4/o12;->for(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setThumbColor(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/o12;->for(Landroid/content/res/ColorStateList;)V

    .line 2
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/do;

    invoke-virtual {v0, p2, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->break(II)V

    return-void
.end method

.method public setThumbColor(Landroid/content/res/ColorStateList;I)V
    .locals 3
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    invoke-virtual {v0, p1}, Landroid/support/v4/o12;->for(Landroid/content/res/ColorStateList;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    .line 4
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 5
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/do;

    invoke-virtual {v0, p2, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/do;->break(II)V

    return-void
.end method

.method public setTrackColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTrack:Landroid/support/v4/f82;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/o12;->for(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTrackColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTrack:Landroid/support/v4/f82;

    invoke-virtual {v0, p1}, Landroid/support/v4/o12;->for(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/if;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTrack:Landroid/support/v4/f82;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubber:Landroid/support/v4/f82;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
