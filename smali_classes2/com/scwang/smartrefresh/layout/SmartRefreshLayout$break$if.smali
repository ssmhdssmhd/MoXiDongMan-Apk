.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$break$if;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$break;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$break;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$break;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$break$if;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$break;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$break$if;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$break;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$break;->new:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V:Landroid/animation/ValueAnimator;

    .line 3
    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v1, Landroid/support/v4/qm1;->ReleaseToLoad:Landroid/support/v4/qm1;

    if-eq v0, v1, :cond_0

    .line 4
    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {p1, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$break$if;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$break;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$break;->new:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$break;->for:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateLoading(Z)V

    :cond_1
    return-void
.end method
