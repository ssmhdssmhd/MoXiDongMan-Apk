.class Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$goto$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder$ItemViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$goto;->b([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/CharSequence;

.field public final synthetic if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$goto;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$goto;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$goto$do;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$goto;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$goto$do;->do:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createItemView(Landroid/content/Context;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView;
    .locals 3

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$CheckItemView;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$goto$do;->do:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogMenuItemView$CheckItemView;-><init>(Landroid/content/Context;ZLjava/lang/CharSequence;)V

    return-object v0
.end method
