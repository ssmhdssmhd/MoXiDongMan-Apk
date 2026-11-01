.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto$do$do;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto$do;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto$do;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto$do$do;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto$do;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto$do$do;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto$do;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto$do;->if:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto;->try:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    .line 2
    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto;->for:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setNoMoreData(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto$do$do;->do:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto$do;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto$do;->if:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$goto;->try:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Landroid/support/v4/qm1;

    sget-object v1, Landroid/support/v4/qm1;->LoadFinish:Landroid/support/v4/qm1;

    if-ne v0, v1, :cond_1

    .line 5
    sget-object v0, Landroid/support/v4/qm1;->None:Landroid/support/v4/qm1;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->const(Landroid/support/v4/qm1;)V

    :cond_1
    return-void
.end method
