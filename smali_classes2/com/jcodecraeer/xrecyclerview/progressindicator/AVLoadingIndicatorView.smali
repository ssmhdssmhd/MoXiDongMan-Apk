.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView$do;
    }
.end annotation


# static fields
.field public static final abstract:I = 0x18

.field public static final break:I = 0x4

.field public static final case:I = 0x0

.field public static final catch:I = 0x5

.field public static final class:I = 0x6

.field public static final const:I = 0x7

.field public static final continue:I = 0x19

.field public static final default:I = 0x13

.field public static final else:I = 0x1

.field public static final extends:I = 0x14

.field public static final final:I = 0x8

.field public static final finally:I = 0x15

.field public static final goto:I = 0x2

.field public static final import:I = 0xc

.field public static final interface:I = 0x1e

.field public static final native:I = 0xd

.field public static final package:I = 0x16

.field public static final private:I = 0x17

.field public static final public:I = 0xe

.field public static final return:I = 0xf

.field public static final static:I = 0x10

.field public static final strictfp:I = 0x1a

.field public static final super:I = 0x9

.field public static final switch:I = 0x11

.field public static final this:I = 0x3

.field public static final throw:I = 0xa

.field public static final throws:I = 0x12

.field public static final volatile:I = 0x1b

.field public static final while:I = 0xb


# instance fields
.field public do:I

.field public for:Landroid/graphics/Paint;

.field public if:I

.field public new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

.field private try:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->case(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p2, p1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->case(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p2, p3}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->case(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    invoke-direct {p0, p2, p3}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->case(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private case(Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lcom/jcodecraeer/xrecyclerview/R$styleable;->AVLoadingIndicatorView:[I

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    sget p2, Lcom/jcodecraeer/xrecyclerview/R$styleable;->AVLoadingIndicatorView_indicator:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->do:I

    .line 3
    sget p2, Lcom/jcodecraeer/xrecyclerview/R$styleable;->AVLoadingIndicatorView_indicator_color:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->if:I

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->for:Landroid/graphics/Paint;

    .line 6
    iget p2, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->if:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->for:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    iget-object p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->for:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->if()V

    return-void
.end method

.method private else(II)I
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method private if()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->do:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    new-instance v0, Landroid/support/v4/qw1;

    invoke-direct {v0}, Landroid/support/v4/qw1;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto/16 :goto_0

    .line 3
    :pswitch_1
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/try;

    invoke-direct {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/try;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto/16 :goto_0

    .line 4
    :pswitch_2
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default;

    invoke-direct {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/default;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto/16 :goto_0

    .line 5
    :pswitch_3
    new-instance v0, Landroid/support/v4/x82;

    invoke-direct {v0}, Landroid/support/v4/x82;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto/16 :goto_0

    .line 6
    :pswitch_4
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/throws;

    invoke-direct {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/throws;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto/16 :goto_0

    .line 7
    :pswitch_5
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/final;

    invoke-direct {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/final;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto/16 :goto_0

    .line 8
    :pswitch_6
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/const;

    invoke-direct {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/const;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto/16 :goto_0

    .line 9
    :pswitch_7
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/class;

    invoke-direct {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/class;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto/16 :goto_0

    .line 10
    :pswitch_8
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/switch;

    invoke-direct {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/switch;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto/16 :goto_0

    .line 11
    :pswitch_9
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/static;

    invoke-direct {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/static;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto/16 :goto_0

    .line 12
    :pswitch_a
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/do;

    invoke-direct {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/do;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto/16 :goto_0

    .line 13
    :pswitch_b
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/goto;

    invoke-direct {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/goto;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto/16 :goto_0

    .line 14
    :pswitch_c
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/catch;

    invoke-direct {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/catch;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto/16 :goto_0

    .line 15
    :pswitch_d
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/return;

    invoke-direct {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/return;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto/16 :goto_0

    .line 16
    :pswitch_e
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/public;

    invoke-direct {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/public;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto/16 :goto_0

    .line 17
    :pswitch_f
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/break;

    invoke-direct {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/break;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto :goto_0

    .line 18
    :pswitch_10
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/super;

    invoke-direct {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/super;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto :goto_0

    .line 19
    :pswitch_11
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/throw;

    invoke-direct {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/throw;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto :goto_0

    .line 20
    :pswitch_12
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/while;

    invoke-direct {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/while;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto :goto_0

    .line 21
    :pswitch_13
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/native;

    invoke-direct {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/native;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto :goto_0

    .line 22
    :pswitch_14
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/this;

    invoke-direct {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/this;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto :goto_0

    .line 23
    :pswitch_15
    new-instance v0, Landroid/support/v4/b7;

    invoke-direct {v0}, Landroid/support/v4/b7;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto :goto_0

    .line 24
    :pswitch_16
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/for;

    invoke-direct {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/for;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto :goto_0

    .line 25
    :pswitch_17
    new-instance v0, Landroid/support/v4/g12;

    invoke-direct {v0}, Landroid/support/v4/g12;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto :goto_0

    .line 26
    :pswitch_18
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/new;

    invoke-direct {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/new;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto :goto_0

    .line 27
    :pswitch_19
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/if;

    invoke-direct {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/if;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto :goto_0

    .line 28
    :pswitch_1a
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/case;

    invoke-direct {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/case;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    goto :goto_0

    .line 29
    :pswitch_1b
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/else;

    invoke-direct {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/else;-><init>()V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    invoke-virtual {v0, p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->catch(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private new(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    mul-int v0, v0, p1

    return v0
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->else()V

    return-void
.end method

.method public for()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->try:Z

    .line 2
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->if()V

    .line 4
    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    .line 5
    :cond_0
    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->for:Landroid/graphics/Paint;

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v1, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;->START:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->break(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v1, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;->CANCEL:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->break(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->try(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    iget-boolean p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->try:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->try:Z

    .line 4
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->do()V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    const/16 v0, 0x1e

    .line 1
    invoke-direct {p0, v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->else(II)I

    move-result p1

    .line 2
    invoke-direct {p0, v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->else(II)I

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->if:I

    .line 2
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->for:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIndicatorId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->do:I

    .line 2
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->if()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p1, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;->START:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;

    invoke-virtual {v0, p1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->break(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;)V

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    sget-object p1, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;->END:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;

    invoke-virtual {v0, p1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->break(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public try(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->new:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->for:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;->for(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method
