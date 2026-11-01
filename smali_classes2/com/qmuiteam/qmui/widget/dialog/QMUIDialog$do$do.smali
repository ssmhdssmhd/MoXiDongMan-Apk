.class Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->f(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$do;->do:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$do;->do:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    invoke-static {p1}, Landroid/support/v4/ai1;->if(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->transient(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do$do;->do:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;->transient(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    return-void
.end method
