.class public Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/activity/LocalPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomScrollListener"
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/LocalPreviewActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/LocalPreviewActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/LocalPreviewActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->C()V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->a(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Lcom/wsw/cospa/widget/MenuSettingDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->a(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Lcom/wsw/cospa/widget/MenuSettingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->a(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Lcom/wsw/cospa/widget/MenuSettingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->dismiss()V

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->C()V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->D()V

    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 8
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->b(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->b(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->l(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->getItemCount()I

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {v2}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v2

    const-string v3, "read_mode_key"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-gtz p1, :cond_2

    const/16 v0, -0xa

    if-ne v2, v4, :cond_0

    if-ge p3, v0, :cond_0

    .line 8
    iget-object p3, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {p3}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->q(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 9
    iget-object p2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-virtual {p2}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->q0()V

    .line 10
    iget-object p2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {p2, v5}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->r(Lcom/wsw/cospa/activity/LocalPreviewActivity;Z)Z

    goto :goto_0

    :cond_0
    if-eq v2, v6, :cond_1

    if-ne v2, v3, :cond_5

    :cond_1
    if-ge p2, v0, :cond_5

    .line 11
    iget-object p2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->q(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 12
    iget-object p2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-virtual {p2}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->q0()V

    .line 13
    iget-object p2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {p2, v5}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->r(Lcom/wsw/cospa/activity/LocalPreviewActivity;Z)Z

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v1, -0x3

    if-lt v0, v7, :cond_5

    if-ne v2, v4, :cond_3

    const/16 v0, 0xa

    if-le p3, v0, :cond_3

    .line 14
    iget-object p3, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {p3}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->s(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 15
    iget-object p2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-virtual {p2}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->p0()V

    .line 16
    iget-object p2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {p2, v5}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->t(Lcom/wsw/cospa/activity/LocalPreviewActivity;Z)Z

    goto :goto_0

    :cond_3
    if-eq v2, v6, :cond_4

    if-ne v2, v3, :cond_5

    :cond_4
    if-lez p2, :cond_5

    .line 17
    iget-object p2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->s(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 18
    iget-object p2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-virtual {p2}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->p0()V

    .line 19
    iget-object p2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {p2, v5}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->t(Lcom/wsw/cospa/activity/LocalPreviewActivity;Z)Z

    :cond_5
    :goto_0
    if-lez v1, :cond_7

    sub-int/2addr v1, v4

    if-gt p1, v1, :cond_7

    .line 20
    iget-object p2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->l(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->final(I)Lcom/wsw/cospa/bean/RipeFile;

    move-result-object p1

    .line 21
    iget-object p2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->u(Lcom/wsw/cospa/activity/LocalPreviewActivity;)I

    move-result p2

    .line 22
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->getMaxPage()I

    move-result p3

    .line 23
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->getIndexPape()I

    move-result v0

    .line 24
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->getIndexPape()I

    move-result v2

    invoke-static {v1, v2}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->v(Lcom/wsw/cospa/activity/LocalPreviewActivity;I)I

    .line 25
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    iget-object v1, v1, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mSeekBarScroll:Lcom/wsw/cospa/widget/view/ReverseSeekBar;

    invoke-virtual {v1, p3}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMax(I)V

    .line 26
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    iget-object v1, v1, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mSeekBarScroll:Lcom/wsw/cospa/widget/view/ReverseSeekBar;

    invoke-virtual {v1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V

    new-array v1, v6, [Ljava/lang/Object;

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v4

    const-string p3, "%d/%d"

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 28
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mHeadTitleRight:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p3, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    iget-object p3, p3, Lcom/wsw/cospa/activity/LocalPreviewActivity;->statusChapterText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->getParentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->getParentPath()Ljava/lang/String;

    move-result-object p3

    const-string v0, "/"

    .line 31
    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 32
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->getParentPath()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_6

    .line 33
    array-length v1, p3

    if-le v1, v6, :cond_6

    .line 34
    array-length v0, p3

    sub-int/2addr v0, v6

    aget-object v0, p3, v0

    .line 35
    :cond_6
    iget-object p3, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    iget-object p3, p3, Lcom/wsw/cospa/activity/LocalPreviewActivity;->private:Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/wsw/cospa/bean/RipeFile;->setCurrPagePath(Ljava/lang/String;)V

    .line 36
    iget-object p3, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    iget-object p3, p3, Lcom/wsw/cospa/activity/LocalPreviewActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    invoke-virtual {p3, v0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->initData(Ljava/lang/String;)V

    .line 37
    iget-object p3, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {p3, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->x(Lcom/wsw/cospa/activity/LocalPreviewActivity;Lcom/wsw/cospa/bean/RipeFile;)Lcom/wsw/cospa/bean/RipeFile;

    .line 38
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->u(Lcom/wsw/cospa/activity/LocalPreviewActivity;)I

    move-result p1

    if-eq p2, p1, :cond_7

    .line 39
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {p1, v4}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->r(Lcom/wsw/cospa/activity/LocalPreviewActivity;Z)Z

    .line 40
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-static {p1, v4}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->t(Lcom/wsw/cospa/activity/LocalPreviewActivity;Z)Z

    :cond_7
    return-void
.end method
