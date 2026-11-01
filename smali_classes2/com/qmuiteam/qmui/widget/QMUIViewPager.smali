.class public Lcom/qmuiteam/qmui/widget/QMUIViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/IWindowInsetLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/QMUIViewPager$do;
    }
.end annotation


# static fields
.field private static final case:I = 0x64


# instance fields
.field private do:Z

.field private for:Lcom/qmuiteam/qmui/util/new;

.field private if:Z

.field private new:Z

.field private try:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUIViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->do:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->if:Z

    .line 5
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->new:Z

    const/16 p1, 0x64

    .line 6
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->try:I

    .line 7
    new-instance p1, Lcom/qmuiteam/qmui/util/new;

    invoke-direct {p1, p0, p0}, Lcom/qmuiteam/qmui/util/new;-><init>(Landroid/view/ViewGroup;Lcom/qmuiteam/qmui/widget/IWindowInsetLayout;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->for:Lcom/qmuiteam/qmui/util/new;

    return-void
.end method

.method public static synthetic do(Lcom/qmuiteam/qmui/widget/QMUIViewPager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->new:Z

    return p0
.end method

.method public static synthetic if(Lcom/qmuiteam/qmui/widget/QMUIViewPager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->try:I

    return p0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method public applySystemWindowInsets19(Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->for:Lcom/qmuiteam/qmui/util/new;

    invoke-virtual {v0, p0, p1}, Lcom/qmuiteam/qmui/util/new;->else(Landroid/view/ViewGroup;Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public applySystemWindowInsets21(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->for:Lcom/qmuiteam/qmui/util/new;

    invoke-virtual {v0, p0, p1}, Lcom/qmuiteam/qmui/util/new;->goto(Landroid/view/ViewGroup;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->applySystemWindowInsets19(Landroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public for()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->new:Z

    return v0
.end method

.method public getInfiniteRatio()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->try:I

    return v0
.end method

.method public new()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->if:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->do:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onMeasure(II)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->if:Z

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->if:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->do:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/qmuiteam/qmui/widget/QMUIPagerAdapter;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/widget/QMUIViewPager$do;

    check-cast p1, Lcom/qmuiteam/qmui/widget/QMUIPagerAdapter;

    invoke-direct {v0, p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIViewPager$do;-><init>(Lcom/qmuiteam/qmui/widget/QMUIViewPager;Lcom/qmuiteam/qmui/widget/QMUIPagerAdapter;)V

    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    :goto_0
    return-void
.end method

.method public setEnableLoop(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->new:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->new:Z

    .line 3
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setInfiniteRatio(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->try:I

    return-void
.end method

.method public setSwipeable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIViewPager;->do:Z

    return-void
.end method
