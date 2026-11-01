.class Lcc/shinichi/library/view/helper/FingerDragHelper$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/shinichi/library/view/helper/FingerDragHelper;->this(F)V
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
    iput-object p1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper$if;->do:Lcc/shinichi/library/view/helper/FingerDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper$if;->do:Lcc/shinichi/library/view/helper/FingerDragHelper;

    invoke-static {p1}, Lcc/shinichi/library/view/helper/FingerDragHelper;->do(Lcc/shinichi/library/view/helper/FingerDragHelper;)V

    .line 2
    iget-object p1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper$if;->do:Lcc/shinichi/library/view/helper/FingerDragHelper;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 4
    iget-object v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper$if;->do:Lcc/shinichi/library/view/helper/FingerDragHelper;

    invoke-static {v0}, Lcc/shinichi/library/view/helper/FingerDragHelper;->if(Lcc/shinichi/library/view/helper/FingerDragHelper;)I

    move-result v0

    iget-object v1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper$if;->do:Lcc/shinichi/library/view/helper/FingerDragHelper;

    invoke-static {v1}, Lcc/shinichi/library/view/helper/FingerDragHelper;->for(Lcc/shinichi/library/view/helper/FingerDragHelper;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
