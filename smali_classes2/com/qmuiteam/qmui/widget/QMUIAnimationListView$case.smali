.class Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$case;
.super Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->else(Landroid/view/View;ZJZ)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic for:Z

.field public final synthetic if:Ljava/lang/ref/WeakReference;

.field public final synthetic new:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;Ljava/lang/ref/WeakReference;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$case;->new:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$case;->if:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$case;->for:Z

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$else;-><init>(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$do;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$case;->if:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$case;->if:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$case;->for:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method
