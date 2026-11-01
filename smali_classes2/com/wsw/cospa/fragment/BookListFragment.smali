.class public Lcom/wsw/cospa/fragment/BookListFragment;
.super Lcom/wsw/cospa/base/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/event/RefreshBookGroupMessageObserver;


# instance fields
.field private break:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private catch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicShelfGroupBean;",
            ">;"
        }
    .end annotation
.end field

.field private class:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public error_view:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016a
    .end annotation
.end field

.field private goto:Lcom/wsw/cospa/adapter/CustomPagerAdapter;

.field public ivMoreChannel:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090244
    .end annotation
.end field

.field public mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a2
    .end annotation
.end field

.field public mLoadingRootView:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a1
    .end annotation
.end field

.field public mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ac
    .end annotation
.end field

.field public tabLayout:Lcom/flyco/tablayout/SlidingTabLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09040f
    .end annotation
.end field

.field private this:Lcom/wsw/cospa/activity/HomeActivity;

.field public tvErrorView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016b
    .end annotation
.end field

.field public tvRetry:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a7
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->break:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->class:Ljava/util/List;

    return-void
.end method

.method private synthetic catch(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_shelfGroup"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookListFragment;->catch:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, v0, p1}, Lcom/wsw/cospa/activity/AddBookShelfActivity;->implements(Landroidx/fragment/app/Fragment;ZLjava/lang/String;)V

    return-void
.end method

.method public static class()Lcom/wsw/cospa/fragment/BookListFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/fragment/BookListFragment;

    invoke-direct {v0}, Lcom/wsw/cospa/fragment/BookListFragment;-><init>()V

    return-object v0
.end method

.method public static synthetic else(Lcom/wsw/cospa/fragment/BookListFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/BookListFragment;->catch(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic goto(Lcom/wsw/cospa/fragment/BookListFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->break:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public break()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/BookListFragment;->this()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->class:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseFragment;->new:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "show_all_category"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookListFragment;->goto:Lcom/wsw/cospa/adapter/CustomPagerAdapter;

    const-wide/16 v3, 0x0

    const-string v5, "\u5168\u90e8"

    const/4 v6, 0x0

    if-nez v1, :cond_4

    .line 5
    invoke-static {}, Lcom/wsw/cospa/dao/do;->h()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/fragment/BookListFragment;->catch:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->class:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->break:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lcom/wsw/cospa/fragment/BookShelfFragment;->n(J)Lcom/wsw/cospa/fragment/BookShelfFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookListFragment;->catch:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookListFragment;->catch:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    .line 10
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    iget-object v3, p0, Lcom/wsw/cospa/fragment/BookListFragment;->class:Ljava/util/List;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v3, p0, Lcom/wsw/cospa/fragment/BookListFragment;->break:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/wsw/cospa/fragment/BookShelfFragment;->n(J)Lcom/wsw/cospa/fragment/BookShelfFragment;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_2
    new-instance v0, Lcom/wsw/cospa/adapter/CustomPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v3, p0, Lcom/wsw/cospa/fragment/BookListFragment;->break:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v3}, Lcom/wsw/cospa/adapter/CustomPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->goto:Lcom/wsw/cospa/adapter/CustomPagerAdapter;

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->break:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookListFragment;->break:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookListFragment;->goto:Lcom/wsw/cospa/adapter/CustomPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->goto:Lcom/wsw/cospa/adapter/CustomPagerAdapter;

    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookListFragment;->class:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/CustomPagerAdapter;->if(Ljava/util/List;)V

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->tabLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookListFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/flyco/tablayout/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "book_shelf_current_item"

    invoke-virtual {v0, v1, v6}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    .line 20
    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookListFragment;->tabLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {v1, v0}, Lcom/flyco/tablayout/SlidingTabLayout;->setCurrentTab(I)V

    goto :goto_2

    .line 21
    :cond_4
    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookListFragment;->break:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz v0, :cond_5

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->class:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->break:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lcom/wsw/cospa/fragment/BookShelfFragment;->n(J)Lcom/wsw/cospa/fragment/BookShelfFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_5
    invoke-static {}, Lcom/wsw/cospa/dao/do;->h()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->catch:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    .line 26
    :goto_1
    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookListFragment;->catch:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 27
    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookListFragment;->catch:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    .line 28
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getEnable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 29
    iget-object v2, p0, Lcom/wsw/cospa/fragment/BookListFragment;->class:Ljava/util/List;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v2, p0, Lcom/wsw/cospa/fragment/BookListFragment;->break:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/wsw/cospa/fragment/BookShelfFragment;->n(J)Lcom/wsw/cospa/fragment/BookShelfFragment;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 31
    :cond_7
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->goto:Lcom/wsw/cospa/adapter/CustomPagerAdapter;

    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookListFragment;->class:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/CustomPagerAdapter;->if(Ljava/util/List;)V

    .line 32
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->tabLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {v0, v6, v6}, Lcom/flyco/tablayout/SlidingTabLayout;->while(IZ)V

    .line 33
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->tabLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {v0}, Lcom/flyco/tablayout/SlidingTabLayout;->final()V

    .line 34
    :goto_2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/wsw/cospa/fragment/BookListFragment$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/fragment/BookListFragment$do;-><init>(Lcom/wsw/cospa/fragment/BookListFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 35
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->tabLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    new-instance v1, Lcom/wsw/cospa/fragment/BookListFragment$if;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/fragment/BookListFragment$if;-><init>(Lcom/wsw/cospa/fragment/BookListFragment;)V

    invoke-virtual {v0, v1}, Lcom/flyco/tablayout/SlidingTabLayout;->setOnTabSelectListener(Lcom/flyco/tablayout/listener/OnTabSelectListener;)V

    return-void
.end method

.method public case()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->ivMoreChannel:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/support/v4/va;

    invoke-direct {v1, p0}, Landroid/support/v4/va;-><init>(Lcom/wsw/cospa/fragment/BookListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public const(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->error_view:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->tvErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public if()I
    .locals 1

    const v0, 0x7f0c0080

    return v0
.end method

.method public new()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/jm1;->case()Landroid/support/v4/jm1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/vz0;->for(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/BookListFragment;->break()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    const/16 p2, 0x2775

    if-ne p1, p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/BookListFragment;->break()V

    goto :goto_0

    :cond_0
    const/16 p2, 0x2776

    if-ne p1, p2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/BookListFragment;->break()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 4
    check-cast p1, Lcom/wsw/cospa/activity/HomeActivity;

    iput-object p1, p0, Lcom/wsw/cospa/fragment/BookListFragment;->this:Lcom/wsw/cospa/activity/HomeActivity;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/wsw/cospa/base/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    check-cast p1, Lcom/wsw/cospa/activity/HomeActivity;

    iput-object p1, p0, Lcom/wsw/cospa/fragment/BookListFragment;->this:Lcom/wsw/cospa/activity/HomeActivity;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/jm1;->case()Landroid/support/v4/jm1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/vz0;->new(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Lcom/wsw/cospa/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onRefreshBookGroupMessage()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/BookListFragment;->break()V

    return-void
.end method

.method public this()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->mLoadingRootView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookListFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public try()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
