.class Lcom/wsw/cospa/activity/FindCategoryActivity$do;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/FindCategoryActivity;->static()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Lcom/wsw/cospa/vo/FindParentVo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/FindCategoryActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/FindCategoryActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/FindCategoryActivity$do;->do:Lcom/wsw/cospa/activity/FindCategoryActivity;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/wsw/cospa/vo/FindParentVo;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/vo/FindParentVo;->getChildVoList()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/FindCategoryActivity$do;->do:Lcom/wsw/cospa/activity/FindCategoryActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/FindCategoryActivity;->native(Lcom/wsw/cospa/activity/FindCategoryActivity;)Lcom/wsw/cospa/adapter/CustomPagerAdapter;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 5
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wsw/cospa/vo/FindChildVo;

    if-eqz v5, :cond_1

    .line 6
    invoke-virtual {v5}, Lcom/wsw/cospa/vo/FindChildVo;->getKindName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v6, p0, Lcom/wsw/cospa/activity/FindCategoryActivity$do;->do:Lcom/wsw/cospa/activity/FindCategoryActivity;

    invoke-static {v6}, Lcom/wsw/cospa/activity/FindCategoryActivity;->return(Lcom/wsw/cospa/activity/FindCategoryActivity;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v4, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    invoke-static {p1, v5, v7}, Lcom/wsw/cospa/fragment/FindColumnFragment;->private(Lcom/wsw/cospa/vo/FindParentVo;Lcom/wsw/cospa/vo/FindChildVo;Z)Lcom/wsw/cospa/fragment/FindColumnFragment;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/activity/FindCategoryActivity$do;->do:Lcom/wsw/cospa/activity/FindCategoryActivity;

    new-instance v0, Lcom/wsw/cospa/adapter/CustomPagerAdapter;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/wsw/cospa/activity/FindCategoryActivity$do;->do:Lcom/wsw/cospa/activity/FindCategoryActivity;

    invoke-static {v4}, Lcom/wsw/cospa/activity/FindCategoryActivity;->return(Lcom/wsw/cospa/activity/FindCategoryActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/wsw/cospa/adapter/CustomPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    invoke-static {p1, v0}, Lcom/wsw/cospa/activity/FindCategoryActivity;->public(Lcom/wsw/cospa/activity/FindCategoryActivity;Lcom/wsw/cospa/adapter/CustomPagerAdapter;)Lcom/wsw/cospa/adapter/CustomPagerAdapter;

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/activity/FindCategoryActivity$do;->do:Lcom/wsw/cospa/activity/FindCategoryActivity;

    iget-object v0, p1, Lcom/wsw/cospa/activity/FindCategoryActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1}, Lcom/wsw/cospa/activity/FindCategoryActivity;->return(Lcom/wsw/cospa/activity/FindCategoryActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 10
    iget-object p1, p0, Lcom/wsw/cospa/activity/FindCategoryActivity$do;->do:Lcom/wsw/cospa/activity/FindCategoryActivity;

    iget-object v0, p1, Lcom/wsw/cospa/activity/FindCategoryActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1}, Lcom/wsw/cospa/activity/FindCategoryActivity;->native(Lcom/wsw/cospa/activity/FindCategoryActivity;)Lcom/wsw/cospa/adapter/CustomPagerAdapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 11
    iget-object p1, p0, Lcom/wsw/cospa/activity/FindCategoryActivity$do;->do:Lcom/wsw/cospa/activity/FindCategoryActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/FindCategoryActivity;->native(Lcom/wsw/cospa/activity/FindCategoryActivity;)Lcom/wsw/cospa/adapter/CustomPagerAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/wsw/cospa/adapter/CustomPagerAdapter;->if(Ljava/util/List;)V

    .line 12
    iget-object p1, p0, Lcom/wsw/cospa/activity/FindCategoryActivity$do;->do:Lcom/wsw/cospa/activity/FindCategoryActivity;

    iget-object v0, p1, Lcom/wsw/cospa/activity/FindCategoryActivity;->tabLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    iget-object p1, p1, Lcom/wsw/cospa/activity/FindCategoryActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Lcom/flyco/tablayout/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 13
    iget-object p1, p0, Lcom/wsw/cospa/activity/FindCategoryActivity$do;->do:Lcom/wsw/cospa/activity/FindCategoryActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/FindCategoryActivity;->tabLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    new-instance v0, Lcom/wsw/cospa/activity/FindCategoryActivity$do$do;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/FindCategoryActivity$do$do;-><init>(Lcom/wsw/cospa/activity/FindCategoryActivity$do;)V

    invoke-virtual {p1, v0}, Lcom/flyco/tablayout/SlidingTabLayout;->setOnTabSelectListener(Lcom/flyco/tablayout/listener/OnTabSelectListener;)V

    goto :goto_4

    .line 14
    :cond_3
    iget-object v1, p0, Lcom/wsw/cospa/activity/FindCategoryActivity$do;->do:Lcom/wsw/cospa/activity/FindCategoryActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/FindCategoryActivity;->return(Lcom/wsw/cospa/activity/FindCategoryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 16
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 17
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wsw/cospa/vo/FindChildVo;

    if-eqz v5, :cond_5

    .line 18
    invoke-virtual {v5}, Lcom/wsw/cospa/vo/FindChildVo;->getKindName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v6, p0, Lcom/wsw/cospa/activity/FindCategoryActivity$do;->do:Lcom/wsw/cospa/activity/FindCategoryActivity;

    invoke-static {v6}, Lcom/wsw/cospa/activity/FindCategoryActivity;->return(Lcom/wsw/cospa/activity/FindCategoryActivity;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v4, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    invoke-static {p1, v5, v7}, Lcom/wsw/cospa/fragment/FindColumnFragment;->private(Lcom/wsw/cospa/vo/FindParentVo;Lcom/wsw/cospa/vo/FindChildVo;Z)Lcom/wsw/cospa/fragment/FindColumnFragment;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 20
    :cond_6
    iget-object p1, p0, Lcom/wsw/cospa/activity/FindCategoryActivity$do;->do:Lcom/wsw/cospa/activity/FindCategoryActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/FindCategoryActivity;->native(Lcom/wsw/cospa/activity/FindCategoryActivity;)Lcom/wsw/cospa/adapter/CustomPagerAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/wsw/cospa/adapter/CustomPagerAdapter;->if(Ljava/util/List;)V

    .line 21
    iget-object p1, p0, Lcom/wsw/cospa/activity/FindCategoryActivity$do;->do:Lcom/wsw/cospa/activity/FindCategoryActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/FindCategoryActivity;->tabLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {p1, v3, v3}, Lcom/flyco/tablayout/SlidingTabLayout;->while(IZ)V

    .line 22
    iget-object p1, p0, Lcom/wsw/cospa/activity/FindCategoryActivity$do;->do:Lcom/wsw/cospa/activity/FindCategoryActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/FindCategoryActivity;->tabLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {p1}, Lcom/flyco/tablayout/SlidingTabLayout;->final()V

    :goto_4
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/vo/FindParentVo;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/FindCategoryActivity$do;->do(Lcom/wsw/cospa/vo/FindParentVo;)V

    return-void
.end method
