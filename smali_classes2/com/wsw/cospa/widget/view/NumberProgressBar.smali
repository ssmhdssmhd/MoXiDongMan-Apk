.class public Lcom/wsw/cospa/widget/view/NumberProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/view/NumberProgressBar$OnProgressBarListener;,
        Lcom/wsw/cospa/widget/view/NumberProgressBar$ProgressTextVisibility;
    }
.end annotation


# static fields
.field private static final INSTANCE_MAX:Ljava/lang/String; = "max"

.field private static final INSTANCE_PREFIX:Ljava/lang/String; = "prefix"

.field private static final INSTANCE_PROGRESS:Ljava/lang/String; = "progress"

.field private static final INSTANCE_REACHED_BAR_COLOR:Ljava/lang/String; = "reached_bar_color"

.field private static final INSTANCE_REACHED_BAR_HEIGHT:Ljava/lang/String; = "reached_bar_height"

.field private static final INSTANCE_STATE:Ljava/lang/String; = "saved_instance"

.field private static final INSTANCE_SUFFIX:Ljava/lang/String; = "suffix"

.field private static final INSTANCE_TEXT_COLOR:Ljava/lang/String; = "text_color"

.field private static final INSTANCE_TEXT_SIZE:Ljava/lang/String; = "text_size"

.field private static final INSTANCE_TEXT_VISIBILITY:Ljava/lang/String; = "text_visibility"

.field private static final INSTANCE_UNREACHED_BAR_COLOR:Ljava/lang/String; = "unreached_bar_color"

.field private static final INSTANCE_UNREACHED_BAR_HEIGHT:Ljava/lang/String; = "unreached_bar_height"

.field private static final PROGRESS_TEXT_VISIBLE:I


# instance fields
.field private final default_progress_text_offset:F

.field private final default_reached_bar_height:F

.field private final default_reached_color:I

.field private final default_text_color:I

.field private final default_text_size:F

.field private final default_unreached_bar_height:F

.field private final default_unreached_color:I

.field private mCicrlePaint:Landroid/graphics/Paint;

.field private mCurrentDrawText:Ljava/lang/String;

.field private mCurrentProgress:I

.field private mDrawReachedBar:Z

.field private mDrawTextEnd:F

.field private mDrawTextStart:F

.field private mDrawTextWidth:F

.field private mDrawUnreachedBar:Z

.field private mIfDrawText:Z

.field private mListener:Lcom/wsw/cospa/widget/view/NumberProgressBar$OnProgressBarListener;

.field private mMaxProgress:I

.field private mOffset:F

.field private mPrefix:Ljava/lang/String;

.field private mReachedBarColor:I

.field private mReachedBarHeight:F

.field private mReachedBarPaint:Landroid/graphics/Paint;

.field private mReachedRectF:Landroid/graphics/RectF;

.field private mSuffix:Ljava/lang/String;

.field private mTextColor:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mUnreachedBarColor:I

.field private mUnreachedBarHeight:F

.field private mUnreachedBarPaint:Landroid/graphics/Paint;

.field private mUnreachedRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x42

    const/16 v1, 0x91

    const/16 v2, 0xf1

    .line 4
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->default_text_color:I

    .line 5
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->default_reached_color:I

    const/16 v1, 0xcc

    .line 6
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->default_unreached_color:I

    const/16 v2, 0x64

    .line 7
    iput v2, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mMaxProgress:I

    const/4 v4, 0x0

    .line 8
    iput v4, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mCurrentProgress:I

    const-string v5, "%"

    .line 9
    iput-object v5, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mSuffix:Ljava/lang/String;

    const-string v5, ""

    .line 10
    iput-object v5, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mPrefix:Ljava/lang/String;

    .line 11
    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    .line 12
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v6, v6, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    const/4 v5, 0x1

    .line 13
    iput-boolean v5, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mDrawUnreachedBar:Z

    .line 14
    iput-boolean v5, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mDrawReachedBar:Z

    .line 15
    iput-boolean v5, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mIfDrawText:Z

    const/high16 v6, 0x3fc00000    # 1.5f

    .line 16
    invoke-virtual {p0, v6}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->dp2px(F)F

    move-result v6

    iput v6, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->default_reached_bar_height:F

    const/high16 v7, 0x3f800000    # 1.0f

    .line 17
    invoke-virtual {p0, v7}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->dp2px(F)F

    move-result v7

    iput v7, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->default_unreached_bar_height:F

    const/high16 v8, 0x41200000    # 10.0f

    .line 18
    invoke-virtual {p0, v8}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->sp2px(F)F

    move-result v8

    iput v8, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->default_text_size:F

    const/high16 v9, 0x40400000    # 3.0f

    .line 19
    invoke-virtual {p0, v9}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->dp2px(F)F

    move-result v9

    iput v9, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->default_progress_text_offset:F

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v10, Lcom/wsw/cospa/R$styleable;->UpdateAppNumberProgressBar:[I

    invoke-virtual {p1, p2, v10, p3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 21
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedBarColor:I

    const/16 p2, 0x9

    .line 22
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedBarColor:I

    const/4 p2, 0x4

    .line 23
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mTextColor:I

    const/4 p2, 0x6

    .line 24
    invoke-virtual {p1, p2, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mTextSize:F

    const/4 p2, 0x2

    .line 25
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedBarHeight:F

    const/16 p2, 0x8

    .line 26
    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedBarHeight:F

    const/4 p2, 0x5

    .line 27
    invoke-virtual {p1, p2, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mOffset:F

    const/4 p2, 0x7

    .line 28
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz p2, :cond_0

    .line 29
    iput-boolean v4, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mIfDrawText:Z

    .line 30
    :cond_0
    invoke-virtual {p1, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->setProgress(I)V

    .line 31
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->setMax(I)V

    .line 32
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->initializePainters()V

    return-void
.end method

.method private calculateDrawRectF()V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->getProgress()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->getMax()I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mCurrentDrawText:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mCurrentDrawText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mCurrentDrawText:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mDrawTextWidth:F

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->getProgress()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_0

    .line 5
    iput-boolean v3, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mDrawReachedBar:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mDrawTextStart:F

    goto :goto_0

    .line 7
    :cond_0
    iput-boolean v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mDrawReachedBar:Z

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    iput v4, v1, Landroid/graphics/RectF;->left:F

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget v5, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedBarHeight:F

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    iput v4, v1, Landroid/graphics/RectF;->top:F

    .line 10
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v5, v5, v6

    div-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->getProgress()I

    move-result v5

    int-to-float v5, v5

    mul-float v4, v4, v5

    iget v5, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mOffset:F

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v1, Landroid/graphics/RectF;->right:F

    .line 11
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget v5, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedBarHeight:F

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    .line 12
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mOffset:F

    add-float/2addr v1, v4

    iput v1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mDrawTextStart:F

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget-object v4, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v2

    sub-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mDrawTextEnd:F

    .line 14
    iget v1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mDrawTextStart:F

    iget v4, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mDrawTextWidth:F

    add-float/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_1

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mDrawTextWidth:F

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mDrawTextStart:F

    .line 16
    iget-object v4, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    iget v5, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mOffset:F

    sub-float/2addr v1, v5

    iput v1, v4, Landroid/graphics/RectF;->right:F

    .line 17
    :cond_1
    iget v1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mDrawTextStart:F

    iget v4, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mDrawTextWidth:F

    add-float/2addr v1, v4

    iget v4, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mOffset:F

    add-float/2addr v1, v4

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_2

    .line 19
    iput-boolean v3, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mDrawUnreachedBar:Z

    goto :goto_1

    .line 20
    :cond_2
    iput-boolean v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mDrawUnreachedBar:Z

    .line 21
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 23
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedBarHeight:F

    neg-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 24
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedBarHeight:F

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :goto_1
    return-void
.end method

.method private calculateDrawRectFWithoutProgressText()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedBarHeight:F

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v3, v3, v4

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedBarHeight:F

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedBarHeight:F

    neg-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedBarHeight:F

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private initializePainters()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedBarPaint:Landroid/graphics/Paint;

    .line 2
    iget v2, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedBarColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedBarPaint:Landroid/graphics/Paint;

    .line 4
    iget v2, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedBarColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    .line 6
    iget v1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private measure(IZ)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->getSuggestedMinimumWidth()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->getSuggestedMinimumHeight()I

    move-result v2

    :goto_1
    add-int/2addr v2, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_4

    if-eqz p2, :cond_3

    .line 5
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_2

    .line 6
    :cond_3
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    :cond_4
    move p1, v2

    :goto_2
    return p1
.end method


# virtual methods
.method public dp2px(F)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    return p1
.end method

.method public getMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mMaxProgress:I

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mCurrentProgress:I

    return v0
.end method

.method public getProgressTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mTextSize:F

    return v0
.end method

.method public getProgressTextVisibility()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mIfDrawText:Z

    return v0
.end method

.method public getReachedBarColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedBarColor:I

    return v0
.end method

.method public getReachedBarHeight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedBarHeight:F

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestedMinimumHeight()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mTextSize:F

    float-to-int v0, v0

    iget v1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedBarHeight:F

    float-to-int v1, v1

    iget v2, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedBarHeight:F

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getSuggestedMinimumWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mTextSize:F

    float-to-int v0, v0

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mTextColor:I

    return v0
.end method

.method public getUnreachedBarColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedBarColor:I

    return v0
.end method

.method public getUnreachedBarHeight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedBarHeight:F

    return v0
.end method

.method public incrementProgressBy(I)V
    .locals 2

    if-lez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->getProgress()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->setProgress(I)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mListener:Lcom/wsw/cospa/widget/view/NumberProgressBar$OnProgressBarListener;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->getMax()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/wsw/cospa/widget/view/NumberProgressBar$OnProgressBarListener;->onProgressChange(II)V

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mIfDrawText:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->calculateDrawRectF()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->calculateDrawRectFWithoutProgressText()V

    .line 4
    :goto_0
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mDrawReachedBar:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mDrawUnreachedBar:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 8
    :cond_2
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mIfDrawText:Z

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mCurrentDrawText:Ljava/lang/String;

    iget v1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mDrawTextStart:F

    iget v2, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mDrawTextEnd:F

    iget-object v3, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->measure(IZ)I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->measure(IZ)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "text_color"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mTextColor:I

    const-string v0, "text_size"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mTextSize:F

    const-string v0, "reached_bar_height"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedBarHeight:F

    const-string v0, "unreached_bar_height"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedBarHeight:F

    const-string v0, "reached_bar_color"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedBarColor:I

    const-string v0, "unreached_bar_color"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedBarColor:I

    .line 9
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->initializePainters()V

    const-string v0, "max"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->setMax(I)V

    const-string v0, "progress"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->setProgress(I)V

    const-string v0, "prefix"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->setPrefix(Ljava/lang/String;)V

    const-string v0, "suffix"

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->setSuffix(Ljava/lang/String;)V

    const-string v0, "text_visibility"

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wsw/cospa/widget/view/NumberProgressBar$ProgressTextVisibility;->VISIBLE:Lcom/wsw/cospa/widget/view/NumberProgressBar$ProgressTextVisibility;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/wsw/cospa/widget/view/NumberProgressBar$ProgressTextVisibility;->INVISIBLE:Lcom/wsw/cospa/widget/view/NumberProgressBar$ProgressTextVisibility;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->setProgressTextVisibility(Lcom/wsw/cospa/widget/view/NumberProgressBar$ProgressTextVisibility;)V

    const-string v0, "saved_instance"

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 16
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "saved_instance"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->getTextColor()I

    move-result v1

    const-string v2, "text_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->getProgressTextSize()F

    move-result v1

    const-string v2, "text_size"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->getReachedBarHeight()F

    move-result v1

    const-string v2, "reached_bar_height"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 6
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->getUnreachedBarHeight()F

    move-result v1

    const-string v2, "unreached_bar_height"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 7
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->getReachedBarColor()I

    move-result v1

    const-string v2, "reached_bar_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->getUnreachedBarColor()I

    move-result v1

    const-string v2, "unreached_bar_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->getMax()I

    move-result v1

    const-string v2, "max"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->getProgress()I

    move-result v1

    const-string v2, "progress"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->getSuffix()Ljava/lang/String;

    move-result-object v1

    const-string v2, "suffix"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->getPrefix()Ljava/lang/String;

    move-result-object v1

    const-string v2, "prefix"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->getProgressTextVisibility()Z

    move-result v1

    const-string v2, "text_visibility"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public setMax(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mMaxProgress:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOnProgressBarListener(Lcom/wsw/cospa/widget/view/NumberProgressBar$OnProgressBarListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mListener:Lcom/wsw/cospa/widget/view/NumberProgressBar$OnProgressBarListener;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mPrefix:Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mPrefix:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->getMax()I

    move-result v0

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 2
    iput p1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mCurrentProgress:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setProgressTextColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mTextColor:I

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgressTextSize(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mTextSize:F

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgressTextVisibility(Lcom/wsw/cospa/widget/view/NumberProgressBar$ProgressTextVisibility;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/widget/view/NumberProgressBar$ProgressTextVisibility;->VISIBLE:Lcom/wsw/cospa/widget/view/NumberProgressBar$ProgressTextVisibility;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mIfDrawText:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setReachedBarColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedBarColor:I

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setReachedBarHeight(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mReachedBarHeight:F

    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mSuffix:Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mSuffix:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setUnreachedBarColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedBarColor:I

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setUnreachedBarHeight(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/view/NumberProgressBar;->mUnreachedBarHeight:F

    return-void
.end method

.method public sp2px(F)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float p1, p1, v0

    return p1
.end method
