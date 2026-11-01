.class public Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;
.super Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RootView"
.end annotation


# instance fields
.field public final synthetic for:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;-><init>(Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;->for:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "only support one child"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;->for:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;

    iget-object v0, v0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;->for:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;

    iget-object v0, v0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;->for:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->break(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;->for:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;

    invoke-virtual {v0, p0}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->goto(Landroid/view/View;)I

    move-result v0

    .line 6
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;->for:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;

    invoke-virtual {v2, p0}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->else(Landroid/view/View;)I

    move-result v2

    .line 7
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 8
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 9
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 10
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    if-ge p1, v3, :cond_1

    .line 11
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :cond_1
    if-ge p2, v5, :cond_2

    .line 12
    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 13
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 15
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;->for:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;

    iget v0, p2, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->catch:I

    iget v1, p2, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->break:I

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, p2, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->catch:I

    .line 17
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;->for:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p2, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->break:I

    .line 18
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;->for:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;

    iget p2, p1, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->catch:I

    if-ne v0, p2, :cond_3

    iget p2, p1, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->break:I

    if-eq v1, p2, :cond_4

    iget-object p1, p1, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->if:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;->for:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->super()V

    .line 20
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "in measure: mWindowWidth = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;->for:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;

    iget p2, p2, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->catch:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ;mWindowHeight = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;->for:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;

    iget p2, p2, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->break:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$RootView;->for:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;

    iget p2, p1, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->catch:I

    iget p1, p1, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->break:I

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method
