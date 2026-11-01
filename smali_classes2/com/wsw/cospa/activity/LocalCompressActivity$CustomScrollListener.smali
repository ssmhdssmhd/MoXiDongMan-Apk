.class public Lcom/wsw/cospa/activity/LocalCompressActivity$CustomScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/activity/LocalCompressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomScrollListener"
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/LocalCompressActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalCompressActivity;

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
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalCompressActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/LocalCompressActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalCompressActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/LocalCompressActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalCompressActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->m()V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalCompressActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->synchronized(Lcom/wsw/cospa/activity/LocalCompressActivity;)Lcom/wsw/cospa/widget/MenuSettingDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalCompressActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->synchronized(Lcom/wsw/cospa/activity/LocalCompressActivity;)Lcom/wsw/cospa/widget/MenuSettingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalCompressActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->synchronized(Lcom/wsw/cospa/activity/LocalCompressActivity;)Lcom/wsw/cospa/widget/MenuSettingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->dismiss()V

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalCompressActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->m()V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalCompressActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->n()V

    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalCompressActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->a(Lcom/wsw/cospa/activity/LocalCompressActivity;)Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 5
    iget-object p2, p0, Lcom/wsw/cospa/activity/LocalCompressActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalCompressActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/LocalCompressActivity;->f(Lcom/wsw/cospa/activity/LocalCompressActivity;)Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->getItemCount()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    if-gt p1, p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/wsw/cospa/activity/LocalCompressActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalCompressActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/LocalCompressActivity;->f(Lcom/wsw/cospa/activity/LocalCompressActivity;)Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->if(I)Ljava/util/zip/ZipEntry;

    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalCompressActivity;

    iget-object v1, v0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mSeekBarScroll:Lcom/wsw/cospa/widget/view/ReverseSeekBar;

    invoke-static {v0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->f(Lcom/wsw/cospa/activity/LocalCompressActivity;)Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMax(I)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalCompressActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mSeekBarScroll:Lcom/wsw/cospa/widget/view/ReverseSeekBar;

    add-int/2addr p1, p3

    invoke-virtual {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalCompressActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->f(Lcom/wsw/cospa/activity/LocalCompressActivity;)Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->getItemCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p3

    const-string p1, "%d/%d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object p3, p0, Lcom/wsw/cospa/activity/LocalCompressActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalCompressActivity;

    iget-object p3, p3, Lcom/wsw/cospa/activity/LocalCompressActivity;->mHeadTitleRight:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalCompressActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/LocalCompressActivity;->statusChapterText:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/LocalCompressActivity;

    iget-object p2, p1, Lcom/wsw/cospa/activity/LocalCompressActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    iget-object p1, p1, Lcom/wsw/cospa/activity/LocalCompressActivity;->switch:Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->initData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
