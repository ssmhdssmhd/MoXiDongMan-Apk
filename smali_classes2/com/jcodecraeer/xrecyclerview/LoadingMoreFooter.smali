.class public Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final else:I = 0x0

.field public static final goto:I = 0x1

.field public static final this:I = 0x2


# instance fields
.field private case:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

.field private do:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

.field private for:Ljava/lang/String;

.field private if:Landroid/widget/TextView;

.field private new:Ljava/lang/String;

.field private try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->if()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->if()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->do:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    .line 2
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->case:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->for()V

    .line 4
    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->case:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    :cond_0
    return-void
.end method

.method public if()V
    .locals 4

    const/16 v0, 0x11

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->do:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    .line 4
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->case:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    const v1, -0x4a4a4b

    .line 6
    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->setIndicatorColor(I)V

    .line 7
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->case:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->setIndicatorId(I)V

    .line 8
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->do:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->case:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;->setView(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->do:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 10
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->if:Landroid/widget/TextView;

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/jcodecraeer/xrecyclerview/R$string;->listview_loading:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->for:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->for:Ljava/lang/String;

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->new:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/jcodecraeer/xrecyclerview/R$string;->nomore_loading:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->new:Ljava/lang/String;

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->try:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/jcodecraeer/xrecyclerview/R$string;->loading_done:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->try:Ljava/lang/String;

    .line 18
    :cond_5
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/jcodecraeer/xrecyclerview/R$dimen;->textandiconmargin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 20
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->if:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->if:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setLoadingDoneHint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->try:Ljava/lang/String;

    return-void
.end method

.method public setLoadingHint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->for:Ljava/lang/String;

    return-void
.end method

.method public setNoMoreHint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->new:Ljava/lang/String;

    return-void
.end method

.method public setProgressStyle(I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->do:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x1010077

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1, v0}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;->setView(Landroid/view/View;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->case:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    const v1, -0x4a4a4b

    .line 3
    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->setIndicatorColor(I)V

    .line 4
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->case:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    invoke-virtual {v0, p1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;->setIndicatorId(I)V

    .line 5
    iget-object p1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->do:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->case:Lcom/jcodecraeer/xrecyclerview/progressindicator/AVLoadingIndicatorView;

    invoke-virtual {p1, v0}, Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;->setView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setState(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->if:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->new:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->do:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->if:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->try:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->do:Lcom/jcodecraeer/xrecyclerview/SimpleViewSwitcher;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->if:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/LoadingMoreFooter;->for:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
