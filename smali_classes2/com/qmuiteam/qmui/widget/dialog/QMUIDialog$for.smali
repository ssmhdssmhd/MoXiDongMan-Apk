.class public Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;
.super Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder<",
        "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;",
        ">;"
    }
.end annotation


# instance fields
.field private private:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->private:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->private:I

    return v0
.end method

.method public b(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->private:I

    return-object p0
.end method

.method public instanceof(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->package:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->package:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;->setChecked(Z)V

    .line 4
    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->private:I

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v2, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;->setChecked(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public return(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->return(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/view/ViewGroup;Landroid/content/Context;)V

    .line 2
    iget p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->private:I

    const/4 p2, -0x1

    if-le p1, p2, :cond_0

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->package:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->package:Ljava/util/ArrayList;

    iget p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->private:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public synchronized([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    new-instance v3, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for$do;

    invoke-direct {v3, p0, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for$do;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->protected(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder$ItemViewFactory;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
