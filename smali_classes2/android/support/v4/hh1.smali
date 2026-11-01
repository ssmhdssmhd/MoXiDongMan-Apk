.class public Landroid/support/v4/hh1;
.super Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder<",
        "Landroid/support/v4/hh1;",
        ">;"
    }
.end annotation


# instance fields
.field private throws:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 2
    sget p1, Lcom/qmuiteam/qmui/R$color;->qmui_config_color_separator:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->default(IIII)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    return-void
.end method


# virtual methods
.method public break(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->throws(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    .line 2
    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->break(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    move-result-object p1

    return-object p1
.end method

.method public protected(I)Landroid/support/v4/hh1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->final()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/hh1;->throws:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public public(Landroid/widget/TextView;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->public(Landroid/widget/TextView;)V

    .line 2
    iget-object v0, p0, Landroid/support/v4/hh1;->throws:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogTitleTvCustomDef:[I

    sget v3, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_title_style:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    :goto_0
    if-ge v4, v1, :cond_2

    .line 5
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 6
    sget v3, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogTitleTvCustomDef_qmui_paddingBottomWhenNotContent:I

    if-ne v2, v3, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    .line 8
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    .line 9
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    .line 10
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 11
    invoke-virtual {p1, v3, v5, v6, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-void
.end method

.method public return(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 7

    .line 1
    iget-object p1, p0, Landroid/support/v4/hh1;->throws:Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 2
    new-instance p1, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {p1, p3}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;-><init>(Landroid/content/Context;)V

    .line 3
    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_message_content_style:I

    invoke-static {p1, v0}, Landroid/support/v4/sh1;->do(Landroid/widget/TextView;I)V

    .line 4
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->import()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogMessageTvCustomDef:[I

    const/4 v3, 0x0

    invoke-virtual {p3, v1, v2, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    :goto_0
    if-ge v3, v1, :cond_1

    .line 7
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 8
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogMessageTvCustomDef_qmui_paddingTopWhenNotTitle:I

    if-ne v2, v4, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    .line 10
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 11
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    .line 12
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v6

    .line 13
    invoke-virtual {p1, v4, v2, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    :cond_2
    iget-object v0, p0, Landroid/support/v4/hh1;->throws:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    new-instance v0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;

    invoke-direct {v0, p3}, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->super()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;->setMaxHeight(I)V

    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 19
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public transient(Ljava/lang/CharSequence;)Landroid/support/v4/hh1;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/hh1;->throws:Ljava/lang/CharSequence;

    return-object p0
.end method
