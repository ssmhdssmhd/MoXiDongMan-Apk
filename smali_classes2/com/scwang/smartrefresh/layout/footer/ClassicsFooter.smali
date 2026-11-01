.class public Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;
.super Lcom/scwang/smartrefresh/layout/internal/InternalClassics;
.source "SourceFile"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshFooter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scwang/smartrefresh/layout/internal/InternalClassics<",
        "Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;",
        ">;",
        "Lcom/scwang/smartrefresh/layout/api/RefreshFooter;"
    }
.end annotation


# static fields
.field public static abstract:Ljava/lang/String;

.field public static continue:Ljava/lang/String;

.field public static interface:Ljava/lang/String;

.field public static package:Ljava/lang/String;

.field public static private:Ljava/lang/String;

.field public static strictfp:Ljava/lang/String;

.field public static volatile:Ljava/lang/String;


# instance fields
.field public default:Ljava/lang/String;

.field public extends:Ljava/lang/String;

.field public finally:Z

.field public public:Ljava/lang/String;

.field public return:Ljava/lang/String;

.field public static:Ljava/lang/String;

.field public switch:Ljava/lang/String;

.field public throws:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->finally:Z

    .line 4
    sget v1, Lcom/scwang/smartrefresh/layout/R$layout;->srl_classics_footer:I

    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    sget v1, Lcom/scwang/smartrefresh/layout/R$id;->srl_classics_arrow:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->try:Landroid/widget/ImageView;

    .line 6
    sget v2, Lcom/scwang/smartrefresh/layout/R$id;->srl_classics_progress:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->case:Landroid/widget/ImageView;

    .line 7
    sget v3, Lcom/scwang/smartrefresh/layout/R$id;->srl_classics_title:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->new:Landroid/widget/TextView;

    .line 8
    sget-object v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 10
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 11
    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableMarginRight:I

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v6}, Landroid/support/v4/i02;->new(F)I

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 12
    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 13
    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableArrowSize:I

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 14
    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 15
    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableProgressSize:I

    iget v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 16
    iget v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 17
    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableSize:I

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 18
    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 19
    iget v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 20
    iget v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 21
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlFinishDuration:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->const:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->const:I

    .line 22
    sget-object v3, Landroid/support/v4/y02;->this:[Landroid/support/v4/y02;

    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlClassicsSpinnerStyle:I

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->if:Landroid/support/v4/y02;

    iget v5, v5, Landroid/support/v4/y02;->do:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->if:Landroid/support/v4/y02;

    .line 23
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableArrow:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const v5, -0x99999a

    if-eqz v4, :cond_0

    .line 24
    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->try:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 25
    :cond_0
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->try:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_1

    .line 26
    new-instance v3, Landroid/support/v4/r3;

    invoke-direct {v3}, Landroid/support/v4/r3;-><init>()V

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->goto:Landroid/support/v4/nb1;

    .line 27
    invoke-virtual {v3, v5}, Landroid/support/v4/nb1;->do(I)V

    .line 28
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->try:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->goto:Landroid/support/v4/nb1;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    :cond_1
    :goto_0
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableProgress:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 30
    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->case:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 31
    :cond_2
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->case:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_3

    .line 32
    new-instance v3, Landroid/support/v4/rf1;

    invoke-direct {v3}, Landroid/support/v4/rf1;-><init>()V

    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->this:Landroid/support/v4/nb1;

    .line 33
    invoke-virtual {v3, v5}, Landroid/support/v4/nb1;->do(I)V

    .line 34
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->case:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->this:Landroid/support/v4/nb1;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    :cond_3
    :goto_1
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextSizeTitle:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 36
    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->new:Landroid/widget/TextView;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Landroid/support/v4/i02;->new(F)I

    move-result v5

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v4, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 37
    :cond_4
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlPrimaryColor:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 38
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-super {p0, v3}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->catch(I)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;

    .line 39
    :cond_5
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlAccentColor:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 40
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-super {p0, v0}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->if(I)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;

    .line 41
    :cond_6
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextPulling:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 42
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->public:Ljava/lang/String;

    goto :goto_2

    .line 43
    :cond_7
    sget-object v0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->package:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 44
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->public:Ljava/lang/String;

    goto :goto_2

    .line 45
    :cond_8
    sget v0, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_pulling:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->public:Ljava/lang/String;

    .line 46
    :goto_2
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextRelease:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 47
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->return:Ljava/lang/String;

    goto :goto_3

    .line 48
    :cond_9
    sget-object v0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->private:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 49
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->return:Ljava/lang/String;

    goto :goto_3

    .line 50
    :cond_a
    sget v0, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_release:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->return:Ljava/lang/String;

    .line 51
    :goto_3
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextLoading:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 52
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->static:Ljava/lang/String;

    goto :goto_4

    .line 53
    :cond_b
    sget-object v0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->abstract:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 54
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->static:Ljava/lang/String;

    goto :goto_4

    .line 55
    :cond_c
    sget v0, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_loading:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->static:Ljava/lang/String;

    .line 56
    :goto_4
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextRefreshing:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 57
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->switch:Ljava/lang/String;

    goto :goto_5

    .line 58
    :cond_d
    sget-object v0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->continue:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 59
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->switch:Ljava/lang/String;

    goto :goto_5

    .line 60
    :cond_e
    sget v0, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_refreshing:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->switch:Ljava/lang/String;

    .line 61
    :goto_5
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextFinish:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 62
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->throws:Ljava/lang/String;

    goto :goto_6

    .line 63
    :cond_f
    sget-object v0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->strictfp:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 64
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->throws:Ljava/lang/String;

    goto :goto_6

    .line 65
    :cond_10
    sget v0, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_finish:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->throws:Ljava/lang/String;

    .line 66
    :goto_6
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextFailed:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 67
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->default:Ljava/lang/String;

    goto :goto_7

    .line 68
    :cond_11
    sget-object v0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->volatile:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 69
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->default:Ljava/lang/String;

    goto :goto_7

    .line 70
    :cond_12
    sget v0, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_failed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->default:Ljava/lang/String;

    .line 71
    :goto_7
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlTextNothing:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 72
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->extends:Ljava/lang/String;

    goto :goto_8

    .line 73
    :cond_13
    sget-object v0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->interface:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 74
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->extends:Ljava/lang/String;

    goto :goto_8

    .line 75
    :cond_14
    sget v0, Lcom/scwang/smartrefresh/layout/R$string;->srl_footer_nothing:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->extends:Ljava/lang/String;

    .line 76
    :goto_8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 78
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->new:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_15

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->static:Ljava/lang/String;

    goto :goto_9

    :cond_15
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->public:Ljava/lang/String;

    :goto_9
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    const/16 p2, 0x8

    if-eqz p1, :cond_16

    .line 80
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    .line 81
    :cond_16
    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    return-void
.end method


# virtual methods
.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .locals 2
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->finally:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->new:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->throws:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->default:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-super {p0, p1, p2}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .locals 1
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->finally:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V

    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Landroid/support/v4/qm1;Landroid/support/v4/qm1;)V
    .locals 1
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
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->try:Landroid/widget/ImageView;

    .line 2
    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->finally:Z

    if-nez p2, :cond_0

    .line 3
    sget-object p2, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter$do;->do:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/16 p3, 0x8

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->new:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->switch:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :pswitch_1
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->new:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->return:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 8
    :pswitch_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->new:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->static:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :pswitch_4
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->new:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->public:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setNoMoreData(Z)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->finally:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->finally:Z

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->try:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->new:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->extends:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->new:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->public:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public varargs setPrimaryColors([I)V
    .locals 2
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->if:Landroid/support/v4/y02;

    sget-object v1, Landroid/support/v4/y02;->case:Landroid/support/v4/y02;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->setPrimaryColors([I)V

    :cond_0
    return-void
.end method
