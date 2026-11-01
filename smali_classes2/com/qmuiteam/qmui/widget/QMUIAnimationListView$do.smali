.class Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$do;
.super Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->goto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic if:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$do;->if:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$else;-><init>(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$do;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$do;->if:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->do(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;)Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;->notifyDataSetChanged()V

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$do;->if:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$do$do;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$do$do;-><init>(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$do;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method
