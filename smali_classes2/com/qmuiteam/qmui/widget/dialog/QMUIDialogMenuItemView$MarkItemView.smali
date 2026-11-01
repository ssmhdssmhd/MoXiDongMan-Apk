.class public Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$MarkItemView;
.super Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarkItemView"
.end annotation


# instance fields
.field private case:Landroid/content/Context;

.field private else:Landroid/widget/TextView;

.field private goto:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$MarkItemView;->case:Landroid/content/Context;

    .line 3
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$MarkItemView;->case:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$MarkItemView;->goto:Landroid/widget/ImageView;

    .line 4
    invoke-static {}, Lcom/qmuiteam/qmui/util/for;->this()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 5
    sget-object v0, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogMenuMarkDef:[I

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_menu_item_style:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 8
    sget v6, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogMenuMarkDef_qmui_dialog_menu_item_check_mark_margin_hor:I

    if-ne v5, v6, :cond_0

    .line 9
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    goto :goto_1

    .line 10
    :cond_0
    sget v6, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogMenuMarkDef_qmui_dialog_menu_item_mark_drawable:I

    if-ne v5, v6, :cond_1

    .line 11
    iget-object v6, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$MarkItemView;->goto:Landroid/widget/ImageView;

    invoke-static {p1, v0, v5}, Landroid/support/v4/sh1;->case(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xf

    const/4 v1, -0x1

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xb

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16
    iput v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 17
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$MarkItemView;->goto:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$MarkItemView;->case:Landroid/content/Context;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;->if(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$MarkItemView;->else:Landroid/widget/TextView;

    .line 19
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x9

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 21
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$MarkItemView;->goto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 22
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$MarkItemView;->else:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$MarkItemView;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$MarkItemView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public new(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$MarkItemView;->goto:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/qmuiteam/qmui/util/for;->return(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$MarkItemView;->else:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
