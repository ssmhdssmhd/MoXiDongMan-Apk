.class Lcom/flyco/tablayout/SlidingTabLayout$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyco/tablayout/SlidingTabLayout;->case(ILjava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/flyco/tablayout/SlidingTabLayout;


# direct methods
.method public constructor <init>(Lcom/flyco/tablayout/SlidingTabLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flyco/tablayout/SlidingTabLayout$do;->do:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout$do;->do:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-static {v0}, Lcom/flyco/tablayout/SlidingTabLayout;->do(Lcom/flyco/tablayout/SlidingTabLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout$do;->do:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-static {v0}, Lcom/flyco/tablayout/SlidingTabLayout;->if(Lcom/flyco/tablayout/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout$do;->do:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-static {v0}, Lcom/flyco/tablayout/SlidingTabLayout;->for(Lcom/flyco/tablayout/SlidingTabLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout$do;->do:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-static {v0}, Lcom/flyco/tablayout/SlidingTabLayout;->if(Lcom/flyco/tablayout/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout$do;->do:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-static {v0}, Lcom/flyco/tablayout/SlidingTabLayout;->if(Lcom/flyco/tablayout/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout$do;->do:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-static {v0}, Lcom/flyco/tablayout/SlidingTabLayout;->new(Lcom/flyco/tablayout/SlidingTabLayout;)Lcom/flyco/tablayout/listener/OnTabSelectListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout$do;->do:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-static {v0}, Lcom/flyco/tablayout/SlidingTabLayout;->new(Lcom/flyco/tablayout/SlidingTabLayout;)Lcom/flyco/tablayout/listener/OnTabSelectListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/flyco/tablayout/listener/OnTabSelectListener;->onTabSelect(I)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout$do;->do:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-static {v0}, Lcom/flyco/tablayout/SlidingTabLayout;->new(Lcom/flyco/tablayout/SlidingTabLayout;)Lcom/flyco/tablayout/listener/OnTabSelectListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/flyco/tablayout/SlidingTabLayout$do;->do:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-static {v0}, Lcom/flyco/tablayout/SlidingTabLayout;->new(Lcom/flyco/tablayout/SlidingTabLayout;)Lcom/flyco/tablayout/listener/OnTabSelectListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/flyco/tablayout/listener/OnTabSelectListener;->onTabReselect(I)V

    :cond_2
    :goto_1
    return-void
.end method
