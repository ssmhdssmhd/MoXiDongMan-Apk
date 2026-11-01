.class public Landroid/support/v4/zy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFooterFinish(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;Z)V
    .locals 0

    return-void
.end method

.method public onFooterMoving(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;ZFIII)V
    .locals 0

    return-void
.end method

.method public onFooterReleased(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;II)V
    .locals 0

    return-void
.end method

.method public onFooterStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;II)V
    .locals 0

    return-void
.end method

.method public onHeaderFinish(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;Z)V
    .locals 0

    return-void
.end method

.method public onHeaderMoving(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;ZFIII)V
    .locals 0

    return-void
.end method

.method public onHeaderReleased(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)V
    .locals 0

    return-void
.end method

.method public onHeaderStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)V
    .locals 0

    return-void
.end method

.method public onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Landroid/support/v4/qm1;Landroid/support/v4/qm1;)V
    .locals 0
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/qm1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v4/qm1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
