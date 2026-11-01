.class public Landroid/support/v4/lh1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Lcom/qmuiteam/qmui/link/ITouchableSpan;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/qmuiteam/qmui/link/ITouchableSpan;
    .locals 4

    .line 1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    sub-int/2addr p3, v1

    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    add-int/2addr p3, v1

    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p3

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p1, p3, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 10
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_0

    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineRight(I)F

    move-result p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_1

    :cond_0
    const/4 v2, -0x1

    .line 11
    :cond_1
    const-class p1, Lcom/qmuiteam/qmui/link/ITouchableSpan;

    invoke-interface {p2, v2, v2, p1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/qmuiteam/qmui/link/ITouchableSpan;

    .line 12
    array-length p2, p1

    if-lez p2, :cond_2

    const/4 p2, 0x0

    .line 13
    aget-object v1, p1, p2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object v1
.end method

.method public if(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/lh1;->do(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/qmuiteam/qmui/link/ITouchableSpan;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v4/lh1;->do:Lcom/qmuiteam/qmui/link/ITouchableSpan;

    if-eqz p3, :cond_0

    .line 3
    invoke-interface {p3, v1}, Lcom/qmuiteam/qmui/link/ITouchableSpan;->setPressed(Z)V

    .line 4
    iget-object p3, p0, Landroid/support/v4/lh1;->do:Lcom/qmuiteam/qmui/link/ITouchableSpan;

    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p3

    iget-object v0, p0, Landroid/support/v4/lh1;->do:Lcom/qmuiteam/qmui/link/ITouchableSpan;

    .line 5
    invoke-interface {p2, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 6
    invoke-static {p2, p3, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 7
    :cond_0
    instance-of p2, p1, Lcom/qmuiteam/qmui/widget/textview/ISpanTouchFix;

    if-eqz p2, :cond_2

    .line 8
    check-cast p1, Lcom/qmuiteam/qmui/widget/textview/ISpanTouchFix;

    .line 9
    iget-object p2, p0, Landroid/support/v4/lh1;->do:Lcom/qmuiteam/qmui/link/ITouchableSpan;

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Lcom/qmuiteam/qmui/widget/textview/ISpanTouchFix;->setTouchSpanHit(Z)V

    .line 10
    :cond_2
    iget-object p1, p0, Landroid/support/v4/lh1;->do:Lcom/qmuiteam/qmui/link/ITouchableSpan;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 11
    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_9

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/lh1;->do(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/qmuiteam/qmui/link/ITouchableSpan;

    move-result-object p3

    .line 13
    iget-object v0, p0, Landroid/support/v4/lh1;->do:Lcom/qmuiteam/qmui/link/ITouchableSpan;

    if-eqz v0, :cond_5

    if-eq p3, v0, :cond_5

    .line 14
    invoke-interface {v0, v2}, Lcom/qmuiteam/qmui/link/ITouchableSpan;->setPressed(Z)V

    .line 15
    iput-object v4, p0, Landroid/support/v4/lh1;->do:Lcom/qmuiteam/qmui/link/ITouchableSpan;

    .line 16
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 17
    :cond_5
    instance-of p2, p1, Lcom/qmuiteam/qmui/widget/textview/ISpanTouchFix;

    if-eqz p2, :cond_7

    .line 18
    check-cast p1, Lcom/qmuiteam/qmui/widget/textview/ISpanTouchFix;

    .line 19
    iget-object p2, p0, Landroid/support/v4/lh1;->do:Lcom/qmuiteam/qmui/link/ITouchableSpan;

    if-eqz p2, :cond_6

    const/4 p2, 0x1

    goto :goto_2

    :cond_6
    const/4 p2, 0x0

    :goto_2
    invoke-interface {p1, p2}, Lcom/qmuiteam/qmui/widget/textview/ISpanTouchFix;->setTouchSpanHit(Z)V

    .line 20
    :cond_7
    iget-object p1, p0, Landroid/support/v4/lh1;->do:Lcom/qmuiteam/qmui/link/ITouchableSpan;

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    return v1

    .line 21
    :cond_9
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p3

    if-ne p3, v1, :cond_c

    .line 22
    iget-object p3, p0, Landroid/support/v4/lh1;->do:Lcom/qmuiteam/qmui/link/ITouchableSpan;

    if-eqz p3, :cond_a

    .line 23
    invoke-interface {p3, v2}, Lcom/qmuiteam/qmui/link/ITouchableSpan;->setPressed(Z)V

    .line 24
    iget-object p3, p0, Landroid/support/v4/lh1;->do:Lcom/qmuiteam/qmui/link/ITouchableSpan;

    invoke-interface {p3, p1}, Lcom/qmuiteam/qmui/link/ITouchableSpan;->onClick(Landroid/view/View;)V

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    .line 25
    :goto_4
    iput-object v4, p0, Landroid/support/v4/lh1;->do:Lcom/qmuiteam/qmui/link/ITouchableSpan;

    .line 26
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 27
    instance-of p2, p1, Lcom/qmuiteam/qmui/widget/textview/ISpanTouchFix;

    if-eqz p2, :cond_b

    .line 28
    check-cast p1, Lcom/qmuiteam/qmui/widget/textview/ISpanTouchFix;

    .line 29
    invoke-interface {p1, v1}, Lcom/qmuiteam/qmui/widget/textview/ISpanTouchFix;->setTouchSpanHit(Z)V

    :cond_b
    return v1

    .line 30
    :cond_c
    iget-object p3, p0, Landroid/support/v4/lh1;->do:Lcom/qmuiteam/qmui/link/ITouchableSpan;

    if-eqz p3, :cond_d

    .line 31
    invoke-interface {p3, v2}, Lcom/qmuiteam/qmui/link/ITouchableSpan;->setPressed(Z)V

    .line 32
    :cond_d
    instance-of p3, p1, Lcom/qmuiteam/qmui/widget/textview/ISpanTouchFix;

    if-eqz p3, :cond_e

    .line 33
    check-cast p1, Lcom/qmuiteam/qmui/widget/textview/ISpanTouchFix;

    .line 34
    invoke-interface {p1, v2}, Lcom/qmuiteam/qmui/widget/textview/ISpanTouchFix;->setTouchSpanHit(Z)V

    .line 35
    :cond_e
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    return v2
.end method
