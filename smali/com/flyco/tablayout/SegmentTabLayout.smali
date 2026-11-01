.class public Lcom/flyco/tablayout/SegmentTabLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyco/tablayout/SegmentTabLayout$for;,
        Lcom/flyco/tablayout/SegmentTabLayout$if;
    }
.end annotation


# static fields
.field private static final g:I = 0x0

.field private static final h:I = 0x1

.field private static final i:I = 0x2


# instance fields
.field private a:Z

.field private abstract:I

.field private b:Landroid/graphics/Paint;

.field private break:Landroid/graphics/Paint;

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private case:I

.field private catch:F

.field private class:Z

.field private const:F

.field private continue:Z

.field private d:Lcom/flyco/tablayout/listener/OnTabSelectListener;

.field private default:F

.field private do:Landroid/content/Context;

.field private e:Lcom/flyco/tablayout/SegmentTabLayout$if;

.field private else:Landroid/graphics/Rect;

.field private extends:F

.field private f:Lcom/flyco/tablayout/SegmentTabLayout$if;

.field private final:I

.field private finally:F

.field private for:Landroid/widget/LinearLayout;

.field private goto:Landroid/graphics/drawable/GradientDrawable;

.field private if:[Ljava/lang/String;

.field private implements:Landroid/view/animation/OvershootInterpolator;

.field private import:F

.field private instanceof:Landroid/support/v4/he0;

.field private interface:F

.field private native:F

.field private new:I

.field private package:I

.field private private:I

.field private protected:I

.field private public:F

.field private return:J

.field private static:Z

.field private strictfp:I

.field private super:F

.field private switch:Z

.field private synchronized:[F

.field private this:Landroid/graphics/drawable/GradientDrawable;

.field private throw:F

.field private throws:I

.field private transient:Landroid/animation/ValueAnimator;

.field private try:I

.field private volatile:I

.field private while:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/flyco/tablayout/SegmentTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/flyco/tablayout/SegmentTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->else:Landroid/graphics/Rect;

    .line 5
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->goto:Landroid/graphics/drawable/GradientDrawable;

    .line 6
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->this:Landroid/graphics/drawable/GradientDrawable;

    .line 7
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->break:Landroid/graphics/Paint;

    .line 8
    new-instance p3, Landroid/view/animation/OvershootInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p3, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object p3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->implements:Landroid/view/animation/OvershootInterpolator;

    const/16 p3, 0x8

    new-array p3, p3, [F

    .line 9
    iput-object p3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->synchronized:[F

    .line 10
    iput-boolean v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->a:Z

    .line 11
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->b:Landroid/graphics/Paint;

    .line 12
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->c:Landroid/util/SparseArray;

    .line 13
    new-instance p3, Lcom/flyco/tablayout/SegmentTabLayout$if;

    invoke-direct {p3, p0}, Lcom/flyco/tablayout/SegmentTabLayout$if;-><init>(Lcom/flyco/tablayout/SegmentTabLayout;)V

    iput-object p3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->e:Lcom/flyco/tablayout/SegmentTabLayout$if;

    .line 14
    new-instance p3, Lcom/flyco/tablayout/SegmentTabLayout$if;

    invoke-direct {p3, p0}, Lcom/flyco/tablayout/SegmentTabLayout$if;-><init>(Lcom/flyco/tablayout/SegmentTabLayout;)V

    iput-object p3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->f:Lcom/flyco/tablayout/SegmentTabLayout$if;

    const/4 p3, 0x0

    .line 15
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 16
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 17
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 18
    iput-object p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->do:Landroid/content/Context;

    .line 19
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->for:Landroid/widget/LinearLayout;

    .line 20
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/flyco/tablayout/SegmentTabLayout;->super(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "layout_height"

    .line 22
    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "-2"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-array v1, v0, [I

    const v2, 0x10100f5

    aput v2, v1, p3

    .line 25
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x2

    .line 26
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->protected:I

    .line 27
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    :goto_0
    new-instance p1, Lcom/flyco/tablayout/SegmentTabLayout$for;

    invoke-direct {p1, p0}, Lcom/flyco/tablayout/SegmentTabLayout$for;-><init>(Lcom/flyco/tablayout/SegmentTabLayout;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->f:Lcom/flyco/tablayout/SegmentTabLayout$if;

    aput-object v1, p2, p3

    iget-object p3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->e:Lcom/flyco/tablayout/SegmentTabLayout$if;

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->transient:Landroid/animation/ValueAnimator;

    .line 29
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public static synthetic do(Lcom/flyco/tablayout/SegmentTabLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->new:I

    return p0
.end method

.method private for(ILandroid/view/View;)V
    .locals 4

    .line 1
    sget v0, Lcom/flyco/tablayout/R$id;->tv_tab_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->if:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    new-instance v0, Lcom/flyco/tablayout/SegmentTabLayout$do;

    invoke-direct {v0, p0}, Lcom/flyco/tablayout/SegmentTabLayout$do;-><init>(Lcom/flyco/tablayout/SegmentTabLayout;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-boolean v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->class:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7
    :goto_0
    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->const:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 8
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->const:F

    float-to-int v2, v2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->for:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic if(Lcom/flyco/tablayout/SegmentTabLayout;)Lcom/flyco/tablayout/listener/OnTabSelectListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->d:Lcom/flyco/tablayout/listener/OnTabSelectListener;

    return-object p0
.end method

.method private new()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->for:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->new:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    .line 4
    iget-object v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->else:Landroid/graphics/Rect;

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Rect;->left:I

    float-to-int v0, v0

    .line 5
    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 6
    iget-boolean v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->static:Z

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_2

    .line 7
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->new:I

    const/4 v9, 0x0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->synchronized:[F

    iget v10, p0, Lcom/flyco/tablayout/SegmentTabLayout;->throw:F

    aput v10, v0, v7

    .line 9
    aput v10, v0, v8

    .line 10
    aput v9, v0, v6

    .line 11
    aput v9, v0, v5

    .line 12
    aput v9, v0, v4

    .line 13
    aput v9, v0, v3

    .line 14
    aput v10, v0, v2

    .line 15
    aput v10, v0, v1

    goto :goto_0

    .line 16
    :cond_0
    iget v10, p0, Lcom/flyco/tablayout/SegmentTabLayout;->case:I

    sub-int/2addr v10, v8

    if-ne v0, v10, :cond_1

    .line 17
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->synchronized:[F

    aput v9, v0, v7

    .line 18
    aput v9, v0, v8

    .line 19
    iget v7, p0, Lcom/flyco/tablayout/SegmentTabLayout;->throw:F

    aput v7, v0, v6

    .line 20
    aput v7, v0, v5

    .line 21
    aput v7, v0, v4

    .line 22
    aput v7, v0, v3

    .line 23
    aput v9, v0, v2

    .line 24
    aput v9, v0, v1

    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->synchronized:[F

    aput v9, v0, v7

    .line 26
    aput v9, v0, v8

    .line 27
    aput v9, v0, v6

    .line 28
    aput v9, v0, v5

    .line 29
    aput v9, v0, v4

    .line 30
    aput v9, v0, v3

    .line 31
    aput v9, v0, v2

    .line 32
    aput v9, v0, v1

    goto :goto_0

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->synchronized:[F

    iget v9, p0, Lcom/flyco/tablayout/SegmentTabLayout;->throw:F

    aput v9, v0, v7

    .line 34
    aput v9, v0, v8

    .line 35
    aput v9, v0, v6

    .line 36
    aput v9, v0, v5

    .line 37
    aput v9, v0, v4

    .line 38
    aput v9, v0, v3

    .line 39
    aput v9, v0, v2

    .line 40
    aput v9, v0, v1

    :goto_0
    return-void
.end method

.method private static(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->case:I

    if-ge v1, v2, :cond_3

    .line 2
    iget-object v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->for:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 3
    :goto_1
    sget v5, Lcom/flyco/tablayout/R$id;->tv_tab_title:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 4
    iget v5, p0, Lcom/flyco/tablayout/SegmentTabLayout;->package:I

    goto :goto_2

    :cond_1
    iget v5, p0, Lcom/flyco/tablayout/SegmentTabLayout;->private:I

    :goto_2
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget v5, p0, Lcom/flyco/tablayout/SegmentTabLayout;->abstract:I

    if-ne v5, v3, :cond_2

    .line 6
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private super(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    sget p2, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_indicator_color:I

    const-string v0, "#222831"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->final:I

    .line 3
    sget p2, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_indicator_height:I

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->super:F

    .line 4
    sget p2, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_indicator_corner_radius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->throw:F

    .line 5
    sget p2, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_indicator_margin_left:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/flyco/tablayout/SegmentTabLayout;->case(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->while:F

    .line 6
    sget p2, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_indicator_margin_top:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->import:F

    .line 7
    sget p2, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_indicator_margin_right:I

    invoke-virtual {p0, v1}, Lcom/flyco/tablayout/SegmentTabLayout;->case(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->native:F

    .line 8
    sget p2, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_indicator_margin_bottom:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->public:F

    .line 9
    sget p2, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_indicator_anim_enable:I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->static:Z

    .line 10
    sget p2, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_indicator_bounce_enable:I

    const/4 v3, 0x1

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->switch:Z

    .line 11
    sget p2, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_indicator_anim_duration:I

    const/4 v4, -0x1

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long v4, p2

    iput-wide v4, p0, Lcom/flyco/tablayout/SegmentTabLayout;->return:J

    .line 12
    sget p2, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_divider_color:I

    iget v4, p0, Lcom/flyco/tablayout/SegmentTabLayout;->final:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->throws:I

    .line 13
    sget p2, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_divider_width:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Lcom/flyco/tablayout/SegmentTabLayout;->case(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->default:F

    .line 14
    sget p2, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_divider_padding:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->extends:F

    .line 15
    sget p2, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_textsize:I

    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {p0, v5}, Lcom/flyco/tablayout/SegmentTabLayout;->return(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->finally:F

    .line 16
    sget p2, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_textSelectColor:I

    const-string v5, "#ffffff"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->package:I

    .line 17
    sget p2, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_textUnselectColor:I

    iget v5, p0, Lcom/flyco/tablayout/SegmentTabLayout;->final:I

    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->private:I

    .line 18
    sget p2, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_textBold:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->abstract:I

    .line 19
    sget p2, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_textAllCaps:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->continue:Z

    .line 20
    sget p2, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_tab_space_equal:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->class:Z

    .line 21
    sget p2, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_tab_width:I

    invoke-virtual {p0, v0}, Lcom/flyco/tablayout/SegmentTabLayout;->case(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->const:F

    .line 22
    sget v0, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_tab_padding:I

    iget-boolean v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->class:Z

    if-nez v3, :cond_1

    cmpl-float p2, p2, v1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x41200000    # 10.0f

    invoke-virtual {p0, p2}, Lcom/flyco/tablayout/SegmentTabLayout;->case(F)I

    move-result p2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/flyco/tablayout/SegmentTabLayout;->case(F)I

    move-result p2

    :goto_1
    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->catch:F

    .line 23
    sget p2, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_bar_color:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->strictfp:I

    .line 24
    sget p2, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_bar_stroke_color:I

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->final:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->volatile:I

    .line 25
    sget p2, Lcom/flyco/tablayout/R$styleable;->SegmentTabLayout_tl_bar_stroke_width:I

    invoke-virtual {p0, v4}, Lcom/flyco/tablayout/SegmentTabLayout;->case(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->interface:F

    .line 26
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private switch()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->case:I

    if-ge v1, v2, :cond_4

    .line 2
    iget-object v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->for:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    iget v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->catch:F

    float-to-int v4, v3

    float-to-int v3, v3

    invoke-virtual {v2, v4, v0, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 4
    sget v3, Lcom/flyco/tablayout/R$id;->tv_tab_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 5
    iget v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->new:I

    if-ne v1, v3, :cond_0

    iget v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->package:I

    goto :goto_1

    :cond_0
    iget v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->private:I

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->finally:F

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7
    iget-boolean v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->continue:Z

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_1
    iget v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->abstract:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 10
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    .line 11
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private try()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->for:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->new:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->e:Lcom/flyco/tablayout/SegmentTabLayout$if;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/flyco/tablayout/SegmentTabLayout$if;->do:F

    .line 3
    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->e:Lcom/flyco/tablayout/SegmentTabLayout$if;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lcom/flyco/tablayout/SegmentTabLayout$if;->if:F

    .line 4
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->for:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->try:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->f:Lcom/flyco/tablayout/SegmentTabLayout$if;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/flyco/tablayout/SegmentTabLayout$if;->do:F

    .line 6
    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->f:Lcom/flyco/tablayout/SegmentTabLayout$if;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lcom/flyco/tablayout/SegmentTabLayout$if;->if:F

    .line 7
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->f:Lcom/flyco/tablayout/SegmentTabLayout$if;

    iget v1, v0, Lcom/flyco/tablayout/SegmentTabLayout$if;->do:F

    iget-object v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->e:Lcom/flyco/tablayout/SegmentTabLayout$if;

    iget v3, v2, Lcom/flyco/tablayout/SegmentTabLayout$if;->do:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget v1, v0, Lcom/flyco/tablayout/SegmentTabLayout$if;->if:F

    iget v3, v2, Lcom/flyco/tablayout/SegmentTabLayout$if;->if:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_1

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->transient:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 10
    iget-boolean v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->switch:Z

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->transient:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->implements:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    :cond_1
    iget-wide v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->return:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    .line 13
    iget-boolean v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->switch:Z

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1f4

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0xfa

    :goto_0
    iput-wide v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->return:J

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->transient:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->return:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 15
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->transient:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    return-void
.end method


# virtual methods
.method public break()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->static:Z

    return v0
.end method

.method public case(F)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->do:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public catch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->switch:Z

    return v0
.end method

.method public class()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->class:Z

    return v0
.end method

.method public const()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->continue:Z

    return v0
.end method

.method public else(I)Lcom/flyco/tablayout/widget/MsgView;
    .locals 1

    .line 1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->case:I

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, v0, -0x1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->for:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3
    sget v0, Lcom/flyco/tablayout/R$id;->rtv_msg_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/flyco/tablayout/widget/MsgView;

    return-object p1
.end method

.method public final()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->for:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->if:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->case:I

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->case:I

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->do:Landroid/content/Context;

    sget v2, Lcom/flyco/tablayout/R$layout;->layout_tab_segment:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/flyco/tablayout/SegmentTabLayout;->for(ILandroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->switch()V

    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->new:I

    return v0
.end method

.method public getDividerColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->throws:I

    return v0
.end method

.method public getDividerPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->extends:F

    return v0
.end method

.method public getDividerWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->default:F

    return v0
.end method

.method public getIndicatorAnimDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->return:J

    return-wide v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->final:I

    return v0
.end method

.method public getIndicatorCornerRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->throw:F

    return v0
.end method

.method public getIndicatorHeight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->super:F

    return v0
.end method

.method public getIndicatorMarginBottom()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->public:F

    return v0
.end method

.method public getIndicatorMarginLeft()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->while:F

    return v0
.end method

.method public getIndicatorMarginRight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->native:F

    return v0
.end method

.method public getIndicatorMarginTop()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->import:F

    return v0
.end method

.method public getTabCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->case:I

    return v0
.end method

.method public getTabPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->catch:F

    return v0
.end method

.method public getTabWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->const:F

    return v0
.end method

.method public getTextBold()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->abstract:I

    return v0
.end method

.method public getTextSelectColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->package:I

    return v0
.end method

.method public getTextUnselectColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->private:I

    return v0
.end method

.method public getTextsize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->finally:F

    return v0
.end method

.method public goto(I)Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->for:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 2
    sget v0, Lcom/flyco/tablayout/R$id;->tv_tab_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method public import([Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentActivity;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/he0;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-direct {v0, p2, p3, p4}, Landroid/support/v4/he0;-><init>(Landroidx/fragment/app/FragmentManager;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->instanceof:Landroid/support/v4/he0;

    .line 2
    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SegmentTabLayout;->setTabData([Ljava/lang/String;)V

    return-void
.end method

.method public native(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->case:I

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, v0, -0x1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/flyco/tablayout/SegmentTabLayout;->public(II)V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/flyco/tablayout/SegmentTabLayout$if;

    .line 2
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->else:Landroid/graphics/Rect;

    iget v1, p1, Lcom/flyco/tablayout/SegmentTabLayout$if;->do:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 3
    iget p1, p1, Lcom/flyco/tablayout/SegmentTabLayout$if;->if:F

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->case:I

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    .line 5
    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->super:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    int-to-float v2, v0

    .line 6
    iget v4, p0, Lcom/flyco/tablayout/SegmentTabLayout;->import:F

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/flyco/tablayout/SegmentTabLayout;->public:F

    sub-float/2addr v2, v4

    iput v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->super:F

    .line 7
    :cond_1
    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->throw:F

    const/high16 v4, 0x40000000    # 2.0f

    cmpg-float v5, v2, v3

    if-ltz v5, :cond_2

    iget v5, p0, Lcom/flyco/tablayout/SegmentTabLayout;->super:F

    div-float/2addr v5, v4

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 8
    :cond_2
    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->super:F

    div-float/2addr v2, v4

    iput v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->throw:F

    .line 9
    :cond_3
    iget-object v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->this:Landroid/graphics/drawable/GradientDrawable;

    iget v4, p0, Lcom/flyco/tablayout/SegmentTabLayout;->strictfp:I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 10
    iget-object v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->this:Landroid/graphics/drawable/GradientDrawable;

    iget v4, p0, Lcom/flyco/tablayout/SegmentTabLayout;->interface:F

    float-to-int v4, v4

    iget v5, p0, Lcom/flyco/tablayout/SegmentTabLayout;->volatile:I

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 11
    iget-object v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->this:Landroid/graphics/drawable/GradientDrawable;

    iget v4, p0, Lcom/flyco/tablayout/SegmentTabLayout;->throw:F

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 12
    iget-object v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->this:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 13
    iget-object v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->this:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 14
    iget-boolean v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->static:Z

    const/4 v4, 0x0

    if-nez v2, :cond_4

    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->default:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_4

    .line 15
    iget-object v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->break:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 16
    iget-object v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->break:Landroid/graphics/Paint;

    iget v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->throws:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    .line 17
    :goto_0
    iget v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->case:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_4

    .line 18
    iget-object v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->for:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 19
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v7, v5

    iget v8, p0, Lcom/flyco/tablayout/SegmentTabLayout;->extends:F

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v9, v3

    int-to-float v3, v0

    iget v5, p0, Lcom/flyco/tablayout/SegmentTabLayout;->extends:F

    sub-float v10, v3, v5

    iget-object v11, p0, Lcom/flyco/tablayout/SegmentTabLayout;->break:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_4
    iget-boolean v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->static:Z

    if-eqz v0, :cond_5

    .line 21
    iget-boolean v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->a:Z

    if-eqz v0, :cond_6

    .line 22
    iput-boolean v4, p0, Lcom/flyco/tablayout/SegmentTabLayout;->a:Z

    .line 23
    invoke-direct {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->new()V

    goto :goto_1

    .line 24
    :cond_5
    invoke-direct {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->new()V

    .line 25
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->goto:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->final:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 26
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->goto:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->while:F

    float-to-int v2, v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->else:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/flyco/tablayout/SegmentTabLayout;->import:F

    float-to-int v5, v4

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->native:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iget v3, p0, Lcom/flyco/tablayout/SegmentTabLayout;->super:F

    add-float/2addr v4, v3

    float-to-int v3, v4

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 27
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->goto:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->synchronized:[F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 28
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->goto:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "mCurrentTab"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->new:I

    const-string v0, "instanceState"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 5
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->new:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->for:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->new:I

    invoke-direct {p0, v0}, Lcom/flyco/tablayout/SegmentTabLayout;->static(I)V

    .line 7
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "instanceState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    iget v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->new:I

    const-string v2, "mCurrentTab"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public public(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->case:I

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, v0, -0x1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->for:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    sget v1, Lcom/flyco/tablayout/R$id;->rtv_msg_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyco/tablayout/widget/MsgView;

    if-eqz v0, :cond_2

    .line 4
    invoke-static {v0, p2}, Landroid/support/v4/hc2;->if(Lcom/flyco/tablayout/widget/MsgView;I)V

    .line 5
    iget-object p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const/high16 p2, 0x40000000    # 2.0f

    .line 6
    invoke-virtual {p0, p1, p2, p2}, Lcom/flyco/tablayout/SegmentTabLayout;->while(IFF)V

    .line 7
    iget-object p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->c:Landroid/util/SparseArray;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public return(F)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->do:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public setCurrentTab(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->new:I

    iput v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->try:I

    .line 2
    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->new:I

    .line 3
    invoke-direct {p0, p1}, Lcom/flyco/tablayout/SegmentTabLayout;->static(I)V

    .line 4
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->instanceof:Landroid/support/v4/he0;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroid/support/v4/he0;->new(I)V

    .line 6
    :cond_0
    iget-boolean p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->static:Z

    if-eqz p1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->try()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->throws:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setDividerPadding(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SegmentTabLayout;->case(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->extends:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setDividerWidth(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SegmentTabLayout;->case(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->default:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorAnimDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->return:J

    return-void
.end method

.method public setIndicatorAnimEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->static:Z

    return-void
.end method

.method public setIndicatorBounceEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->switch:Z

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->final:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorCornerRadius(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SegmentTabLayout;->case(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->throw:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SegmentTabLayout;->case(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->super:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setOnTabSelectListener(Lcom/flyco/tablayout/listener/OnTabSelectListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->d:Lcom/flyco/tablayout/listener/OnTabSelectListener;

    return-void
.end method

.method public setTabData([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->if:[Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->final()V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Titles can not be NULL or EMPTY !"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTabPadding(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SegmentTabLayout;->case(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->catch:F

    .line 2
    invoke-direct {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->switch()V

    return-void
.end method

.method public setTabSpaceEqual(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->class:Z

    .line 2
    invoke-direct {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->switch()V

    return-void
.end method

.method public setTabWidth(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SegmentTabLayout;->case(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->const:F

    .line 2
    invoke-direct {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->switch()V

    return-void
.end method

.method public setTextAllCaps(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->continue:Z

    .line 2
    invoke-direct {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->switch()V

    return-void
.end method

.method public setTextBold(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->abstract:I

    .line 2
    invoke-direct {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->switch()V

    return-void
.end method

.method public setTextSelectColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->package:I

    .line 2
    invoke-direct {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->switch()V

    return-void
.end method

.method public setTextUnselectColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->private:I

    .line 2
    invoke-direct {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->switch()V

    return-void
.end method

.method public setTextsize(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SegmentTabLayout;->return(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->finally:F

    .line 2
    invoke-direct {p0}, Lcom/flyco/tablayout/SegmentTabLayout;->switch()V

    return-void
.end method

.method public this(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->case:I

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, v0, -0x1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->for:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3
    sget v0, Lcom/flyco/tablayout/R$id;->rtv_msg_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/flyco/tablayout/widget/MsgView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public throw(FFFF)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/flyco/tablayout/SegmentTabLayout;->case(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->while:F

    .line 2
    invoke-virtual {p0, p2}, Lcom/flyco/tablayout/SegmentTabLayout;->case(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->import:F

    .line 3
    invoke-virtual {p0, p3}, Lcom/flyco/tablayout/SegmentTabLayout;->case(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->native:F

    .line 4
    invoke-virtual {p0, p4}, Lcom/flyco/tablayout/SegmentTabLayout;->case(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->public:F

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public while(IFF)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->case:I

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, v0, -0x1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/flyco/tablayout/SegmentTabLayout;->for:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3
    sget v0, Lcom/flyco/tablayout/R$id;->rtv_msg_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyco/tablayout/widget/MsgView;

    if-eqz v0, :cond_2

    .line 4
    sget v1, Lcom/flyco/tablayout/R$id;->tv_tab_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 5
    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->b:Landroid/graphics/Paint;

    iget v2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->finally:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6
    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->b:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 7
    iget-object p1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->b:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result p1

    iget-object v1, p0, Lcom/flyco/tablayout/SegmentTabLayout;->b:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr p1, v1

    .line 8
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    invoke-virtual {p0, p2}, Lcom/flyco/tablayout/SegmentTabLayout;->case(F)I

    move-result p2

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 10
    iget p2, p0, Lcom/flyco/tablayout/SegmentTabLayout;->protected:I

    if-lez p2, :cond_1

    int-to-float p2, p2

    sub-float/2addr p2, p1

    float-to-int p1, p2

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p3}, Lcom/flyco/tablayout/SegmentTabLayout;->case(F)I

    move-result p2

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3}, Lcom/flyco/tablayout/SegmentTabLayout;->case(F)I

    move-result p1

    :goto_0
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method
