.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final$do;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->startTwoLevel(Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final$do;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final$do;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$final;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v0, Landroid/support/v4/qm1;->TwoLevel:Landroid/support/v4/qm1;

    invoke-interface {p1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    return-void
.end method
