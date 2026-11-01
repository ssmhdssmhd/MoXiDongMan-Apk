.class Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->import(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$for;->do:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$for;->do:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->catch()V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$for;->do:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->do(Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$for;->do:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->do(Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method
