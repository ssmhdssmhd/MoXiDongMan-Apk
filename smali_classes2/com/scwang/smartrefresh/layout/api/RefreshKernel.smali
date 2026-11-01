.class public interface abstract Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract animSpinner(I)Landroid/animation/ValueAnimator;
.end method

.method public abstract finishTwoLevel()Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
.end method

.method public abstract getRefreshContent()Lcom/scwang/smartrefresh/layout/api/RefreshContent;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
.end method

.method public abstract requestDefaultTranslationContentFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract requestDrawBackgroundFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract requestFloorDuration(I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
.end method

.method public abstract requestNeedTouchEventFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract requestRemeasureHeightFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .param p1    # Landroid/support/v4/qm1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startTwoLevel(Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
.end method
