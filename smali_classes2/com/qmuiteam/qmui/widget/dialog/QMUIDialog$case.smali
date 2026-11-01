.class public Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;
.super Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "case"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder<",
        "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    invoke-virtual {p0, v2, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;->synchronized(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public synchronized(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;
    .locals 1

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case$do;

    invoke-direct {v0, p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case$do;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;->protected(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder$ItemViewFactory;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    return-object p0
.end method
