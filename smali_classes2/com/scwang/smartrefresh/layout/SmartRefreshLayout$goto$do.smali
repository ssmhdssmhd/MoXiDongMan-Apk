.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic if:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto$do;->if:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto;

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto$do;->do:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto$do;->if:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto;->try:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->synchronized:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto$do;->do:I

    if-gez v1, :cond_0

    .line 2
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    invoke-interface {v1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->scrollContentWhenFinished(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 3
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 4
    :cond_1
    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto$do$do;

    invoke-direct {v1, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto$do$do;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto$do;)V

    .line 5
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto$do;->if:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto;

    iget-object v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto;->try:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v5, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->if:I

    const/4 v6, 0x0

    if-lez v5, :cond_2

    .line 6
    iget-object v0, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v6}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_3

    :cond_2
    if-nez v0, :cond_6

    if-nez v5, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    iget-boolean v0, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto;->for:Z

    if-eqz v0, :cond_5

    iget-boolean v0, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->volatile:Z

    if-eqz v0, :cond_5

    .line 8
    iget v0, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    neg-int v3, v0

    if-lt v5, v3, :cond_4

    .line 9
    sget-object v0, Landroid/support/v4/qm1;->None:Landroid/support/v4/qm1;

    invoke-virtual {v4, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    goto :goto_2

    .line 10
    :cond_4
    iget-object v3, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    neg-int v0, v0

    invoke-interface {v3, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_3

    .line 11
    :cond_5
    iget-object v0, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v6}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_3

    .line 12
    :cond_6
    :goto_1
    iget-object v0, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto$do;->if:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto;->try:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    .line 15
    :cond_7
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto$do;->if:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto;->try:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v6, v6}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 16
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto$do;->if:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto;->try:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v3, Landroid/support/v4/qm1;->None:Landroid/support/v4/qm1;

    invoke-interface {v0, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :goto_2
    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_8

    .line 17
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4

    .line 18
    :cond_8
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :goto_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
