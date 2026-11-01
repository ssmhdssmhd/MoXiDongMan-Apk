.class public Landroid/support/v4/ls1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;


# instance fields
.field public do:Landroid/graphics/PointF;

.field public for:Z

.field public if:Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/support/v4/ls1;->for:Z

    return-void
.end method


# virtual methods
.method public canLoadMore(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/ls1;->if:Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;->canLoadMore(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/ls1;->do:Landroid/graphics/PointF;

    iget-boolean v1, p0, Landroid/support/v4/ls1;->for:Z

    invoke-static {p1, v0, v1}, Landroid/support/v4/i02;->do(Landroid/view/View;Landroid/graphics/PointF;Z)Z

    move-result p1

    return p1
.end method

.method public canRefresh(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ls1;->if:Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;->canRefresh(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/ls1;->do:Landroid/graphics/PointF;

    invoke-static {p1, v0}, Landroid/support/v4/i02;->if(Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method
