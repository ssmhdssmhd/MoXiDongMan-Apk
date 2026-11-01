.class Lcom/qmuiteam/qmui/widget/pullRefreshLayout/QMUIPullRefreshLayout$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/pullRefreshLayout/QMUIPullRefreshLayout;->setToRefreshDirectly(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/widget/pullRefreshLayout/QMUIPullRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/pullRefreshLayout/QMUIPullRefreshLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/pullRefreshLayout/QMUIPullRefreshLayout$do;->do:Lcom/qmuiteam/qmui/widget/pullRefreshLayout/QMUIPullRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullRefreshLayout/QMUIPullRefreshLayout$do;->do:Lcom/qmuiteam/qmui/widget/pullRefreshLayout/QMUIPullRefreshLayout;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/pullRefreshLayout/QMUIPullRefreshLayout;->do(Lcom/qmuiteam/qmui/widget/pullRefreshLayout/QMUIPullRefreshLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/pullRefreshLayout/QMUIPullRefreshLayout;->setTargetViewToTop(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullRefreshLayout/QMUIPullRefreshLayout$do;->do:Lcom/qmuiteam/qmui/widget/pullRefreshLayout/QMUIPullRefreshLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/pullRefreshLayout/QMUIPullRefreshLayout;->switch()V

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullRefreshLayout/QMUIPullRefreshLayout$do;->do:Lcom/qmuiteam/qmui/widget/pullRefreshLayout/QMUIPullRefreshLayout;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/widget/pullRefreshLayout/QMUIPullRefreshLayout;->if(Lcom/qmuiteam/qmui/widget/pullRefreshLayout/QMUIPullRefreshLayout;I)I

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/pullRefreshLayout/QMUIPullRefreshLayout$do;->do:Lcom/qmuiteam/qmui/widget/pullRefreshLayout/QMUIPullRefreshLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
