.class public Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetItemView;
.super Lcom/qmuiteam/qmui/alpha/QMUIAlphaLinearLayout;
.source "SourceFile"


# instance fields
.field private for:Landroid/view/ViewStub;

.field private if:Landroidx/appcompat/widget/AppCompatImageView;

.field private new:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaLinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getAppCompatImageView()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetItemView;->if:Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method public getSubScript()Landroid/view/ViewStub;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetItemView;->for:Landroid/view/ViewStub;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetItemView;->new:Landroid/widget/TextView;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    sget v0, Lcom/qmuiteam/qmui/R$id;->grid_item_image:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetItemView;->if:Landroidx/appcompat/widget/AppCompatImageView;

    .line 3
    sget v0, Lcom/qmuiteam/qmui/R$id;->grid_item_subscript:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetItemView;->for:Landroid/view/ViewStub;

    .line 4
    sget v0, Lcom/qmuiteam/qmui/R$id;->grid_item_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIBottomSheetItemView;->new:Landroid/widget/TextView;

    return-void
.end method
