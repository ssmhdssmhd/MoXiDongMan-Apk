.class Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->for(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;I)Lcom/qmuiteam/qmui/layout/QMUIButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

.field public final synthetic for:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;

.field public final synthetic if:I


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$do;->for:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$do;->do:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    iput p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$do;->if:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$do;->for:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->do(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$do;->for:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->if(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;)Lcom/qmuiteam/qmui/layout/QMUIButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$do;->for:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->do(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$do;->do:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$do;->if:I

    invoke-interface {p1, v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;->onClick(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;I)V

    :cond_0
    return-void
.end method
