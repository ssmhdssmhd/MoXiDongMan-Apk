.class Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->return(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;Landroid/view/ViewGroup;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if$do;->do:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if$do;->do:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->protected(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;->instanceof(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;

    return-void
.end method
