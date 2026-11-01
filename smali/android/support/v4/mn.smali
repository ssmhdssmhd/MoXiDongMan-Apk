.class public final synthetic Landroid/support/v4/mn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ComicGroupManagerActivity;

.field public final synthetic for:Ljava/util/List;

.field public final synthetic if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

.field public final synthetic new:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/mn;->do:Lcom/wsw/cospa/activity/ComicGroupManagerActivity;

    iput-object p2, p0, Landroid/support/v4/mn;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    iput-object p3, p0, Landroid/support/v4/mn;->for:Ljava/util/List;

    iput-object p4, p0, Landroid/support/v4/mn;->new:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Landroid/support/v4/mn;->do:Lcom/wsw/cospa/activity/ComicGroupManagerActivity;

    iget-object v1, p0, Landroid/support/v4/mn;->if:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    iget-object v2, p0, Landroid/support/v4/mn;->for:Ljava/util/List;

    iget-object v3, p0, Landroid/support/v4/mn;->new:Ljava/util/List;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->import(Lcom/wsw/cospa/activity/ComicGroupManagerActivity;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method
