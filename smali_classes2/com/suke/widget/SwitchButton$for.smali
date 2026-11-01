.class Lcom/suke/widget/SwitchButton$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/suke/widget/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/suke/widget/SwitchButton;


# direct methods
.method public constructor <init>(Lcom/suke/widget/SwitchButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/suke/widget/SwitchButton$for;->do:Lcom/suke/widget/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/suke/widget/SwitchButton$for;->do:Lcom/suke/widget/SwitchButton;

    invoke-static {p1}, Lcom/suke/widget/SwitchButton;->break(Lcom/suke/widget/SwitchButton;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/suke/widget/SwitchButton$for;->do:Lcom/suke/widget/SwitchButton;

    invoke-static {p1}, Lcom/suke/widget/SwitchButton;->else(Lcom/suke/widget/SwitchButton;)Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/suke/widget/SwitchButton;->goto(Lcom/suke/widget/SwitchButton;Z)Z

    .line 3
    iget-object p1, p0, Lcom/suke/widget/SwitchButton$for;->do:Lcom/suke/widget/SwitchButton;

    invoke-static {p1, v1}, Lcom/suke/widget/SwitchButton;->catch(Lcom/suke/widget/SwitchButton;I)I

    .line 4
    iget-object p1, p0, Lcom/suke/widget/SwitchButton$for;->do:Lcom/suke/widget/SwitchButton;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 5
    iget-object p1, p0, Lcom/suke/widget/SwitchButton$for;->do:Lcom/suke/widget/SwitchButton;

    invoke-static {p1}, Lcom/suke/widget/SwitchButton;->case(Lcom/suke/widget/SwitchButton;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/suke/widget/SwitchButton$for;->do:Lcom/suke/widget/SwitchButton;

    invoke-static {p1, v1}, Lcom/suke/widget/SwitchButton;->catch(Lcom/suke/widget/SwitchButton;I)I

    .line 7
    iget-object p1, p0, Lcom/suke/widget/SwitchButton$for;->do:Lcom/suke/widget/SwitchButton;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 8
    iget-object p1, p0, Lcom/suke/widget/SwitchButton$for;->do:Lcom/suke/widget/SwitchButton;

    invoke-static {p1}, Lcom/suke/widget/SwitchButton;->case(Lcom/suke/widget/SwitchButton;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/suke/widget/SwitchButton$for;->do:Lcom/suke/widget/SwitchButton;

    invoke-static {p1, v1}, Lcom/suke/widget/SwitchButton;->catch(Lcom/suke/widget/SwitchButton;I)I

    .line 10
    iget-object p1, p0, Lcom/suke/widget/SwitchButton$for;->do:Lcom/suke/widget/SwitchButton;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/suke/widget/SwitchButton$for;->do:Lcom/suke/widget/SwitchButton;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/suke/widget/SwitchButton;->catch(Lcom/suke/widget/SwitchButton;I)I

    .line 12
    iget-object p1, p0, Lcom/suke/widget/SwitchButton$for;->do:Lcom/suke/widget/SwitchButton;

    invoke-static {p1}, Lcom/suke/widget/SwitchButton;->class(Lcom/suke/widget/SwitchButton;)Lcom/suke/widget/SwitchButton$new;

    move-result-object p1

    iput v1, p1, Lcom/suke/widget/SwitchButton$new;->for:I

    .line 13
    iget-object p1, p0, Lcom/suke/widget/SwitchButton$for;->do:Lcom/suke/widget/SwitchButton;

    invoke-static {p1}, Lcom/suke/widget/SwitchButton;->class(Lcom/suke/widget/SwitchButton;)Lcom/suke/widget/SwitchButton$new;

    move-result-object p1

    iget-object v0, p0, Lcom/suke/widget/SwitchButton$for;->do:Lcom/suke/widget/SwitchButton;

    invoke-static {v0}, Lcom/suke/widget/SwitchButton;->new(Lcom/suke/widget/SwitchButton;)F

    move-result v0

    iput v0, p1, Lcom/suke/widget/SwitchButton$new;->new:F

    .line 14
    iget-object p1, p0, Lcom/suke/widget/SwitchButton$for;->do:Lcom/suke/widget/SwitchButton;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    :goto_0
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
