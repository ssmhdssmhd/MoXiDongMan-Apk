.class public Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;
.super Lcom/qmuiteam/qmui/layout/QMUILinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$OnDecorationListener;
    }
.end annotation


# instance fields
.field private for:I

.field private new:I

.field private try:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$OnDecorationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_min_width:I

    invoke-static {p1, p2}, Landroid/support/v4/sh1;->new(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;->for:I

    .line 5
    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_max_width:I

    invoke-static {p1, p2}, Landroid/support/v4/sh1;->new(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;->new:I

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;->try:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$OnDecorationListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$OnDecorationListener;->onDrawOver(Landroid/graphics/Canvas;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;)V

    :cond_0
    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;->try:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$OnDecorationListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$OnDecorationListener;->onDraw(Landroid/graphics/Canvas;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 3
    iget v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;->new:I

    if-lez v2, :cond_0

    if-le v0, v2, :cond_0

    .line 4
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 5
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->onMeasure(II)V

    const/high16 p1, -0x80000000

    if-ne v1, p1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    .line 7
    iget v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;->for:I

    if-ge p1, v1, :cond_1

    if-ge v1, v0, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    .line 8
    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 9
    invoke-super {p0, p1, p2}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->onMeasure(II)V

    :cond_1
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;->new:I

    return-void
.end method

.method public setMinWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;->for:I

    return-void
.end method

.method public setOnDecorationListener(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$OnDecorationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;->try:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$OnDecorationListener;

    return-void
.end method
