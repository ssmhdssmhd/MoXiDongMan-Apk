.class public Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/textview/ISpanTouchFix;


# instance fields
.field public do:Z

.field private for:Z

.field private if:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->if:Z

    .line 5
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->for:Z

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHighlightColor(I)V

    return-void
.end method


# virtual methods
.method public do(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setPressed(Z)V

    return-void
.end method

.method public if()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/mh1;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->setMovementMethodCompat(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->do:Z

    .line 4
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 5
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->for:Z

    if-eqz v0, :cond_1

    .line 6
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->do:Z

    :cond_1
    return p1
.end method

.method public performClick()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->do:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->for:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public performLongClick()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->do:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->for:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/widget/TextView;->performLongClick()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setMovementMethodCompat(Landroid/text/method/MovementMethod;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->for:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->setNeedForceEventToParent(Z)V

    :cond_0
    return-void
.end method

.method public setNeedForceEventToParent(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->for:Z

    xor-int/lit8 v0, p1, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    xor-int/lit8 v0, p1, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setClickable(Z)V

    xor-int/lit8 p1, p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLongClickable(Z)V

    return-void
.end method

.method public final setPressed(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->if:Z

    .line 2
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->do:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->do(Z)V

    :cond_0
    return-void
.end method

.method public setTouchSpanHit(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->do:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->do:Z

    .line 3
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->if:Z

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->setPressed(Z)V

    :cond_0
    return-void
.end method
