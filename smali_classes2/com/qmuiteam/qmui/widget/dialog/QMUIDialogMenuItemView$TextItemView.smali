.class public Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$TextItemView;
.super Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextItemView"
.end annotation


# instance fields
.field public case:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$TextItemView;->try()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$TextItemView;->try()V

    .line 5
    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$TextItemView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private try()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;->if(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$TextItemView;->case:Landroid/widget/TextView;

    .line 2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$TextItemView;->case:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$TextItemView;->case:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
