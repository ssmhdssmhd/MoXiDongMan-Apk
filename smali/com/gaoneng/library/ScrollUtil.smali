.class public Lcom/gaoneng/library/ScrollUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaoneng/library/ScrollUtil$ScrollToTopListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Landroid/view/View;Lcom/gaoneng/library/ScrollUtil$ScrollToTopListener;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Landroid/widget/AbsListView;

    invoke-static {p0, p1}, Lcom/gaoneng/library/ScrollUtil;->if(Landroid/widget/AbsListView;Lcom/gaoneng/library/ScrollUtil$ScrollToTopListener;)V

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 4
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, p1}, Lcom/gaoneng/library/ScrollUtil;->for(Landroidx/recyclerview/widget/RecyclerView;Lcom/gaoneng/library/ScrollUtil$ScrollToTopListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static for(Landroidx/recyclerview/widget/RecyclerView;Lcom/gaoneng/library/ScrollUtil$ScrollToTopListener;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 2
    new-instance v0, Lcom/gaoneng/library/ScrollUtil$if;

    invoke-direct {v0, p1}, Lcom/gaoneng/library/ScrollUtil$if;-><init>(Lcom/gaoneng/library/ScrollUtil$ScrollToTopListener;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static if(Landroid/widget/AbsListView;Lcom/gaoneng/library/ScrollUtil$ScrollToTopListener;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(II)V

    .line 2
    new-instance v0, Lcom/gaoneng/library/ScrollUtil$do;

    invoke-direct {v0, p0, p1}, Lcom/gaoneng/library/ScrollUtil$do;-><init>(Landroid/widget/AbsListView;Lcom/gaoneng/library/ScrollUtil$ScrollToTopListener;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
