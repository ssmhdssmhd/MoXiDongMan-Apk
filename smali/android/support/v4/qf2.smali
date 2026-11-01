.class public final synthetic Landroid/support/v4/qf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/WebViewActivity;

.field public final synthetic for:Lcom/wsw/cospa/bean/ComicShelfBean;

.field public final synthetic if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

.field public final synthetic new:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/WebViewActivity;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/qf2;->do:Lcom/wsw/cospa/activity/WebViewActivity;

    iput-object p2, p0, Landroid/support/v4/qf2;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    iput-object p3, p0, Landroid/support/v4/qf2;->for:Lcom/wsw/cospa/bean/ComicShelfBean;

    iput-object p4, p0, Landroid/support/v4/qf2;->new:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Landroid/support/v4/qf2;->do:Lcom/wsw/cospa/activity/WebViewActivity;

    iget-object v1, p0, Landroid/support/v4/qf2;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    iget-object v2, p0, Landroid/support/v4/qf2;->for:Lcom/wsw/cospa/bean/ComicShelfBean;

    iget-object v3, p0, Landroid/support/v4/qf2;->new:Ljava/util/List;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/wsw/cospa/activity/WebViewActivity;->public(Lcom/wsw/cospa/activity/WebViewActivity;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method
