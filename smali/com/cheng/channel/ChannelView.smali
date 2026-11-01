.class public Lcom/cheng/channel/ChannelView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cheng/channel/ChannelView$do;,
        Lcom/cheng/channel/ChannelView$OnChannelListener;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private abstract:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private b:F

.field private break:I

.field private final c:I

.field private case:I

.field private catch:I

.field private class:I

.field private const:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private continue:I

.field private d:F

.field private default:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private do:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private else:I

.field private extends:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private final:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private finally:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private for:I

.field private g:Lcom/cheng/channel/ChannelView$OnChannelListener;

.field private goto:I

.field private h:[I

.field private if:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/ih;",
            ">;>;"
        }
    .end annotation
.end field

.field private implements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private import:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private instanceof:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private interface:I

.field private native:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private new:Lcom/cheng/channel/ChannelView$do;

.field private package:I

.field private private:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private protected:I

.field private public:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private return:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private static:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private strictfp:Z

.field private super:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private switch:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private synchronized:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private this:I

.field private throw:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private throws:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private transient:I

.field private try:I

.field private volatile:I

.field private while:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/cheng/channel/ChannelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/cheng/channel/ChannelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p3, p0, Lcom/cheng/channel/ChannelView;->if:Ljava/util/Map;

    const/4 p3, 0x0

    .line 5
    iput p3, p0, Lcom/cheng/channel/ChannelView;->for:I

    const/4 v0, 0x4

    .line 6
    iput v0, p0, Lcom/cheng/channel/ChannelView;->try:I

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cheng/channel/ChannelView;->implements:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cheng/channel/ChannelView;->instanceof:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cheng/channel/ChannelView;->synchronized:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cheng/channel/ChannelView;->a:Ljava/util/List;

    const/4 v0, 0x5

    .line 11
    iput v0, p0, Lcom/cheng/channel/ChannelView;->c:I

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/cheng/channel/ChannelView;->e:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/cheng/channel/ChannelView;->f:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/cheng/channel/ChannelView;->do:Landroid/content/Context;

    .line 15
    sget-object v1, Lcom/cheng/channel/R$styleable;->ChannelView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 16
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_channelHeight:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cheng/channel/R$dimen;->channelHeight:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->else:I

    .line 17
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_channelColumn:I

    iget v2, p0, Lcom/cheng/channel/ChannelView;->try:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->try:I

    .line 18
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_channelPadding:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cheng/channel/R$dimen;->channelPadding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->goto:I

    .line 19
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_channelHorizontalSpacing:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cheng/channel/R$dimen;->channelHorizontalSpacing:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->catch:I

    .line 20
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_channelVerticalSpacing:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cheng/channel/R$dimen;->channelVerticalSpacing:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->class:I

    .line 21
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_channelNormalBackground:I

    sget v2, Lcom/cheng/channel/R$drawable;->bg_channel_normal:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->const:I

    .line 22
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_channelEditBackground:I

    sget v3, Lcom/cheng/channel/R$drawable;->bg_channel_edit:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->final:I

    .line 23
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_channelFocusedBackground:I

    sget v3, Lcom/cheng/channel/R$drawable;->bg_channel_focused:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->super:I

    .line 24
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_channelFixedBackground:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->throw:I

    .line 25
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_channelNormalTextColor:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cheng/channel/R$color;->channelNormalTextColor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->while:I

    .line 26
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_channelFixedTextColor:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/cheng/channel/R$color;->channelFixedTextColor:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->import:I

    .line 27
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_channelFocusedTextColor:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->native:I

    .line 28
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_channelFixedCount:I

    iget v2, p0, Lcom/cheng/channel/ChannelView;->for:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->for:I

    .line 29
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_channelTextSize:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/cheng/channel/R$dimen;->channelTextSize:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->transient:I

    .line 30
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_tipEditBackground:I

    sget v2, Lcom/cheng/channel/R$drawable;->bg_channel_transparent:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->public:I

    .line 31
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_platesTitleBackground:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->static:I

    .line 32
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_tipEditTextColor:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->switch:I

    .line 33
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_platesTitleColor:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->default:I

    .line 34
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_platesTitleBold:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cheng/channel/ChannelView;->strictfp:Z

    .line 35
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_platesTitleSize:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->volatile:I

    .line 36
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_tipEditTextSize:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->interface:I

    .line 37
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_platesTitleHeight:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/cheng/channel/R$dimen;->platesTitleHeight:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->this:I

    .line 38
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_platesTitleLeftRightPadding:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/cheng/channel/R$dimen;->platesTitleLeftRightPadding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->break:I

    .line 39
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_otherSubTitleBackground:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->extends:I

    .line 40
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_otherSubTitleTextColor:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/cheng/channel/R$color;->subTitleTextColor:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->finally:I

    .line 41
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_otherSubTitleTextSize:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/cheng/channel/R$dimen;->subTitleTextSize:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->package:I

    .line 42
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_subTitleBackground:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->private:I

    .line 43
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_subTitleTextColor:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->abstract:I

    .line 44
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_subTitleTextSize:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->continue:I

    .line 45
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_subTitleName:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cheng/channel/ChannelView;->e:Ljava/lang/String;

    .line 46
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_otherSubTitleName:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cheng/channel/ChannelView;->f:Ljava/lang/String;

    .line 47
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_tipFinishBackground:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->return:I

    .line 48
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_tipFinishTextColor:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->throws:I

    .line 49
    sget v1, Lcom/cheng/channel/R$styleable;->ChannelView_tipFinishTextSize:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/cheng/channel/ChannelView;->protected:I

    .line 50
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    iget-object p2, p0, Lcom/cheng/channel/ChannelView;->e:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 52
    iput-object v0, p0, Lcom/cheng/channel/ChannelView;->e:Ljava/lang/String;

    .line 53
    :cond_0
    iget-object p2, p0, Lcom/cheng/channel/ChannelView;->f:Ljava/lang/String;

    if-nez p2, :cond_1

    .line 54
    iput-object v0, p0, Lcom/cheng/channel/ChannelView;->f:Ljava/lang/String;

    .line 55
    :cond_1
    iget p2, p0, Lcom/cheng/channel/ChannelView;->try:I

    const/4 v0, 0x1

    if-ge p2, v0, :cond_2

    .line 56
    iput v0, p0, Lcom/cheng/channel/ChannelView;->try:I

    .line 57
    :cond_2
    iget p2, p0, Lcom/cheng/channel/ChannelView;->for:I

    if-gez p2, :cond_3

    .line 58
    iput p3, p0, Lcom/cheng/channel/ChannelView;->for:I

    .line 59
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/cheng/channel/ChannelView;->b:F

    const/high16 p2, 0x40a00000    # 5.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    .line 60
    iput p1, p0, Lcom/cheng/channel/ChannelView;->d:F

    return-void
.end method

.method public static synthetic a(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->case:I

    return p0
.end method

.method public static synthetic abstract(Lcom/cheng/channel/ChannelView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cheng/channel/ChannelView;->implements:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lcom/cheng/channel/ChannelView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/cheng/channel/ChannelView;->case:I

    return p1
.end method

.method public static synthetic break(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->protected:I

    return p0
.end method

.method public static synthetic c(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->class:I

    return p0
.end method

.method public static synthetic case(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->switch:I

    return p0
.end method

.method public static synthetic catch(Lcom/cheng/channel/ChannelView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cheng/channel/ChannelView;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic class(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->abstract:I

    return p0
.end method

.method public static synthetic const(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->continue:I

    return p0
.end method

.method public static synthetic continue(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->goto:I

    return p0
.end method

.method public static synthetic d(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->try:I

    return p0
.end method

.method public static synthetic default(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->this:I

    return p0
.end method

.method public static synthetic do(Lcom/cheng/channel/ChannelView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->b:F

    return p0
.end method

.method public static synthetic e(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->else:I

    return p0
.end method

.method public static synthetic else(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->interface:I

    return p0
.end method

.method public static synthetic extends(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->break:I

    return p0
.end method

.method public static synthetic f(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->catch:I

    return p0
.end method

.method public static synthetic final(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->private:I

    return p0
.end method

.method public static synthetic finally(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->transient:I

    return p0
.end method

.method public static synthetic for(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->for:I

    return p0
.end method

.method public static synthetic goto(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->return:I

    return p0
.end method

.method public static synthetic if(Lcom/cheng/channel/ChannelView;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cheng/channel/ChannelView;->if:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic implements(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->super:I

    return p0
.end method

.method public static synthetic import(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->package:I

    return p0
.end method

.method public static synthetic instanceof(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->native:I

    return p0
.end method

.method public static synthetic interface(Lcom/cheng/channel/ChannelView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cheng/channel/ChannelView;->instanceof:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic native(Lcom/cheng/channel/ChannelView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cheng/channel/ChannelView;->a:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic new(Lcom/cheng/channel/ChannelView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cheng/channel/ChannelView;->do:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic package(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->import:I

    return p0
.end method

.method public static synthetic private(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->throw:I

    return p0
.end method

.method public static synthetic protected(Lcom/cheng/channel/ChannelView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->d:F

    return p0
.end method

.method public static synthetic public(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->volatile:I

    return p0
.end method

.method public static synthetic return(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->static:I

    return p0
.end method

.method public static synthetic static(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->default:I

    return p0
.end method

.method public static synthetic strictfp(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->while:I

    return p0
.end method

.method public static synthetic super(Lcom/cheng/channel/ChannelView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cheng/channel/ChannelView;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic switch(Lcom/cheng/channel/ChannelView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cheng/channel/ChannelView;->strictfp:Z

    return p0
.end method

.method public static synthetic synchronized(Lcom/cheng/channel/ChannelView;)Lcom/cheng/channel/ChannelView$OnChannelListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cheng/channel/ChannelView;->g:Lcom/cheng/channel/ChannelView$OnChannelListener;

    return-object p0
.end method

.method public static synthetic this(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->throws:I

    return p0
.end method

.method public static synthetic throw(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->finally:I

    return p0
.end method

.method public static synthetic throws(Lcom/cheng/channel/ChannelView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cheng/channel/ChannelView;->synchronized:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic transient(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->final:I

    return p0
.end method

.method public static synthetic try(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->public:I

    return p0
.end method

.method public static synthetic volatile(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->const:I

    return p0
.end method

.method public static synthetic while(Lcom/cheng/channel/ChannelView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cheng/channel/ChannelView;->extends:I

    return p0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/ih;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->if:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/ih;

    .line 4
    iget-object v2, p0, Lcom/cheng/channel/ChannelView;->if:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    iput v2, v1, Landroid/support/v4/ih;->if:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/cheng/channel/ChannelView;->h:[I

    const/4 v0, 0x0

    .line 6
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/ih;

    iput v0, v1, Landroid/support/v4/ih;->new:I

    .line 8
    iget-object v1, p0, Lcom/cheng/channel/ChannelView;->h:[I

    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->if:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public getMyChannel()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/ih;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/cheng/channel/ChannelView$do;->do(Lcom/cheng/channel/ChannelView$do;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    invoke-static {v1}, Lcom/cheng/channel/ChannelView$do;->do(Lcom/cheng/channel/ChannelView$do;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    invoke-static {v1}, Lcom/cheng/channel/ChannelView$do;->do(Lcom/cheng/channel/ChannelView$do;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cheng/channel/do;

    iget-object v2, v2, Lcom/cheng/channel/do;->new:Landroid/support/v4/ih;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getOtherChannel()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/support/v4/ih;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/cheng/channel/ChannelView$do;->do(Lcom/cheng/channel/ChannelView$do;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    invoke-static {v1}, Lcom/cheng/channel/ChannelView$do;->do(Lcom/cheng/channel/ChannelView$do;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_1

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v4, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    invoke-static {v4}, Lcom/cheng/channel/ChannelView$do;->do(Lcom/cheng/channel/ChannelView$do;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 6
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cheng/channel/do;

    iget-object v5, v5, Lcom/cheng/channel/do;->new:Landroid/support/v4/ih;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->if:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->if:Ljava/util/Map;

    const/4 v1, 0x0

    const-string v2, "\u63a8\u8350\u9891\u9053"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/cheng/channel/ChannelView$do;

    iget-object v1, p0, Lcom/cheng/channel/ChannelView;->do:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/cheng/channel/ChannelView$do;-><init>(Lcom/cheng/channel/ChannelView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public i()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/cheng/channel/ChannelView$do;->do(Lcom/cheng/channel/ChannelView$do;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    invoke-static {v0}, Lcom/cheng/channel/ChannelView$do;->do(Lcom/cheng/channel/ChannelView$do;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    invoke-static {v0}, Lcom/cheng/channel/ChannelView$do;->do(Lcom/cheng/channel/ChannelView$do;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v4, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    invoke-static {v4}, Lcom/cheng/channel/ChannelView$do;->do(Lcom/cheng/channel/ChannelView$do;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 4
    iget-object v4, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    invoke-static {v4}, Lcom/cheng/channel/ChannelView$do;->do(Lcom/cheng/channel/ChannelView$do;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cheng/channel/do;

    .line 5
    iget-object v4, v4, Lcom/cheng/channel/do;->new:Landroid/support/v4/ih;

    iget v4, v4, Landroid/support/v4/ih;->new:I

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v3, p0, Lcom/cheng/channel/ChannelView;->h:[I

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v0, :cond_2

    const/4 v0, 0x0

    .line 7
    :goto_1
    iget-object v3, p0, Lcom/cheng/channel/ChannelView;->h:[I

    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 8
    aget v3, v3, v0

    aget v5, v2, v0

    if-eq v3, v5, :cond_1

    return v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return v4

    :cond_3
    return v1
.end method

.method public j(II)V
    .locals 2

    int-to-float p2, p2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/cheng/channel/ChannelView;->transient:I

    .line 2
    iget-object p1, p0, Lcom/cheng/channel/ChannelView;->instanceof:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 3
    iget v1, p0, Lcom/cheng/channel/ChannelView;->transient:I

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/cheng/channel/ChannelView;->implements:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 5
    iget v1, p0, Lcom/cheng/channel/ChannelView;->transient:I

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public k(II)V
    .locals 2

    int-to-float p2, p2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/cheng/channel/ChannelView;->package:I

    .line 2
    iget-object p1, p0, Lcom/cheng/channel/ChannelView;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 3
    iget v1, p0, Lcom/cheng/channel/ChannelView;->package:I

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l(II)V
    .locals 2

    int-to-float p2, p2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/cheng/channel/ChannelView;->volatile:I

    .line 2
    iget-object p1, p0, Lcom/cheng/channel/ChannelView;->synchronized:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 3
    iget v1, p0, Lcom/cheng/channel/ChannelView;->volatile:I

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m(II)V
    .locals 1

    int-to-float p2, p2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/cheng/channel/ChannelView;->continue:I

    .line 2
    iget-object p1, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/cheng/channel/ChannelView$do;->new(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    invoke-static {p1}, Lcom/cheng/channel/ChannelView$do;->new(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    iget v0, p0, Lcom/cheng/channel/ChannelView;->continue:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public n(II)V
    .locals 1

    int-to-float p2, p2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/cheng/channel/ChannelView;->interface:I

    .line 2
    iget-object p1, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/cheng/channel/ChannelView$do;->if(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    invoke-static {p1}, Lcom/cheng/channel/ChannelView$do;->if(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    iget v0, p0, Lcom/cheng/channel/ChannelView;->interface:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public o(II)V
    .locals 1

    int-to-float p2, p2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/cheng/channel/ChannelView;->protected:I

    .line 2
    iget-object p1, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/cheng/channel/ChannelView$do;->for(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    invoke-static {p1}, Lcom/cheng/channel/ChannelView$do;->for(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    iget v0, p0, Lcom/cheng/channel/ChannelView;->protected:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public setChannelEditBackground(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/cheng/channel/ChannelView;->final:I

    return-void
.end method

.method public setChannelFixedBackground(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/cheng/channel/ChannelView;->throw:I

    .line 2
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->implements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setChannelFixedCount(I)V
    .locals 4

    if-ltz p1, :cond_3

    .line 1
    iput p1, p0, Lcom/cheng/channel/ChannelView;->for:I

    .line 2
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/cheng/channel/ChannelView$do;->do(Lcom/cheng/channel/ChannelView$do;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    invoke-static {v0}, Lcom/cheng/channel/ChannelView$do;->do(Lcom/cheng/channel/ChannelView$do;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    invoke-static {v0}, Lcom/cheng/channel/ChannelView$do;->do(Lcom/cheng/channel/ChannelView$do;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 5
    iget-object v2, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    invoke-static {v2}, Lcom/cheng/channel/ChannelView$do;->do(Lcom/cheng/channel/ChannelView$do;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 6
    iget v3, p0, Lcom/cheng/channel/ChannelView;->throw:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7
    check-cast v2, Landroid/widget/TextView;

    iget v3, p0, Lcom/cheng/channel/ChannelView;->import:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "\u56fa\u5b9a\u9891\u9053\u6570\u91cf\u4e0d\u80fd\u5927\u4e8e\u5df2\u9009\u9891\u9053\u6570\u91cf"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "\u56fa\u5b9a\u9891\u9053\u6570\u91cf\u5fc5\u987b\u5927\u4e8e0"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setChannelFixedTextColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/cheng/channel/ChannelView;->import:I

    .line 2
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->implements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setChannelFocusedBackground(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/cheng/channel/ChannelView;->super:I

    return-void
.end method

.method public setChannelFocusedTextColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/cheng/channel/ChannelView;->native:I

    return-void
.end method

.method public setChannelNormalBackground(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/cheng/channel/ChannelView;->const:I

    .line 2
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->instanceof:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setChannelNormalTextColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/cheng/channel/ChannelView;->while:I

    .line 2
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->instanceof:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setChannelTextSizeRes(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/cheng/channel/ChannelView;->transient:I

    .line 2
    iget-object p1, p0, Lcom/cheng/channel/ChannelView;->instanceof:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    iget v2, p0, Lcom/cheng/channel/ChannelView;->transient:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/cheng/channel/ChannelView;->implements:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5
    iget v2, p0, Lcom/cheng/channel/ChannelView;->transient:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setOnChannelItemClickListener(Lcom/cheng/channel/ChannelView$OnChannelListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cheng/channel/ChannelView;->g:Lcom/cheng/channel/ChannelView$OnChannelListener;

    return-void
.end method

.method public setOtherSubTitleBackground(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/cheng/channel/ChannelView;->extends:I

    .line 2
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOtherSubTitleName(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/cheng/channel/ChannelView;->f:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOtherSubTitleTextColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/cheng/channel/ChannelView;->finally:I

    .line 2
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOtherSubTitleTextSizeRes(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/cheng/channel/ChannelView;->package:I

    .line 2
    iget-object p1, p0, Lcom/cheng/channel/ChannelView;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 3
    iget v2, p0, Lcom/cheng/channel/ChannelView;->package:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPlatesTitleBackground(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/cheng/channel/ChannelView;->static:I

    .line 2
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->synchronized:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPlatesTitleBold(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/cheng/channel/ChannelView;->strictfp:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/cheng/channel/ChannelView;->synchronized:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPlatesTitleColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/cheng/channel/ChannelView;->default:I

    .line 2
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->synchronized:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPlatesTitleSizeRes(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/cheng/channel/ChannelView;->volatile:I

    .line 2
    iget-object p1, p0, Lcom/cheng/channel/ChannelView;->synchronized:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 3
    iget v2, p0, Lcom/cheng/channel/ChannelView;->volatile:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSubTitleBackground(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/cheng/channel/ChannelView;->private:I

    .line 2
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/cheng/channel/ChannelView$do;->new(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    invoke-static {v0}, Lcom/cheng/channel/ChannelView$do;->new(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setSubTitleName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/cheng/channel/ChannelView;->e:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/cheng/channel/ChannelView$do;->new(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    invoke-static {v0}, Lcom/cheng/channel/ChannelView$do;->new(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSubTitleTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/cheng/channel/ChannelView;->abstract:I

    .line 2
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/cheng/channel/ChannelView$do;->new(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    invoke-static {v0}, Lcom/cheng/channel/ChannelView$do;->new(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setSubTitleTextSizeRes(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/cheng/channel/ChannelView;->continue:I

    .line 2
    iget-object p1, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/cheng/channel/ChannelView$do;->new(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    invoke-static {p1}, Lcom/cheng/channel/ChannelView$do;->new(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    iget v1, p0, Lcom/cheng/channel/ChannelView;->continue:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public setTipEditBackground(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/cheng/channel/ChannelView;->public:I

    .line 2
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/cheng/channel/ChannelView$do;->if(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    invoke-static {v0}, Lcom/cheng/channel/ChannelView$do;->if(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setTipEditTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/cheng/channel/ChannelView;->switch:I

    .line 2
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/cheng/channel/ChannelView$do;->if(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    invoke-static {v0}, Lcom/cheng/channel/ChannelView$do;->if(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTipEditTextSizeRes(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/cheng/channel/ChannelView;->interface:I

    .line 2
    iget-object p1, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/cheng/channel/ChannelView$do;->if(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    invoke-static {p1}, Lcom/cheng/channel/ChannelView$do;->if(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    iget v1, p0, Lcom/cheng/channel/ChannelView;->interface:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public setTipFinishBackground(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/cheng/channel/ChannelView;->return:I

    .line 2
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/cheng/channel/ChannelView$do;->for(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    invoke-static {v0}, Lcom/cheng/channel/ChannelView$do;->for(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setTipFinishTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/cheng/channel/ChannelView;->throws:I

    .line 2
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/cheng/channel/ChannelView$do;->for(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    invoke-static {v0}, Lcom/cheng/channel/ChannelView$do;->for(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTipFinishTextSizeRes(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/cheng/channel/ChannelView;->protected:I

    .line 2
    iget-object p1, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/cheng/channel/ChannelView$do;->for(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/cheng/channel/ChannelView;->new:Lcom/cheng/channel/ChannelView$do;

    invoke-static {p1}, Lcom/cheng/channel/ChannelView$do;->for(Lcom/cheng/channel/ChannelView$do;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    iget v1, p0, Lcom/cheng/channel/ChannelView;->protected:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method
