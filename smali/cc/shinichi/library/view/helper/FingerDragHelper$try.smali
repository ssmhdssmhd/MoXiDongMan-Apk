.class Lcc/shinichi/library/view/helper/FingerDragHelper$try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/shinichi/library/view/helper/FingerDragHelper;->final()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcc/shinichi/library/view/helper/FingerDragHelper;


# direct methods
.method public constructor <init>(Lcc/shinichi/library/view/helper/FingerDragHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper$try;->do:Lcc/shinichi/library/view/helper/FingerDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper$try;->do:Lcc/shinichi/library/view/helper/FingerDragHelper;

    invoke-static {v0}, Lcc/shinichi/library/view/helper/FingerDragHelper;->new(Lcc/shinichi/library/view/helper/FingerDragHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper$try;->do:Lcc/shinichi/library/view/helper/FingerDragHelper;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcc/shinichi/library/view/helper/FingerDragHelper;->else(Lcc/shinichi/library/view/helper/FingerDragHelper;F)F

    .line 3
    iget-object p1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper$try;->do:Lcc/shinichi/library/view/helper/FingerDragHelper;

    invoke-static {p1}, Lcc/shinichi/library/view/helper/FingerDragHelper;->case(Lcc/shinichi/library/view/helper/FingerDragHelper;)F

    move-result v0

    invoke-static {p1, v0}, Lcc/shinichi/library/view/helper/FingerDragHelper;->goto(Lcc/shinichi/library/view/helper/FingerDragHelper;F)F

    .line 4
    iget-object p1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper$try;->do:Lcc/shinichi/library/view/helper/FingerDragHelper;

    invoke-static {p1}, Lcc/shinichi/library/view/helper/FingerDragHelper;->case(Lcc/shinichi/library/view/helper/FingerDragHelper;)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    invoke-static {p1, v0}, Lcc/shinichi/library/view/nine/do;->throws(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
