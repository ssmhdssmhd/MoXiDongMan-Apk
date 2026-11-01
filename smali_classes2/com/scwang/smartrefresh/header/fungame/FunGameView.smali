.class public abstract Lcom/scwang/smartrefresh/header/fungame/FunGameView;
.super Lcom/scwang/smartrefresh/header/fungame/FunGameBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/scwang/smartrefresh/header/fungame/FunGameView;",
        ">",
        "Lcom/scwang/smartrefresh/header/fungame/FunGameBase;"
    }
.end annotation


# static fields
.field public static final a:I = 0x4

.field public static final b:F = 0.161f

.field public static final implements:I = 0x1

.field public static final instanceof:I = 0x2

.field public static final synchronized:I = 0x3

.field public static final transient:I


# instance fields
.field public abstract:I

.field public continue:I

.field public default:Ljava/lang/String;

.field public extends:Landroid/graphics/Paint;

.field public final:F

.field public finally:Landroid/graphics/Paint;

.field public import:Ljava/lang/String;

.field public interface:I

.field public native:Ljava/lang/String;

.field public package:F

.field public private:I

.field public protected:I

.field public public:Ljava/lang/String;

.field public return:I

.field public static:Ljava/lang/String;

.field public strictfp:I

.field public super:Landroid/view/View;

.field public switch:Ljava/lang/String;

.field public throw:Landroid/widget/TextView;

.field public throws:Ljava/lang/String;

.field public volatile:I

.field public while:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 2
    iput p3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->final:F

    const/4 p3, 0x0

    .line 3
    iput p3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->abstract:I

    const v0, -0x9f9fa0

    .line 4
    iput v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->protected:I

    .line 5
    sget-object v0, Lcom/scwang/smartrefresh/header/R$styleable;->FunGameView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/scwang/smartrefresh/header/R$string;->fgh_mask_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->import:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/scwang/smartrefresh/header/R$string;->fgh_mask_top_pull:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->native:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/scwang/smartrefresh/header/R$string;->fgh_mask_top_release:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->public:Ljava/lang/String;

    .line 9
    sget v0, Lcom/scwang/smartrefresh/header/R$styleable;->FunGameView_fghMaskTextTop:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->public:Ljava/lang/String;

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->native:Ljava/lang/String;

    .line 11
    :cond_0
    sget v0, Lcom/scwang/smartrefresh/header/R$styleable;->FunGameView_fghMaskTextTopPull:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->native:Ljava/lang/String;

    .line 13
    :cond_1
    sget v0, Lcom/scwang/smartrefresh/header/R$styleable;->FunGameView_fghMaskTextTopRelease:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->public:Ljava/lang/String;

    .line 15
    :cond_2
    sget v0, Lcom/scwang/smartrefresh/header/R$styleable;->FunGameView_fghMaskTextBottom:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->import:Ljava/lang/String;

    .line 17
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    .line 18
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v1, v0, 0xe

    .line 19
    div-int/lit8 v1, v1, 0x10

    .line 20
    sget v2, Lcom/scwang/smartrefresh/header/R$styleable;->FunGameView_fghMaskTextSizeTop:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 21
    sget v2, Lcom/scwang/smartrefresh/header/R$styleable;->FunGameView_fghMaskTextSizeBottom:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 22
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->super:Landroid/view/View;

    const v4, -0xc5c5c6

    .line 24
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 25
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->native:Ljava/lang/String;

    const/16 v4, 0x50

    invoke-virtual {p0, p1, v3, v0, v4}, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->new(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->throw:Landroid/widget/TextView;

    .line 26
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->import:Ljava/lang/String;

    const/16 v3, 0x30

    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->new(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->while:Landroid/widget/TextView;

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    if-nez v0, :cond_4

    const/high16 v0, 0x42c80000    # 100.0f

    .line 28
    invoke-static {v0}, Landroid/support/v4/i02;->new(F)I

    move-result v0

    .line 29
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 30
    iget-object v5, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->super:Landroid/view/View;

    invoke-virtual {p0, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v3, v0

    mul-float v3, v3, v1

    float-to-int v3, v3

    .line 32
    iput v3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->return:I

    .line 33
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->return:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 34
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->return:I

    invoke-direct {v5, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 35
    iget v4, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->return:I

    sub-int/2addr v0, v4

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 36
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->throw:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->while:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    :cond_4
    invoke-static {v1}, Landroid/support/v4/i02;->new(F)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->final:F

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->extends:Landroid/graphics/Paint;

    .line 40
    iget v2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->final:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    iget v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->final:F

    iput v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->package:F

    .line 42
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->finally:Landroid/graphics/Paint;

    const v1, -0x3e3d3e

    .line 43
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    sget v0, Lcom/scwang/smartrefresh/header/R$string;->fgh_text_game_over:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->static:Ljava/lang/String;

    .line 45
    sget v0, Lcom/scwang/smartrefresh/header/R$string;->fgh_text_loading:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->switch:Ljava/lang/String;

    .line 46
    sget v0, Lcom/scwang/smartrefresh/header/R$string;->fgh_text_loading_finish:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->throws:Ljava/lang/String;

    .line 47
    sget v0, Lcom/scwang/smartrefresh/header/R$string;->fgh_text_loading_failed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->default:Ljava/lang/String;

    .line 48
    sget p1, Lcom/scwang/smartrefresh/header/R$styleable;->FunGameView_fghBackColor:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->interface:I

    .line 49
    sget p1, Lcom/scwang/smartrefresh/header/R$styleable;->FunGameView_fghLeftColor:I

    const/high16 p3, -0x1000000

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->continue:I

    .line 50
    sget p1, Lcom/scwang/smartrefresh/header/R$styleable;->FunGameView_fghMiddleColor:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->volatile:I

    .line 51
    sget p1, Lcom/scwang/smartrefresh/header/R$styleable;->FunGameView_fghRightColor:I

    const p3, -0x5a5a5b

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->strictfp:I

    .line 52
    sget p1, Lcom/scwang/smartrefresh/header/R$styleable;->FunGameView_fghTextGameOver:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 53
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->static:Ljava/lang/String;

    .line 54
    :cond_5
    sget p1, Lcom/scwang/smartrefresh/header/R$styleable;->FunGameView_fghTextLoading:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 55
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->switch:Ljava/lang/String;

    .line 56
    :cond_6
    sget p1, Lcom/scwang/smartrefresh/header/R$styleable;->FunGameView_fghTextLoadingFinished:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 57
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->throws:Ljava/lang/String;

    .line 58
    :cond_7
    sget p1, Lcom/scwang/smartrefresh/header/R$styleable;->FunGameView_fghTextLoadingFailed:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 59
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->default:Ljava/lang/String;

    .line 60
    :cond_8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private else(Landroid/graphics/Canvas;II)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->abstract:I

    const/high16 v1, 0x41c80000    # 25.0f

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    const/high16 v2, 0x41a00000    # 20.0f

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->finally:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/support/v4/i02;->new(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->default:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->this(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->finally:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/support/v4/i02;->new(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->throws:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->this(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->finally:Landroid/graphics/Paint;

    invoke-static {v1}, Landroid/support/v4/i02;->new(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 7
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->static:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->this(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->finally:Landroid/graphics/Paint;

    invoke-static {v1}, Landroid/support/v4/i02;->new(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 9
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->switch:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->this(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method private this(Landroid/graphics/Canvas;Ljava/lang/String;II)V
    .locals 3

    int-to-float p3, p3

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->finally:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    sub-float/2addr p3, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p3, p3, v0

    int-to-float p4, p4

    mul-float p4, p4, v0

    .line 2
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->finally:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    iget-object v2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->finally:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float/2addr v1, v2

    mul-float v1, v1, v0

    sub-float/2addr p4, v1

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->finally:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private try(Landroid/graphics/Canvas;II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->extends:Landroid/graphics/Paint;

    iget v1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->interface:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p2

    int-to-float p3, p3

    .line 2
    iget-object v7, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->extends:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->extends:Landroid/graphics/Paint;

    iget v1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->protected:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v7, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->extends:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 5
    iget v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->final:F

    sub-float v4, p3, v0

    sub-float v6, p3, v0

    iget-object v7, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->extends:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public abstract break()V
.end method

.method public abstract case(Landroid/graphics/Canvas;II)V
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->try:I

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->try(Landroid/graphics/Canvas;II)V

    .line 4
    invoke-direct {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->else(Landroid/graphics/Canvas;II)V

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->case(Landroid/graphics/Canvas;II)V

    .line 6
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public do(FIII)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    .line 2
    iget p2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->try:I

    int-to-float p2, p2

    iget p3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->final:F

    const/high16 p4, 0x40000000    # 2.0f

    mul-float p3, p3, p4

    sub-float/2addr p2, p3

    iget p3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->private:I

    int-to-float p3, p3

    sub-float/2addr p2, p3

    cmpl-float p3, p1, p2

    if-lez p3, :cond_0

    move p1, p2

    .line 3
    :cond_0
    iput p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->package:F

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public goto(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->abstract:I

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->break()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public new(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x1000000

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    or-int/lit8 p1, p4, 0x1

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    int-to-float p1, p3

    const/4 p3, 0x0

    .line 4
    invoke-virtual {v0, p3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v0
.end method

.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .locals 6
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->break:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->goto(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->goto(I)V

    .line 4
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->throw:Landroid/widget/TextView;

    .line 5
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->while:Landroid/widget/TextView;

    .line 6
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->super:Landroid/view/View;

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    iget v5, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->return:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    iget v5, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->return:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 10
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I

    move-result p1

    return p1
.end method

.method public onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V
    .locals 5
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->try:I

    if-eq v0, p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->throw:Landroid/widget/TextView;

    .line 3
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->while:Landroid/widget/TextView;

    int-to-float v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 4
    iput v2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->return:I

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7
    iget v4, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->return:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v4, p2, v4

    .line 8
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 9
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->goto(I)V

    return-void
.end method

.method public onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .locals 8
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->throw:Landroid/widget/TextView;

    .line 3
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->super:Landroid/view/View;

    .line 4
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->while:Landroid/widget/TextView;

    .line 5
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->return:I

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v5, 0x1

    aput v3, v2, v5

    const-string v3, "translationY"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    new-array v6, v1, [F

    .line 7
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result v7

    aput v7, v6, v4

    iget v7, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->return:I

    int-to-float v7, v7

    aput v7, v6, v5

    invoke-static {p3, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    new-array v1, v1, [F

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v1, v4

    const/4 v3, 0x0

    aput v3, v1, v5

    const-string v3, "alpha"

    invoke-static {p2, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 9
    new-instance v1, Lcom/scwang/smartrefresh/header/fungame/FunGameView$do;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/scwang/smartrefresh/header/fungame/FunGameView$do;-><init>(Lcom/scwang/smartrefresh/header/fungame/FunGameView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p1, 0x320

    .line 10
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const-wide/16 p1, 0xc8

    .line 11
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 12
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Landroid/support/v4/qm1;Landroid/support/v4/qm1;)V
    .locals 0
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/qm1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v4/qm1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Landroid/support/v4/qm1;Landroid/support/v4/qm1;)V

    .line 2
    sget-object p1, Lcom/scwang/smartrefresh/header/fungame/FunGameView$if;->do:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->throw:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->public:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->throw:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->native:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 5
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->setPrimaryColors([I)V

    .line 2
    array-length v0, p1

    if-lez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->throw:Landroid/widget/TextView;

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->while:Landroid/widget/TextView;

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    aget v0, p1, v1

    iput v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->interface:I

    iput v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->protected:I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const v0, -0x9f9fa0

    .line 6
    iput v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->protected:I

    .line 7
    :cond_1
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->throw:Landroid/widget/TextView;

    .line 9
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->while:Landroid/widget/TextView;

    .line 10
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->super:Landroid/view/View;

    .line 11
    aget v4, p1, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 12
    aget v3, p1, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 13
    aget v0, p1, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 14
    aget v0, p1, v1

    iput v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->volatile:I

    .line 15
    aget v0, p1, v1

    const/16 v2, 0xe1

    invoke-static {v0, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->continue:I

    .line 16
    aget v0, p1, v1

    const/16 v2, 0xc8

    invoke-static {v0, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->strictfp:I

    .line 17
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->finally:Landroid/graphics/Paint;

    aget p1, p1, v1

    const/16 v1, 0x96

    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    return-void
.end method
