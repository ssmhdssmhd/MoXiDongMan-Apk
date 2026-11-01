.class Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->this()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$if;->do:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$if;->do:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;->for(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;J)J

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$if;->do:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method
