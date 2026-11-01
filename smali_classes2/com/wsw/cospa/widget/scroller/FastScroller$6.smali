.class Lcom/wsw/cospa/widget/scroller/FastScroller$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/widget/scroller/FastScroller;->hideScrollbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/scroller/FastScroller;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$6;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$6;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-static {p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$1000(Lcom/wsw/cospa/widget/scroller/FastScroller;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$6;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$802(Lcom/wsw/cospa/widget/scroller/FastScroller;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$6;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-static {p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$1000(Lcom/wsw/cospa/widget/scroller/FastScroller;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$6;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$802(Lcom/wsw/cospa/widget/scroller/FastScroller;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
