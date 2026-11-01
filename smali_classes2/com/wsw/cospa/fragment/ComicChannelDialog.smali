.class public Lcom/wsw/cospa/fragment/ComicChannelDialog;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.source "SourceFile"

# interfaces
.implements Lcom/cheng/channel/ChannelView$OnChannelListener;


# instance fields
.field private case:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/ih;",
            ">;"
        }
    .end annotation
.end field

.field public channelView:Lcom/cheng/channel/ChannelView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900ea
    .end annotation
.end field

.field private do:Landroid/view/View;

.field private else:Lcom/wsw/cospa/vo/FindParentVo;

.field private for:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field private if:Landroid/content/Context;

.field private new:Lcom/wsw/cospa/base/BaseActivity;

.field private try:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/ih;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->try:Ljava/util/List;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->case:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/wsw/cospa/vo/FindParentVo;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->try:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->case:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->if:Landroid/content/Context;

    .line 5
    check-cast p1, Lcom/wsw/cospa/base/BaseActivity;

    iput-object p1, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->new:Lcom/wsw/cospa/base/BaseActivity;

    .line 6
    iput-object p2, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->else:Lcom/wsw/cospa/vo/FindParentVo;

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/fragment/ComicChannelDialog;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->for:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object p0
.end method

.method private if()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const v1, 0x7f12035e

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 4
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 5
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 6
    iget-object v2, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->if:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->channelView:Lcom/cheng/channel/ChannelView;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extends(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->for:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->if:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n(I)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->for:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r(I)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->for:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    new-instance v1, Lcom/wsw/cospa/fragment/ComicChannelDialog$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/fragment/ComicChannelDialog$do;-><init>(Lcom/wsw/cospa/fragment/ComicChannelDialog;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$else;)V

    return-void
.end method


# virtual methods
.method public channelEditFinish(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/ih;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public channelEditStart()V
    .locals 0

    return-void
.end method

.method public channelItemClick(ILandroid/support/v4/ih;)V
    .locals 0

    return-void
.end method

.method public initData()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->else:Lcom/wsw/cospa/vo/FindParentVo;

    invoke-virtual {v0}, Lcom/wsw/cospa/vo/FindParentVo;->getChildVoList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/vo/FindChildVo;

    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    .line 4
    new-instance v3, Landroid/support/v4/ih;

    invoke-virtual {v2}, Lcom/wsw/cospa/vo/FindChildVo;->getKindName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/support/v4/ih;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v2, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->try:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_0
    new-instance v3, Landroid/support/v4/ih;

    invoke-virtual {v2}, Lcom/wsw/cospa/vo/FindChildVo;->getKindName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Landroid/support/v4/ih;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    .line 7
    iget-object v2, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->case:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->channelView:Lcom/cheng/channel/ChannelView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/cheng/channel/ChannelView;->setChannelFixedCount(I)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->channelView:Lcom/cheng/channel/ChannelView;

    iget-object v1, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->try:Ljava/util/List;

    const-string v2, "\u6211\u7684\u5206\u7c7b"

    invoke-virtual {v0, v2, v1}, Lcom/cheng/channel/ChannelView;->g(Ljava/lang/String;Ljava/util/List;)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->channelView:Lcom/cheng/channel/ChannelView;

    iget-object v1, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->case:Ljava/util/List;

    const-string v2, "\u63a8\u8350\u5206\u7c7b"

    invoke-virtual {v0, v2, v1}, Lcom/cheng/channel/ChannelView;->g(Ljava/lang/String;Ljava/util/List;)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->channelView:Lcom/cheng/channel/ChannelView;

    invoke-virtual {v0}, Lcom/cheng/channel/ChannelView;->h()V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->channelView:Lcom/cheng/channel/ChannelView;

    invoke-virtual {v0, p0}, Lcom/cheng/channel/ChannelView;->setOnChannelItemClickListener(Lcom/cheng/channel/ChannelView$OnChannelListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->if:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c005e

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->do:Landroid/view/View;

    .line 3
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->case(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/fragment/ComicChannelDialog;->do:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 5
    invoke-direct {p0}, Lcom/wsw/cospa/fragment/ComicChannelDialog;->if()V

    .line 6
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/ComicChannelDialog;->initData()V

    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const v0, 0x7f090131

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 4
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extends(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const/4 v1, 0x3

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r(I)V

    return-void
.end method
