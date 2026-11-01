.class public Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;
.super Lcom/qmuiteam/qmui/widget/QMUIObservableScrollView;
.source "SourceFile"


# instance fields
.field private for:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIObservableScrollView;-><init>(Landroid/content/Context;)V

    const p1, 0x1fffffff

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;->for:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIObservableScrollView;-><init>(Landroid/content/Context;)V

    const p1, 0x1fffffff

    .line 4
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;->for:I

    .line 5
    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;->for:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUIObservableScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x1fffffff

    .line 7
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;->for:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/QMUIObservableScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x1fffffff

    .line 9
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;->for:I

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 2
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p2, :cond_0

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;->for:I

    if-gt p2, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    .line 3
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 4
    :cond_0
    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;->for:I

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 5
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;->for:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;->for:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    :cond_0
    return-void
.end method
