.class public Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/activity/ChapterBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomScrollListener"
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 8
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_7

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->K(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)I

    move-result p2

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->R(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Z

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->S(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x0

    if-gt v2, v0, :cond_2

    .line 5
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->T(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object v4, v2, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast v4, Lcom/wsw/cospa/presenter/do;

    invoke-static {v2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->V(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/wsw/cospa/presenter/do;->class(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 7
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v2, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->Y(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Z)Z

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->T(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)I

    move-result v2

    iget-object v4, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v4}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->Z(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterListSize()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, p1

    if-eq v2, v4, :cond_4

    .line 9
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object v4, v2, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast v4, Lcom/wsw/cospa/presenter/do;

    invoke-static {v2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->a0(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/wsw/cospa/presenter/do;->catch(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 10
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v2, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->Y(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Z)Z

    goto/16 :goto_0

    :cond_2
    if-eqz v1, :cond_4

    .line 11
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->S(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->x(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    move-result-object v2

    if-eqz v2, :cond_4

    if-ne p2, p1, :cond_4

    .line 12
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->x(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 13
    iget-object v4, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v4}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->x(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v4

    .line 14
    iget-object v5, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v5}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->S(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->default(I)Lcom/wsw/cospa/bean/ComicContentImgBean;

    move-result-object v5

    .line 15
    iget-object v6, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v6}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->S(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->default(I)Lcom/wsw/cospa/bean/ComicContentImgBean;

    move-result-object v6

    .line 16
    iget-object v7, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v7}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->T(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)I

    .line 17
    iget-object v7, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-virtual {v5}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getChapterIndex()I

    move-result v5

    invoke-static {v7, v5}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->U(Lcom/wsw/cospa/activity/ChapterBrowseActivity;I)I

    .line 18
    iget-object v5, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v5}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->y(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)I

    .line 19
    iget-object v5, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-virtual {v6}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getChapterIndex()I

    move-result v6

    invoke-static {v5, v6}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->z(Lcom/wsw/cospa/activity/ChapterBrowseActivity;I)I

    .line 20
    iget-object v5, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v5, v3}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->Y(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Z)Z

    .line 21
    iget-object v5, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v5}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->X(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 22
    iget-object v5, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v5}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->S(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->getItemCount()I

    move-result v5

    sub-int/2addr v5, p1

    if-ne v4, v5, :cond_3

    .line 23
    iget-object v4, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object v5, v4, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast v5, Lcom/wsw/cospa/presenter/do;

    invoke-static {v4}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->a0(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/wsw/cospa/presenter/do;->catch(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 24
    iget-object v4, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v4, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->Y(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Z)Z

    :cond_3
    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    .line 25
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object v4, v2, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast v4, Lcom/wsw/cospa/presenter/do;

    invoke-static {v2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->V(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/wsw/cospa/presenter/do;->class(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 26
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v2, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->Y(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Z)Z

    :cond_4
    :goto_0
    if-eq p2, v0, :cond_5

    const/4 v0, 0x3

    if-ne p2, v0, :cond_b

    .line 27
    :cond_5
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->x(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    .line 28
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->x(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 29
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v2, v3}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->Y(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Z)Z

    .line 30
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->X(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 31
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->S(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, p1

    if-ne v0, v2, :cond_6

    .line 32
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object v2, v0, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast v2, Lcom/wsw/cospa/presenter/do;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->a0(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/wsw/cospa/presenter/do;->catch(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 33
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->Y(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Z)Z

    :cond_6
    if-nez p2, :cond_b

    if-nez v1, :cond_b

    .line 34
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object v0, p2, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast v0, Lcom/wsw/cospa/presenter/do;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->V(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/wsw/cospa/presenter/do;->class(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 35
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p2, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->Y(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Z)Z

    goto :goto_1

    .line 36
    :cond_7
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->v(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->v(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->isShow()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 37
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->v(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->dismiss()V

    .line 38
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->e0()V

    .line 39
    :cond_8
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 40
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    .line 41
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->e0()V

    .line 42
    :cond_9
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->w(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/widget/MenuSettingDialog;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->w(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/widget/MenuSettingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 43
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->w(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/widget/MenuSettingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->dismiss()V

    .line 44
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->e0()V

    .line 45
    :cond_a
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->f0()V

    :cond_b
    :goto_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 10
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
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->x(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->x(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->S(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->getItemCount()I

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->K(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 8
    iget-object v5, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v5}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->x(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v2, v7, :cond_1

    if-ne v2, v6, :cond_3

    :cond_1
    if-nez p2, :cond_3

    .line 9
    iget-object v8, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v8}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->S(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->getItemCount()I

    move-result v8

    sub-int/2addr v8, v4

    if-ne v0, v8, :cond_2

    .line 10
    iget-object v8, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object v9, v8, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast v9, Lcom/wsw/cospa/presenter/do;

    invoke-static {v8}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->a0(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/wsw/cospa/presenter/do;->catch(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 11
    iget-object v8, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v8, v4}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->B(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Z)Z

    :cond_2
    if-nez p1, :cond_3

    .line 12
    iget-object v8, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object v9, v8, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast v9, Lcom/wsw/cospa/presenter/do;

    invoke-static {v8}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->V(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/wsw/cospa/presenter/do;->class(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 13
    iget-object v8, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v8, v4}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->D(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Z)Z

    :cond_3
    if-gt p1, v4, :cond_6

    const/16 v8, -0xa

    if-ne v2, v4, :cond_4

    if-ge p3, v8, :cond_4

    .line 14
    iget-object p3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p3}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->C(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 15
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object p3, p2, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast p3, Lcom/wsw/cospa/presenter/do;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->V(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/wsw/cospa/presenter/do;->class(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 16
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p2, v4}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->D(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Z)Z

    goto :goto_1

    :cond_4
    if-eq v2, v7, :cond_5

    if-ne v2, v6, :cond_9

    :cond_5
    if-ge p2, v8, :cond_9

    .line 17
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->C(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 18
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object p3, p2, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast p3, Lcom/wsw/cospa/presenter/do;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->V(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/wsw/cospa/presenter/do;->class(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 19
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p2, v4}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->D(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Z)Z

    goto :goto_1

    :cond_6
    add-int/lit8 v8, v1, -0x2

    if-lt v0, v8, :cond_9

    if-ne v2, v4, :cond_7

    const/16 v8, 0xa

    if-le p3, v8, :cond_7

    .line 20
    iget-object p3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p3}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->A(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 21
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object p3, p2, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast p3, Lcom/wsw/cospa/presenter/do;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->V(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/wsw/cospa/presenter/do;->catch(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 22
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p2, v4}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->B(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Z)Z

    goto :goto_1

    :cond_7
    if-eq v2, v7, :cond_8

    if-ne v2, v6, :cond_9

    :cond_8
    if-lez p2, :cond_9

    .line 23
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->A(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 24
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object p3, p2, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast p3, Lcom/wsw/cospa/presenter/do;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->V(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/wsw/cospa/presenter/do;->catch(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 25
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p2, v4}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->B(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Z)Z

    :cond_9
    :goto_1
    if-ne v2, v4, :cond_a

    .line 26
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->E(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)I

    move-result p2

    if-ne v5, p2, :cond_b

    :cond_a
    if-lez v1, :cond_e

    :cond_b
    if-ltz p1, :cond_e

    sub-int/2addr v1, v4

    if-gt p1, v1, :cond_e

    .line 27
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->S(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->default(I)Lcom/wsw/cospa/bean/ComicContentImgBean;

    move-result-object p1

    .line 28
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->S(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->default(I)Lcom/wsw/cospa/bean/ComicContentImgBean;

    move-result-object p2

    .line 29
    iget-object p3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p3}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->T(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)I

    move-result p3

    .line 30
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getChapterIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->U(Lcom/wsw/cospa/activity/ChapterBrowseActivity;I)I

    .line 31
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->y(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)I

    move-result v0

    .line 32
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getChapterIndex()I

    move-result p2

    invoke-static {v1, p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->z(Lcom/wsw/cospa/activity/ChapterBrowseActivity;I)I

    .line 33
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getIndexPape()I

    move-result v1

    invoke-static {p2, v1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->F(Lcom/wsw/cospa/activity/ChapterBrowseActivity;I)I

    .line 34
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getMaxPage()I

    move-result v1

    invoke-static {p2, v1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->G(Lcom/wsw/cospa/activity/ChapterBrowseActivity;I)I

    .line 35
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object p2, p2, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mSeekBarScroll:Lcom/wsw/cospa/widget/view/ReverseSeekBar;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getMaxPage()I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMax(I)V

    .line 36
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object p2, p2, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mSeekBarScroll:Lcom/wsw/cospa/widget/view/ReverseSeekBar;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getIndexPape()I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V

    .line 37
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getIndexPape()I

    move-result p2

    if-ne v2, v4, :cond_c

    .line 38
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getIndexPape()I

    move-result p2

    mul-int/lit8 v5, v5, -0x1

    invoke-static {p2, v5}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->g0(II)I

    move-result p2

    .line 39
    :cond_c
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->Z(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapterPage(Ljava/lang/Integer;)V

    .line 40
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->Z(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p2

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getChapterIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapter(Ljava/lang/Integer;)V

    .line 41
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->Z(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p2

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getChapterText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapterName(Ljava/lang/String;)V

    .line 42
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object p2, p2, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mHeadTitleRight:Landroid/widget/TextView;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getIndexPape()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getMaxPage()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "%d/%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object p2, p2, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->statusChapterText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getChapterText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object p2, p2, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getChapterContentUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->updateChapterUrl(Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->v(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    move-result-object p1

    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->T(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->refresh(I)V

    .line 46
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->Z(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p2

    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->T(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->W(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/wsw/cospa/bean/ChapterListBean;)Lcom/wsw/cospa/bean/ChapterListBean;

    .line 47
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->Z(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p2

    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->y(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->b0(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/wsw/cospa/bean/ChapterListBean;)Lcom/wsw/cospa/bean/ChapterListBean;

    .line 48
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->T(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)I

    move-result p1

    if-eq p3, p1, :cond_d

    .line 49
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p1, v3}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->D(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Z)Z

    .line 50
    :cond_d
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->y(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)I

    move-result p1

    if-eq v0, p1, :cond_e

    .line 51
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {p1, v3}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->B(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Z)Z

    :cond_e
    return-void
.end method
