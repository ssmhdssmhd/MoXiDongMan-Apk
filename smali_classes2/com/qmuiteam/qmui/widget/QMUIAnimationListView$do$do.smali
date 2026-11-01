.class Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$do;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$do;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$do$do;->do:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$do$do;->do:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$do;

    iget-object v0, v0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$do;->if:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$do$do;->do:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$do;

    iget-object v0, v0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$do;->if:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->if(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;)V

    const/4 v0, 0x1

    return v0
.end method
