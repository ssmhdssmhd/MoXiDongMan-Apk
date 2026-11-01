.class public abstract Landroid/support/v4/yh1;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"

# interfaces
.implements Lcom/qmuiteam/qmui/link/ITouchableSpan;


# instance fields
.field private case:Z

.field private do:Z

.field private for:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private if:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private new:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private try:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/support/v4/yh1;->case:Z

    .line 3
    iput p1, p0, Landroid/support/v4/yh1;->new:I

    .line 4
    iput p2, p0, Landroid/support/v4/yh1;->try:I

    .line 5
    iput p3, p0, Landroid/support/v4/yh1;->if:I

    .line 6
    iput p4, p0, Landroid/support/v4/yh1;->for:I

    return-void
.end method


# virtual methods
.method public abstract case(Landroid/view/View;)V
.end method

.method public do()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/yh1;->if:I

    return v0
.end method

.method public else(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/yh1;->case:Z

    return-void
.end method

.method public for()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/yh1;->for:I

    return v0
.end method

.method public goto(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/yh1;->new:I

    return-void
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/yh1;->new:I

    return v0
.end method

.method public new()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/yh1;->try:I

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v4/yh1;->case(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/yh1;->do:Z

    return-void
.end method

.method public this(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/yh1;->try:I

    return-void
.end method

.method public try()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/yh1;->do:Z

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/yh1;->do:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/yh1;->try:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v4/yh1;->new:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 2
    iget-boolean v0, p0, Landroid/support/v4/yh1;->do:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/yh1;->for:I

    goto :goto_1

    :cond_1
    iget v0, p0, Landroid/support/v4/yh1;->if:I

    :goto_1
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 3
    iget-boolean v0, p0, Landroid/support/v4/yh1;->case:Z

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
