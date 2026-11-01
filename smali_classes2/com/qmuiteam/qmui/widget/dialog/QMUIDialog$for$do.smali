.class Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder$ItemViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->synchronized([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/CharSequence;

.field public final synthetic if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for$do;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for$do;->do:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createItemView(Landroid/content/Context;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;
    .locals 2

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$MarkItemView;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for$do;->do:Ljava/lang/CharSequence;

    invoke-direct {v0, p1, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$MarkItemView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-object v0
.end method
