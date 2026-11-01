.class public final synthetic Landroid/support/v4/h71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/OnkeyEncryptActivity;

.field public final synthetic for:[Ljava/lang/String;

.field public final synthetic if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

.field public final synthetic new:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;[Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/h71;->do:Lcom/wsw/cospa/activity/OnkeyEncryptActivity;

    iput-object p2, p0, Landroid/support/v4/h71;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    iput-object p3, p0, Landroid/support/v4/h71;->for:[Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/h71;->new:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Landroid/support/v4/h71;->do:Lcom/wsw/cospa/activity/OnkeyEncryptActivity;

    iget-object v1, p0, Landroid/support/v4/h71;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    iget-object v2, p0, Landroid/support/v4/h71;->for:[Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/h71;->new:Ljava/util/Map;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->throws(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;[Ljava/lang/String;Ljava/util/Map;Landroid/content/DialogInterface;I)V

    return-void
.end method
