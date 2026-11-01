.class abstract Lcom/qmuiteam/qmui/link/QMUILinkify$StyleableURLSpan;
.super Landroid/text/style/URLSpan;
.source "SourceFile"

# interfaces
.implements Lcom/qmuiteam/qmui/link/ITouchableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/link/QMUILinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StyleableURLSpan"
.end annotation


# instance fields
.field public do:Z

.field public for:Lcom/qmuiteam/qmui/span/QMUIOnSpanClickListener;

.field public if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/qmuiteam/qmui/span/QMUIOnSpanClickListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/link/QMUILinkify$StyleableURLSpan;->do:Z

    .line 3
    iput-object p1, p0, Lcom/qmuiteam/qmui/link/QMUILinkify$StyleableURLSpan;->if:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/qmuiteam/qmui/link/QMUILinkify$StyleableURLSpan;->for:Lcom/qmuiteam/qmui/span/QMUIOnSpanClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/link/QMUILinkify$StyleableURLSpan;->for:Lcom/qmuiteam/qmui/span/QMUIOnSpanClickListener;

    iget-object v1, p0, Lcom/qmuiteam/qmui/link/QMUILinkify$StyleableURLSpan;->if:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/span/QMUIOnSpanClickListener;->onSpanClick(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/link/QMUILinkify$StyleableURLSpan;->do:Z

    return-void
.end method
