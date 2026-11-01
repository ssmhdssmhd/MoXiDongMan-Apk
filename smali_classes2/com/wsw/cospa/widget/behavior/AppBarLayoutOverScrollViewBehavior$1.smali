.class Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->recovery(Lcom/google/android/material/appbar/AppBarLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;

.field public final synthetic val$abl:Lcom/google/android/material/appbar/AppBarLayout;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior$1;->this$0:Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;

    iput-object p2, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior$1;->val$abl:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior$1;->this$0:Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;

    invoke-static {v1}, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->access$000(Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior$1;->this$0:Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;

    invoke-static {v1}, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->access$000(Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior$1;->this$0:Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;

    invoke-static {v1}, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->access$100(Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior$1;->this$0:Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;

    invoke-static {v1}, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->access$100(Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior$1;->this$0:Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;

    invoke-static {v1}, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->access$100(Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior$1;->val$abl:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior$1;->this$0:Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;

    invoke-static {v1}, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->access$200(Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior$1;->this$0:Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;

    invoke-static {v2}, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->access$200(Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;)I

    move-result v2

    iget-object v3, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior$1;->this$0:Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;

    invoke-static {v3}, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->access$300(Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float v2, v2, p1

    sub-float/2addr v1, v2

    float-to-int p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBottom(I)V

    return-void
.end method
