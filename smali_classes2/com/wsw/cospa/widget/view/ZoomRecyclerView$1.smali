.class Lcom/wsw/cospa/widget/view/ZoomRecyclerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->newZoomAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/wsw/cospa/widget/view/ZoomRecyclerView;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/view/ZoomRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView$1;->this$0:Lcom/wsw/cospa/widget/view/ZoomRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView$1;->this$0:Lcom/wsw/cospa/widget/view/ZoomRecyclerView;

    const-string v1, "scale"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mScaleFactor:F

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView$1;->this$0:Lcom/wsw/cospa/widget/view/ZoomRecyclerView;

    const-string v1, "tranX"

    .line 3
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const-string v2, "tranY"

    .line 4
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 5
    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->access$200(Lcom/wsw/cospa/widget/view/ZoomRecyclerView;FF)V

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView$1;->this$0:Lcom/wsw/cospa/widget/view/ZoomRecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
