.class public Lcom/qmuiteam/qmui/layout/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qmuiteam/qmui/layout/IQMUILayout;


# instance fields
.field private a:I

.field private abstract:I

.field private b:F

.field private break:I

.field private c:I

.field private case:I

.field private catch:I

.field private class:I

.field private const:I

.field private continue:[F

.field private d:I

.field private default:I

.field private do:Landroid/content/Context;

.field private e:I

.field private else:I

.field private extends:Landroid/graphics/Paint;

.field private f:I

.field private final:I

.field private finally:Landroid/graphics/Paint;

.field private for:I

.field private g:I

.field private goto:I

.field private if:I

.field private implements:Z

.field private import:I

.field private instanceof:Landroid/graphics/Path;

.field private interface:I

.field private native:I

.field private new:I

.field private package:Landroid/graphics/PorterDuffXfermode;

.field private private:I

.field private protected:I

.field private public:I

.field private return:I

.field private static:I

.field private strictfp:Landroid/graphics/RectF;

.field private super:I

.field private switch:I

.field private synchronized:Z

.field private this:I

.field private throw:I

.field private throws:I

.field private transient:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private try:I

.field private volatile:I

.field private while:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->if:I

    .line 3
    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->for:I

    .line 4
    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->new:I

    .line 5
    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->try:I

    .line 6
    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->case:I

    .line 7
    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->else:I

    .line 8
    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->goto:I

    const/16 v1, 0xff

    .line 9
    iput v1, p0, Lcom/qmuiteam/qmui/layout/do;->break:I

    .line 10
    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->catch:I

    .line 11
    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->class:I

    .line 12
    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->const:I

    .line 13
    iput v1, p0, Lcom/qmuiteam/qmui/layout/do;->super:I

    .line 14
    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->throw:I

    .line 15
    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->while:I

    .line 16
    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->import:I

    .line 17
    iput v1, p0, Lcom/qmuiteam/qmui/layout/do;->public:I

    .line 18
    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->return:I

    .line 19
    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->static:I

    .line 20
    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->switch:I

    .line 21
    iput v1, p0, Lcom/qmuiteam/qmui/layout/do;->default:I

    .line 22
    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->abstract:I

    .line 23
    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->volatile:I

    const/4 v1, 0x1

    .line 24
    iput v1, p0, Lcom/qmuiteam/qmui/layout/do;->interface:I

    .line 25
    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->protected:I

    .line 26
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/layout/do;->implements:Z

    .line 27
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/qmuiteam/qmui/layout/do;->instanceof:Landroid/graphics/Path;

    .line 28
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/layout/do;->synchronized:Z

    .line 29
    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->a:I

    const/high16 v2, -0x1000000

    .line 30
    iput v2, p0, Lcom/qmuiteam/qmui/layout/do;->c:I

    .line 31
    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->d:I

    .line 32
    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->e:I

    .line 33
    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->f:I

    .line 34
    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->g:I

    .line 35
    iput-object p1, p0, Lcom/qmuiteam/qmui/layout/do;->do:Landroid/content/Context;

    .line 36
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/qmuiteam/qmui/layout/do;->transient:Ljava/lang/ref/WeakReference;

    .line 37
    sget p4, Lcom/qmuiteam/qmui/R$color;->qmui_config_color_separator:I

    .line 38
    invoke-static {p1, p4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p4

    iput p4, p0, Lcom/qmuiteam/qmui/layout/do;->this:I

    iput p4, p0, Lcom/qmuiteam/qmui/layout/do;->final:I

    .line 39
    new-instance p4, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p4, p0, Lcom/qmuiteam/qmui/layout/do;->package:Landroid/graphics/PorterDuffXfermode;

    .line 40
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    iput-object p4, p0, Lcom/qmuiteam/qmui/layout/do;->finally:Landroid/graphics/Paint;

    .line 41
    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    sget p4, Lcom/qmuiteam/qmui/R$attr;->qmui_general_shadow_alpha:I

    invoke-static {p1, p4}, Landroid/support/v4/sh1;->else(Landroid/content/Context;I)F

    move-result p4

    iput p4, p0, Lcom/qmuiteam/qmui/layout/do;->b:F

    .line 43
    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4}, Landroid/graphics/RectF;-><init>()V

    iput-object p4, p0, Lcom/qmuiteam/qmui/layout/do;->strictfp:Landroid/graphics/RectF;

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    goto/16 :goto_3

    .line 44
    :cond_1
    :goto_0
    sget-object p4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout:[I

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 45
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    const/4 p4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge p4, p3, :cond_24

    .line 46
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 47
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_android_maxWidth:I

    if-ne v4, v5, :cond_2

    .line 48
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->if:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->if:I

    goto/16 :goto_2

    .line 49
    :cond_2
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_android_maxHeight:I

    if-ne v4, v5, :cond_3

    .line 50
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->for:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->for:I

    goto/16 :goto_2

    .line 51
    :cond_3
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_android_minWidth:I

    if-ne v4, v5, :cond_4

    .line 52
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->new:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->new:I

    goto/16 :goto_2

    .line 53
    :cond_4
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_android_minHeight:I

    if-ne v4, v5, :cond_5

    .line 54
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->try:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->try:I

    goto/16 :goto_2

    .line 55
    :cond_5
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_topDividerColor:I

    if-ne v4, v5, :cond_6

    .line 56
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->this:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->this:I

    goto/16 :goto_2

    .line 57
    :cond_6
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_topDividerHeight:I

    if-ne v4, v5, :cond_7

    .line 58
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->case:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->case:I

    goto/16 :goto_2

    .line 59
    :cond_7
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_topDividerInsetLeft:I

    if-ne v4, v5, :cond_8

    .line 60
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->else:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->else:I

    goto/16 :goto_2

    .line 61
    :cond_8
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_topDividerInsetRight:I

    if-ne v4, v5, :cond_9

    .line 62
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->goto:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->goto:I

    goto/16 :goto_2

    .line 63
    :cond_9
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_bottomDividerColor:I

    if-ne v4, v5, :cond_a

    .line 64
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->final:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->final:I

    goto/16 :goto_2

    .line 65
    :cond_a
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_bottomDividerHeight:I

    if-ne v4, v5, :cond_b

    .line 66
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->catch:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->catch:I

    goto/16 :goto_2

    .line 67
    :cond_b
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_bottomDividerInsetLeft:I

    if-ne v4, v5, :cond_c

    .line 68
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->class:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->class:I

    goto/16 :goto_2

    .line 69
    :cond_c
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_bottomDividerInsetRight:I

    if-ne v4, v5, :cond_d

    .line 70
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->const:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->const:I

    goto/16 :goto_2

    .line 71
    :cond_d
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_leftDividerColor:I

    if-ne v4, v5, :cond_e

    .line 72
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->native:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->native:I

    goto/16 :goto_2

    .line 73
    :cond_e
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_leftDividerWidth:I

    if-ne v4, v5, :cond_f

    .line 74
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->catch:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->throw:I

    goto/16 :goto_2

    .line 75
    :cond_f
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_leftDividerInsetTop:I

    if-ne v4, v5, :cond_10

    .line 76
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->while:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->while:I

    goto/16 :goto_2

    .line 77
    :cond_10
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_leftDividerInsetBottom:I

    if-ne v4, v5, :cond_11

    .line 78
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->import:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->import:I

    goto/16 :goto_2

    .line 79
    :cond_11
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_rightDividerColor:I

    if-ne v4, v5, :cond_12

    .line 80
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->throws:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->throws:I

    goto/16 :goto_2

    .line 81
    :cond_12
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_rightDividerWidth:I

    if-ne v4, v5, :cond_13

    .line 82
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->return:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->return:I

    goto/16 :goto_2

    .line 83
    :cond_13
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_rightDividerInsetTop:I

    if-ne v4, v5, :cond_14

    .line 84
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->static:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->static:I

    goto/16 :goto_2

    .line 85
    :cond_14
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_rightDividerInsetBottom:I

    if-ne v4, v5, :cond_15

    .line 86
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->switch:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->switch:I

    goto/16 :goto_2

    .line 87
    :cond_15
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_borderColor:I

    if-ne v4, v5, :cond_16

    .line 88
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->volatile:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->volatile:I

    goto/16 :goto_2

    .line 89
    :cond_16
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_borderWidth:I

    if-ne v4, v5, :cond_17

    .line 90
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->interface:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->interface:I

    goto/16 :goto_2

    .line 91
    :cond_17
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_radius:I

    if-ne v4, v5, :cond_18

    .line 92
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    goto/16 :goto_2

    .line 93
    :cond_18
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_outerNormalColor:I

    if-ne v4, v5, :cond_19

    .line 94
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->protected:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->protected:I

    goto/16 :goto_2

    .line 95
    :cond_19
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_hideRadiusSide:I

    if-ne v4, v5, :cond_1a

    .line 96
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->abstract:I

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->abstract:I

    goto :goto_2

    .line 97
    :cond_1a
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_showBorderOnlyBeforeL:I

    if-ne v4, v5, :cond_1b

    .line 98
    iget-boolean v5, p0, Lcom/qmuiteam/qmui/layout/do;->synchronized:Z

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/qmuiteam/qmui/layout/do;->synchronized:Z

    goto :goto_2

    .line 99
    :cond_1b
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_shadowElevation:I

    if-ne v4, v5, :cond_1c

    .line 100
    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    goto :goto_2

    .line 101
    :cond_1c
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_shadowAlpha:I

    if-ne v4, v5, :cond_1d

    .line 102
    iget v5, p0, Lcom/qmuiteam/qmui/layout/do;->b:F

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->b:F

    goto :goto_2

    .line 103
    :cond_1d
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_useThemeGeneralShadowElevation:I

    if-ne v4, v5, :cond_1e

    .line 104
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    goto :goto_2

    .line 105
    :cond_1e
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_outlineInsetLeft:I

    if-ne v4, v5, :cond_1f

    .line 106
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->d:I

    goto :goto_2

    .line 107
    :cond_1f
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_outlineInsetRight:I

    if-ne v4, v5, :cond_20

    .line 108
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->e:I

    goto :goto_2

    .line 109
    :cond_20
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_outlineInsetTop:I

    if-ne v4, v5, :cond_21

    .line 110
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->f:I

    goto :goto_2

    .line 111
    :cond_21
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_outlineInsetBottom:I

    if-ne v4, v5, :cond_22

    .line 112
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/qmuiteam/qmui/layout/do;->g:I

    goto :goto_2

    .line 113
    :cond_22
    sget v5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_outlineExcludePadding:I

    if-ne v4, v5, :cond_23

    .line 114
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/qmuiteam/qmui/layout/do;->implements:Z

    :cond_23
    :goto_2
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_1

    .line 115
    :cond_24
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    move v0, v1

    :goto_3
    if-nez v0, :cond_25

    if-eqz v2, :cond_25

    .line 116
    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_general_shadow_elevation:I

    invoke-static {p1, p2}, Landroid/support/v4/sh1;->new(Landroid/content/Context;I)I

    move-result v0

    .line 117
    :cond_25
    iget p1, p0, Lcom/qmuiteam/qmui/layout/do;->abstract:I

    iget p2, p0, Lcom/qmuiteam/qmui/layout/do;->b:F

    invoke-virtual {p0, v3, p1, v0, p2}, Lcom/qmuiteam/qmui/layout/do;->setRadiusAndShadow(IIIF)V

    return-void
.end method

.method public static synthetic case(Lcom/qmuiteam/qmui/layout/do;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/layout/do;->e:I

    return p0
.end method

.method private class(Landroid/graphics/Canvas;Landroid/graphics/RectF;[FLandroid/graphics/Paint;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/do;->instanceof:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/do;->instanceof:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p2, p3, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 3
    iget-object p2, p0, Lcom/qmuiteam/qmui/layout/do;->instanceof:Landroid/graphics/Path;

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static synthetic do(Lcom/qmuiteam/qmui/layout/do;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/layout/do;->abstract:I

    return p0
.end method

.method public static synthetic else(Lcom/qmuiteam/qmui/layout/do;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/qmuiteam/qmui/layout/do;->implements:Z

    return p0
.end method

.method public static synthetic for(Lcom/qmuiteam/qmui/layout/do;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/layout/do;->f:I

    return p0
.end method

.method public static synthetic goto(Lcom/qmuiteam/qmui/layout/do;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/layout/do;->b:F

    return p0
.end method

.method public static synthetic if(Lcom/qmuiteam/qmui/layout/do;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/layout/do;->private:I

    return p0
.end method

.method private native(I)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/do;->transient:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setOutlineAmbientShadowColor(I)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    :cond_1
    return-void
.end method

.method public static synthetic new(Lcom/qmuiteam/qmui/layout/do;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/layout/do;->g:I

    return p0
.end method

.method public static public()Z
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
    return v0
.end method

.method public static synthetic this(Lcom/qmuiteam/qmui/layout/do;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/layout/do;->a:I

    return p0
.end method

.method public static synthetic try(Lcom/qmuiteam/qmui/layout/do;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/layout/do;->d:I

    return p0
.end method

.method private while()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/qmuiteam/qmui/layout/do;->public()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/do;->transient:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v1, p0, Lcom/qmuiteam/qmui/layout/do;->a:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    goto :goto_0

    :cond_1
    int-to-float v1, v1

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 6
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    :cond_2
    return-void
.end method


# virtual methods
.method public break(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/do;->transient:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/qmuiteam/qmui/layout/do;->private:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    invoke-static {}, Lcom/qmuiteam/qmui/layout/do;->public()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/qmuiteam/qmui/layout/do;->protected:I

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v4, p0, Lcom/qmuiteam/qmui/layout/do;->interface:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/qmuiteam/qmui/layout/do;->volatile:I

    if-eqz v4, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    if-nez v1, :cond_3

    if-nez v7, :cond_3

    return-void

    .line 4
    :cond_3
    iget-boolean v2, p0, Lcom/qmuiteam/qmui/layout/do;->synchronized:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/qmuiteam/qmui/layout/do;->public()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/qmuiteam/qmui/layout/do;->a:I

    if-eqz v2, :cond_4

    return-void

    .line 5
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    .line 6
    iget-boolean v4, p0, Lcom/qmuiteam/qmui/layout/do;->implements:Z

    if-eqz v4, :cond_5

    .line 7
    iget-object v4, p0, Lcom/qmuiteam/qmui/layout/do;->strictfp:Landroid/graphics/RectF;

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int v8, v2, v8

    int-to-float v8, v8

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int v0, v3, v0

    int-to-float v0, v0

    .line 12
    invoke-virtual {v4, v5, v6, v8, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/do;->strictfp:Landroid/graphics/RectF;

    int-to-float v4, v2

    int-to-float v5, v3

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_2
    if-eqz v1, :cond_7

    const/4 v1, 0x0

    const/4 v4, 0x0

    int-to-float v5, v2

    int-to-float v6, v3

    const/4 v8, 0x0

    const/16 v9, 0x1f

    move-object v0, p1

    move v2, v4

    move v3, v5

    move v4, v6

    move-object v5, v8

    move v6, v9

    .line 14
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 15
    iget v1, p0, Lcom/qmuiteam/qmui/layout/do;->protected:I

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 16
    iget-object v1, p0, Lcom/qmuiteam/qmui/layout/do;->finally:Landroid/graphics/Paint;

    iget v2, p0, Lcom/qmuiteam/qmui/layout/do;->protected:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget-object v1, p0, Lcom/qmuiteam/qmui/layout/do;->finally:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    iget-object v1, p0, Lcom/qmuiteam/qmui/layout/do;->finally:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/qmuiteam/qmui/layout/do;->package:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 19
    iget-object v1, p0, Lcom/qmuiteam/qmui/layout/do;->continue:[F

    if-nez v1, :cond_6

    .line 20
    iget-object v1, p0, Lcom/qmuiteam/qmui/layout/do;->strictfp:Landroid/graphics/RectF;

    iget v2, p0, Lcom/qmuiteam/qmui/layout/do;->private:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/qmuiteam/qmui/layout/do;->finally:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 21
    :cond_6
    iget-object v2, p0, Lcom/qmuiteam/qmui/layout/do;->strictfp:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/qmuiteam/qmui/layout/do;->finally:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v1, v3}, Lcom/qmuiteam/qmui/layout/do;->class(Landroid/graphics/Canvas;Landroid/graphics/RectF;[FLandroid/graphics/Paint;)V

    .line 22
    :goto_3
    iget-object v1, p0, Lcom/qmuiteam/qmui/layout/do;->finally:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 23
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_7
    if-eqz v7, :cond_a

    .line 24
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/do;->finally:Landroid/graphics/Paint;

    iget v1, p0, Lcom/qmuiteam/qmui/layout/do;->volatile:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/do;->finally:Landroid/graphics/Paint;

    iget v1, p0, Lcom/qmuiteam/qmui/layout/do;->interface:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 26
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/do;->finally:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/do;->continue:[F

    if-eqz v0, :cond_8

    .line 28
    iget-object v1, p0, Lcom/qmuiteam/qmui/layout/do;->strictfp:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/qmuiteam/qmui/layout/do;->finally:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/qmuiteam/qmui/layout/do;->class(Landroid/graphics/Canvas;Landroid/graphics/RectF;[FLandroid/graphics/Paint;)V

    goto :goto_4

    .line 29
    :cond_8
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->private:I

    if-gtz v0, :cond_9

    .line 30
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/do;->strictfp:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/qmuiteam/qmui/layout/do;->finally:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 31
    :cond_9
    iget-object v1, p0, Lcom/qmuiteam/qmui/layout/do;->strictfp:Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/qmuiteam/qmui/layout/do;->finally:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public catch(Landroid/graphics/Canvas;II)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/do;->extends:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->case:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->catch:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->throw:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->return:I

    if-lez v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/layout/do;->extends:Landroid/graphics/Paint;

    .line 3
    :cond_1
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->case:I

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0xff

    if-lez v0, :cond_3

    .line 4
    iget-object v4, p0, Lcom/qmuiteam/qmui/layout/do;->extends:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/do;->extends:Landroid/graphics/Paint;

    iget v4, p0, Lcom/qmuiteam/qmui/layout/do;->this:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->break:I

    if-ge v0, v3, :cond_2

    .line 7
    iget-object v4, p0, Lcom/qmuiteam/qmui/layout/do;->extends:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 8
    :cond_2
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->case:I

    int-to-float v0, v0

    mul-float v0, v0, v2

    div-float v8, v0, v1

    .line 9
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->else:I

    int-to-float v5, v0

    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->goto:I

    sub-int v0, p2, v0

    int-to-float v7, v0

    iget-object v9, p0, Lcom/qmuiteam/qmui/layout/do;->extends:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v8

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 10
    :cond_3
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->catch:I

    if-lez v0, :cond_5

    .line 11
    iget-object v4, p0, Lcom/qmuiteam/qmui/layout/do;->extends:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 12
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/do;->extends:Landroid/graphics/Paint;

    iget v4, p0, Lcom/qmuiteam/qmui/layout/do;->final:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->super:I

    if-ge v0, v3, :cond_4

    .line 14
    iget-object v4, p0, Lcom/qmuiteam/qmui/layout/do;->extends:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_4
    int-to-float v0, p3

    .line 15
    iget v4, p0, Lcom/qmuiteam/qmui/layout/do;->catch:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    div-float/2addr v4, v1

    sub-float/2addr v0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v8, v0

    .line 16
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->class:I

    int-to-float v5, v0

    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->const:I

    sub-int v0, p2, v0

    int-to-float v7, v0

    iget-object v9, p0, Lcom/qmuiteam/qmui/layout/do;->extends:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v8

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 17
    :cond_5
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->throw:I

    if-lez v0, :cond_7

    .line 18
    iget-object v1, p0, Lcom/qmuiteam/qmui/layout/do;->extends:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 19
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/do;->extends:Landroid/graphics/Paint;

    iget v1, p0, Lcom/qmuiteam/qmui/layout/do;->native:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->public:I

    if-ge v0, v3, :cond_6

    .line 21
    iget-object v1, p0, Lcom/qmuiteam/qmui/layout/do;->extends:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_6
    const/4 v5, 0x0

    .line 22
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->while:I

    int-to-float v6, v0

    const/4 v7, 0x0

    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->import:I

    sub-int v0, p3, v0

    int-to-float v8, v0

    iget-object v9, p0, Lcom/qmuiteam/qmui/layout/do;->extends:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 23
    :cond_7
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->return:I

    if-lez v0, :cond_9

    .line 24
    iget-object v1, p0, Lcom/qmuiteam/qmui/layout/do;->extends:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 25
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/do;->extends:Landroid/graphics/Paint;

    iget v1, p0, Lcom/qmuiteam/qmui/layout/do;->throws:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->default:I

    if-ge v0, v3, :cond_8

    .line 27
    iget-object v1, p0, Lcom/qmuiteam/qmui/layout/do;->extends:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_8
    int-to-float v5, p2

    .line 28
    iget p2, p0, Lcom/qmuiteam/qmui/layout/do;->static:I

    int-to-float v4, p2

    iget p2, p0, Lcom/qmuiteam/qmui/layout/do;->switch:I

    sub-int/2addr p3, p2

    int-to-float v6, p3

    iget-object v7, p0, Lcom/qmuiteam/qmui/layout/do;->extends:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_9
    return-void
.end method

.method public const(I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->for:I

    if-lez v0, :cond_1

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 3
    iget v1, p0, Lcom/qmuiteam/qmui/layout/do;->for:I

    if-le v0, v1, :cond_1

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 5
    iget p1, p0, Lcom/qmuiteam/qmui/layout/do;->if:I

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 6
    :cond_0
    iget p1, p0, Lcom/qmuiteam/qmui/layout/do;->if:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method public final(I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->if:I

    if-lez v0, :cond_1

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 3
    iget v1, p0, Lcom/qmuiteam/qmui/layout/do;->if:I

    if-le v0, v1, :cond_1

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 5
    iget p1, p0, Lcom/qmuiteam/qmui/layout/do;->if:I

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 6
    :cond_0
    iget p1, p0, Lcom/qmuiteam/qmui/layout/do;->if:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method public getHideRadiusSide()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->abstract:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->private:I

    return v0
.end method

.method public getShadowAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->b:F

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->c:I

    return v0
.end method

.method public getShadowElevation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->a:I

    return v0
.end method

.method public import()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->private:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->abstract:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onlyShowBottomDivider(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/do;->updateBottomDivider(IIII)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->throw:I

    .line 3
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->return:I

    .line 4
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->case:I

    return-void
.end method

.method public onlyShowLeftDivider(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/do;->updateLeftDivider(IIII)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->return:I

    .line 3
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->case:I

    .line 4
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->catch:I

    return-void
.end method

.method public onlyShowRightDivider(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/do;->updateRightDivider(IIII)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->throw:I

    .line 3
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->case:I

    .line 4
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->catch:I

    return-void
.end method

.method public onlyShowTopDivider(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/do;->updateTopDivider(IIII)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->throw:I

    .line 3
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->return:I

    .line 4
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->catch:I

    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->volatile:I

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->interface:I

    return-void
.end method

.method public setBottomDividerAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->super:I

    return-void
.end method

.method public setHeightLimit(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->for:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->for:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setHideRadiusSide(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->abstract:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->private:I

    iget v1, p0, Lcom/qmuiteam/qmui/layout/do;->a:I

    iget v2, p0, Lcom/qmuiteam/qmui/layout/do;->b:F

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/qmuiteam/qmui/layout/do;->setRadiusAndShadow(IIIF)V

    return-void
.end method

.method public setLeftDividerAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->public:I

    return-void
.end method

.method public setOuterNormalColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->protected:I

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/layout/do;->transient:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOutlineExcludePadding(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/qmuiteam/qmui/layout/do;->public()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/do;->transient:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/layout/do;->implements:Z

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    :cond_1
    return-void
.end method

.method public setOutlineInset(IIII)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/qmuiteam/qmui/layout/do;->public()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/do;->transient:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->d:I

    .line 4
    iput p3, p0, Lcom/qmuiteam/qmui/layout/do;->e:I

    .line 5
    iput p2, p0, Lcom/qmuiteam/qmui/layout/do;->f:I

    .line 6
    iput p4, p0, Lcom/qmuiteam/qmui/layout/do;->g:I

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    :cond_1
    return-void
.end method

.method public setRadius(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->private:I

    if-eq v0, p1, :cond_0

    .line 2
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->a:I

    iget v1, p0, Lcom/qmuiteam/qmui/layout/do;->b:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/qmuiteam/qmui/layout/do;->setRadiusAndShadow(IIF)V

    :cond_0
    return-void
.end method

.method public setRadius(II)V
    .locals 2

    .line 3
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->private:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->abstract:I

    if-ne p2, v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->a:I

    iget v1, p0, Lcom/qmuiteam/qmui/layout/do;->b:F

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/qmuiteam/qmui/layout/do;->setRadiusAndShadow(IIIF)V

    return-void
.end method

.method public setRadiusAndShadow(IIF)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->abstract:I

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/qmuiteam/qmui/layout/do;->setRadiusAndShadow(IIIF)V

    return-void
.end method

.method public setRadiusAndShadow(IIIF)V
    .locals 6

    .line 2
    iget v4, p0, Lcom/qmuiteam/qmui/layout/do;->c:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/qmuiteam/qmui/layout/do;->setRadiusAndShadow(IIIIF)V

    return-void
.end method

.method public setRadiusAndShadow(IIIIF)V
    .locals 14

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    .line 3
    iget-object v3, v0, Lcom/qmuiteam/qmui/layout/do;->transient:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-nez v3, :cond_0

    return-void

    .line 4
    :cond_0
    iput v1, v0, Lcom/qmuiteam/qmui/layout/do;->private:I

    .line 5
    iput v2, v0, Lcom/qmuiteam/qmui/layout/do;->abstract:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v1, :cond_5

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/16 v10, 0x8

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-ne v2, v5, :cond_1

    new-array v2, v10, [F

    aput v6, v2, v4

    aput v6, v2, v5

    aput v6, v2, v13

    aput v6, v2, v12

    int-to-float v10, v1

    aput v10, v2, v11

    int-to-float v10, v1

    aput v10, v2, v9

    int-to-float v9, v1

    aput v9, v2, v8

    int-to-float v1, v1

    aput v1, v2, v7

    .line 6
    iput-object v2, v0, Lcom/qmuiteam/qmui/layout/do;->continue:[F

    goto :goto_0

    :cond_1
    if-ne v2, v13, :cond_2

    new-array v2, v10, [F

    int-to-float v10, v1

    aput v10, v2, v4

    int-to-float v10, v1

    aput v10, v2, v5

    aput v6, v2, v13

    aput v6, v2, v12

    aput v6, v2, v11

    aput v6, v2, v9

    int-to-float v9, v1

    aput v9, v2, v8

    int-to-float v1, v1

    aput v1, v2, v7

    .line 7
    iput-object v2, v0, Lcom/qmuiteam/qmui/layout/do;->continue:[F

    goto :goto_0

    :cond_2
    if-ne v2, v12, :cond_3

    new-array v2, v10, [F

    int-to-float v10, v1

    aput v10, v2, v4

    int-to-float v10, v1

    aput v10, v2, v5

    int-to-float v10, v1

    aput v10, v2, v13

    int-to-float v1, v1

    aput v1, v2, v12

    aput v6, v2, v11

    aput v6, v2, v9

    aput v6, v2, v8

    aput v6, v2, v7

    .line 8
    iput-object v2, v0, Lcom/qmuiteam/qmui/layout/do;->continue:[F

    goto :goto_0

    :cond_3
    if-ne v2, v11, :cond_4

    new-array v2, v10, [F

    aput v6, v2, v4

    aput v6, v2, v5

    int-to-float v10, v1

    aput v10, v2, v13

    int-to-float v10, v1

    aput v10, v2, v12

    int-to-float v10, v1

    aput v10, v2, v11

    int-to-float v1, v1

    aput v1, v2, v9

    aput v6, v2, v8

    aput v6, v2, v7

    .line 9
    iput-object v2, v0, Lcom/qmuiteam/qmui/layout/do;->continue:[F

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Lcom/qmuiteam/qmui/layout/do;->continue:[F

    :cond_5
    :goto_0
    move/from16 v1, p3

    .line 11
    iput v1, v0, Lcom/qmuiteam/qmui/layout/do;->a:I

    move/from16 v1, p5

    .line 12
    iput v1, v0, Lcom/qmuiteam/qmui/layout/do;->b:F

    move/from16 v1, p4

    .line 13
    iput v1, v0, Lcom/qmuiteam/qmui/layout/do;->c:I

    .line 14
    invoke-static {}, Lcom/qmuiteam/qmui/layout/do;->public()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 15
    iget v1, v0, Lcom/qmuiteam/qmui/layout/do;->a:I

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/layout/do;->import()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    .line 16
    :cond_6
    iget v1, v0, Lcom/qmuiteam/qmui/layout/do;->a:I

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setElevation(F)V

    goto :goto_2

    .line 17
    :cond_7
    :goto_1
    invoke-virtual {v3, v6}, Landroid/view/View;->setElevation(F)V

    .line 18
    :goto_2
    iget v1, v0, Lcom/qmuiteam/qmui/layout/do;->c:I

    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/layout/do;->native(I)V

    .line 19
    new-instance v1, Lcom/qmuiteam/qmui/layout/do$do;

    invoke-direct {v1, p0}, Lcom/qmuiteam/qmui/layout/do$do;-><init>(Lcom/qmuiteam/qmui/layout/do;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 20
    iget v1, v0, Lcom/qmuiteam/qmui/layout/do;->private:I

    if-lez v1, :cond_8

    const/4 v4, 0x1

    :cond_8
    invoke-virtual {v3, v4}, Landroid/view/View;->setClipToOutline(Z)V

    .line 21
    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRightDividerAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->default:I

    return-void
.end method

.method public setShadowAlpha(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->b:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->b:F

    .line 3
    invoke-direct {p0}, Lcom/qmuiteam/qmui/layout/do;->while()V

    return-void
.end method

.method public setShadowColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->c:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->c:I

    .line 3
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/layout/do;->native(I)V

    return-void
.end method

.method public setShadowElevation(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->a:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->a:I

    .line 3
    invoke-direct {p0}, Lcom/qmuiteam/qmui/layout/do;->while()V

    return-void
.end method

.method public setShowBorderOnlyBeforeL(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/layout/do;->synchronized:Z

    .line 2
    invoke-direct {p0}, Lcom/qmuiteam/qmui/layout/do;->while()V

    return-void
.end method

.method public setTopDividerAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->break:I

    return-void
.end method

.method public setUseThemeGeneralShadowElevation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/do;->do:Landroid/content/Context;

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_general_shadow_elevation:I

    invoke-static {v0, v1}, Landroid/support/v4/sh1;->new(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/layout/do;->a:I

    .line 2
    iget v1, p0, Lcom/qmuiteam/qmui/layout/do;->private:I

    iget v2, p0, Lcom/qmuiteam/qmui/layout/do;->abstract:I

    iget v3, p0, Lcom/qmuiteam/qmui/layout/do;->b:F

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/qmuiteam/qmui/layout/do;->setRadiusAndShadow(IIIF)V

    return-void
.end method

.method public setWidthLimit(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->if:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->if:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public super(II)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->try:I

    if-ge p2, v0, :cond_0

    .line 2
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    return p1
.end method

.method public throw(II)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/qmuiteam/qmui/layout/do;->new:I

    if-ge p2, v0, :cond_0

    .line 2
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    return p1
.end method

.method public updateBottomDivider(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->class:I

    .line 2
    iput p2, p0, Lcom/qmuiteam/qmui/layout/do;->const:I

    .line 3
    iput p4, p0, Lcom/qmuiteam/qmui/layout/do;->final:I

    .line 4
    iput p3, p0, Lcom/qmuiteam/qmui/layout/do;->catch:I

    return-void
.end method

.method public updateLeftDivider(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->while:I

    .line 2
    iput p2, p0, Lcom/qmuiteam/qmui/layout/do;->import:I

    .line 3
    iput p3, p0, Lcom/qmuiteam/qmui/layout/do;->throw:I

    .line 4
    iput p4, p0, Lcom/qmuiteam/qmui/layout/do;->native:I

    return-void
.end method

.method public updateRightDivider(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->static:I

    .line 2
    iput p2, p0, Lcom/qmuiteam/qmui/layout/do;->switch:I

    .line 3
    iput p3, p0, Lcom/qmuiteam/qmui/layout/do;->return:I

    .line 4
    iput p4, p0, Lcom/qmuiteam/qmui/layout/do;->throws:I

    return-void
.end method

.method public updateTopDivider(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/layout/do;->else:I

    .line 2
    iput p2, p0, Lcom/qmuiteam/qmui/layout/do;->goto:I

    .line 3
    iput p3, p0, Lcom/qmuiteam/qmui/layout/do;->case:I

    .line 4
    iput p4, p0, Lcom/qmuiteam/qmui/layout/do;->this:I

    return-void
.end method
