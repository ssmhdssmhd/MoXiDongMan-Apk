.class Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->static(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/view/ViewGroup;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$do;->do:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$do;->do:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    iget-object p1, p1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->const:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$do;->do:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    iget-object p2, p2, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->const:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    add-int/lit8 p3, p1, -0x1

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p3

    if-le p3, p4, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$do;->do:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    invoke-static {p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->do(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;)Landroid/content/Context;

    move-result-object p3

    const/4 p4, 0x3

    invoke-static {p3, p4}, Landroid/support/v4/ih1;->new(Landroid/content/Context;I)I

    move-result p3

    sub-int/2addr p2, p3

    const/4 p3, 0x0

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_0

    .line 5
    iget-object p5, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$do;->do:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    iget-object p5, p5, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->const:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-virtual {p5, p4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5, p2, p3, p2, p3}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
