.class Lcc/shinichi/library/view/helper/FingerDragHelper$case;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    iput-object p1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper$case;->do:Lcc/shinichi/library/view/helper/FingerDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper$case;->do:Lcc/shinichi/library/view/helper/FingerDragHelper;

    invoke-static {p1}, Lcc/shinichi/library/view/helper/FingerDragHelper;->new(Lcc/shinichi/library/view/helper/FingerDragHelper;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper$case;->do:Lcc/shinichi/library/view/helper/FingerDragHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcc/shinichi/library/view/helper/FingerDragHelper;->else(Lcc/shinichi/library/view/helper/FingerDragHelper;F)F

    .line 3
    iget-object p1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper$case;->do:Lcc/shinichi/library/view/helper/FingerDragHelper;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 4
    iget-object p1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper$case;->do:Lcc/shinichi/library/view/helper/FingerDragHelper;

    invoke-static {p1}, Lcc/shinichi/library/view/helper/FingerDragHelper;->do(Lcc/shinichi/library/view/helper/FingerDragHelper;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper$case;->do:Lcc/shinichi/library/view/helper/FingerDragHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcc/shinichi/library/view/helper/FingerDragHelper;->try(Lcc/shinichi/library/view/helper/FingerDragHelper;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper$case;->do:Lcc/shinichi/library/view/helper/FingerDragHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcc/shinichi/library/view/helper/FingerDragHelper;->try(Lcc/shinichi/library/view/helper/FingerDragHelper;Z)Z

    return-void
.end method
