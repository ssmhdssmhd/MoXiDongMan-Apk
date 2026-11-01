.class public Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/activity/ZipFileManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomScrollListener"
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

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
    iget-object p1, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->y()V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->v(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)Lcom/wsw/cospa/widget/MenuSettingDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->v(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)Lcom/wsw/cospa/widget/MenuSettingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->v(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)Lcom/wsw/cospa/widget/MenuSettingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->dismiss()V

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->y()V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->z()V

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
    iget-object p1, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->c(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->c(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->d(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->getItemCount()I

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {v2}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v2

    const-string v3, "read_mode_key"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-gtz p1, :cond_2

    const/16 v0, -0xa

    if-ne v2, v4, :cond_0

    if-ge p3, v0, :cond_0

    .line 8
    iget-object p3, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p3}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->e(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 9
    iget-object p2, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->g(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)V

    .line 10
    iget-object p2, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p2, v6}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->f(Lcom/wsw/cospa/activity/ZipFileManagerActivity;Z)Z

    goto :goto_0

    :cond_0
    if-eq v2, v3, :cond_1

    if-ne v2, v5, :cond_5

    :cond_1
    if-ge p2, v0, :cond_5

    .line 11
    iget-object p2, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->e(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 12
    iget-object p2, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->g(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)V

    .line 13
    iget-object p2, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p2, v6}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->f(Lcom/wsw/cospa/activity/ZipFileManagerActivity;Z)Z

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v1, -0x3

    if-lt v0, v7, :cond_5

    if-ne v2, v4, :cond_3

    const/16 v0, 0xa

    if-le p3, v0, :cond_3

    .line 14
    iget-object p3, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p3}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->h(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 15
    iget-object p2, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->j(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)V

    .line 16
    iget-object p2, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p2, v6}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->i(Lcom/wsw/cospa/activity/ZipFileManagerActivity;Z)Z

    goto :goto_0

    :cond_3
    if-eq v2, v3, :cond_4

    if-ne v2, v5, :cond_5

    :cond_4
    if-lez p2, :cond_5

    .line 17
    iget-object p2, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->h(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 18
    iget-object p2, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->j(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)V

    .line 19
    iget-object p2, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p2, v6}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->i(Lcom/wsw/cospa/activity/ZipFileManagerActivity;Z)Z

    :cond_5
    :goto_0
    if-lez v1, :cond_6

    sub-int/2addr v1, v4

    if-gt p1, v1, :cond_6

    .line 20
    iget-object p2, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->d(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->if(I)Ljava/util/zip/ZipEntry;

    move-result-object p2

    .line 21
    iget-object p3, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p3}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->k(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)I

    move-result p3

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    add-int/2addr p1, v4

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->l(Lcom/wsw/cospa/activity/ZipFileManagerActivity;I)I

    .line 23
    iget-object v0, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    iget-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mSeekBarScroll:Lcom/wsw/cospa/widget/view/ReverseSeekBar;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->d(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMax(I)V

    .line 24
    iget-object v0, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mSeekBarScroll:Lcom/wsw/cospa/widget/view/ReverseSeekBar;

    invoke-virtual {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V

    new-array v0, v3, [Ljava/lang/Object;

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v6

    iget-object p1, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->d(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->getItemCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "%d/%d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->m()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u7ae0\u8282\u540d\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onScrolled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v0, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mHeadTitleRight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p1, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->statusChapterText:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p1, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p1, p2}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->n(Lcom/wsw/cospa/activity/ZipFileManagerActivity;Ljava/util/zip/ZipEntry;)Ljava/util/zip/ZipEntry;

    .line 30
    iget-object p1, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->k(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)I

    move-result p1

    if-eq p3, p1, :cond_6

    .line 31
    iget-object p1, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p1, v4}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->f(Lcom/wsw/cospa/activity/ZipFileManagerActivity;Z)Z

    .line 32
    iget-object p1, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p1, v4}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->i(Lcom/wsw/cospa/activity/ZipFileManagerActivity;Z)Z

    :cond_6
    return-void
.end method
