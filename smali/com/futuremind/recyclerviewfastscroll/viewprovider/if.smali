.class public Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$for;,
        Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$if;
    }
.end annotation


# instance fields
.field public final do:Landroid/view/View;

.field public for:Landroid/animation/AnimatorSet;

.field public if:Landroid/animation/AnimatorSet;

.field private new:F

.field private try:F


# direct methods
.method public constructor <init>(Landroid/view/View;IIFFI)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;->do:Landroid/view/View;

    .line 3
    iput p4, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;->new:F

    .line 4
    iput p5, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;->try:F

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p3

    check-cast p3, Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;->if:Landroid/animation/AnimatorSet;

    int-to-long p4, p6

    .line 6
    invoke-virtual {p3, p4, p5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 7
    iget-object p3, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;->if:Landroid/animation/AnimatorSet;

    invoke-virtual {p3, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    check-cast p2, Landroid/animation/AnimatorSet;

    iput-object p2, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;->for:Landroid/animation/AnimatorSet;

    .line 9
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 10
    iget-object p2, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;->if:Landroid/animation/AnimatorSet;

    new-instance p3, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$do;

    invoke-direct {p3, p0, p1}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if$do;-><init>(Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;->for()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;->for()V

    .line 2
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;->if:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public for()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;->do:Landroid/view/View;

    iget v1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;->new:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 2
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;->do:Landroid/view/View;

    iget v1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;->try:F

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method public if()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;->if:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;->do:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;->do:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;->for()V

    .line 5
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/if;->for:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method
