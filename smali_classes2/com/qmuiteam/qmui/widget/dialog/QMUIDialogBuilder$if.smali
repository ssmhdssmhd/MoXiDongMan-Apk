.class Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->native(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/widget/LinearLayout;Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$if;->do:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$if;->do:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    iget-object p1, p1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->do()V

    return-void
.end method
