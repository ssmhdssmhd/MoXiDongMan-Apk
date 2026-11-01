.class public Lcom/wsw/cospa/widget/view/CatalogLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/widget/view/FlowLayout$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/view/CatalogLayout$TagFlowAdapter;,
        Lcom/wsw/cospa/widget/view/CatalogLayout$ChapterAdapter;
    }
.end annotation


# static fields
.field private static final ANIMATION_TIME:I = 0x12c


# instance fields
.field private bookShelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

.field private isShow:Z

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mAdapter:Lcom/wsw/cospa/widget/view/CatalogLayout$ChapterAdapter;

.field private mFastScroller:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mTitle:Landroid/widget/TextView;

.field private reqWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/widget/view/CatalogLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/wsw/cospa/widget/view/CatalogLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->reqWidth:I

    return-void
.end method

.method public static synthetic access$000(Lcom/wsw/cospa/widget/view/CatalogLayout;)Lcom/wsw/cospa/bean/ComicShelfBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->bookShelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/wsw/cospa/widget/view/CatalogLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->reqWidth:I

    return p0
.end method

.method public static moveToPosition(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    if-gt p2, v0, :cond_1

    .line 3
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    :cond_1
    if-gt p2, p0, :cond_2

    sub-int/2addr p2, v0

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    :cond_2
    if-lez p2, :cond_3

    add-int/lit8 p2, p2, -0x1

    .line 6
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public initData(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->bookShelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->mAdapter:Lcom/wsw/cospa/widget/view/CatalogLayout$ChapterAdapter;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/view/CatalogLayout$ChapterAdapter;->refresh(Ljava/util/List;)V

    return-void
.end method

.method public isShow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->isShow:Z

    return v0
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->mTitle:Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/gaoneng/library/AutoScrollBackLayout;

    const v2, 0x7f0902a4

    .line 4
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0901b1

    .line 5
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    iput-object v2, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->mFastScroller:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    .line 6
    invoke-virtual {v1}, Lcom/gaoneng/library/AutoScrollBackLayout;->this()V

    .line 7
    new-instance v1, Lcom/wsw/cospa/widget/view/CatalogLayout$ChapterAdapter;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/widget/view/CatalogLayout$ChapterAdapter;-><init>(Lcom/wsw/cospa/widget/view/CatalogLayout;)V

    iput-object v1, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->mAdapter:Lcom/wsw/cospa/widget/view/CatalogLayout$ChapterAdapter;

    .line 8
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 9
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->mAdapter:Lcom/wsw/cospa/widget/view/CatalogLayout$ChapterAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->mFastScroller:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 14
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    invoke-static {}, Landroid/support/v4/j10;->goto()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->reqWidth:I

    return-void
.end method

.method public onItemClick(Landroid/view/View;ILcom/wsw/cospa/widget/view/FlowLayout;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->bookShelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object p1

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_chapter"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_shelf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v1

    iget-object v2, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->bookShelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v1

    invoke-virtual {v1, p3, p1}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3, v0, p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->y1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 p1, 0x8

    .line 7
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/view/CatalogLayout;->setVisibility(I)V

    return-void
.end method

.method public refresh(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->mAdapter:Lcom/wsw/cospa/widget/view/CatalogLayout$ChapterAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/view/CatalogLayout$ChapterAdapter;->refreshPosition(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/widget/view/CatalogLayout;->moveToPosition(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 8

    const-wide/16 v0, 0x12c

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x43700000    # 240.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    const/4 v7, 0x4

    if-eq p1, v7, :cond_1

    const/16 v7, 0x8

    if-eq p1, v7, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-super {p0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    new-instance p1, Landroid/view/animation/AnimationSet;

    invoke-direct {p1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v3

    invoke-direct {v5, v6, v6, v6, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 4
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v2, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 5
    invoke-virtual {p1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 6
    invoke-virtual {p1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9
    iput-boolean v4, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->isShow:Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-super {p0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-super {p0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 12
    new-instance p1, Landroid/view/animation/AnimationSet;

    invoke-direct {p1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 13
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v3

    invoke-direct {v4, v6, v6, v3, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 14
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v6, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 15
    invoke-virtual {p1, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 16
    invoke-virtual {p1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 18
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 19
    iput-boolean v5, p0, Lcom/wsw/cospa/widget/view/CatalogLayout;->isShow:Z

    :goto_0
    return-void
.end method
