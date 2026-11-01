.class Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->return(Landroid/view/View;Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$if;->do:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$if;->do:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->case()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup$if;->do:Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/popup/QMUIBasePopup;->for()V

    :cond_0
    return-void
.end method
