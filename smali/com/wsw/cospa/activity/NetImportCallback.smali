.class public Lcom/wsw/cospa/activity/NetImportCallback;
.super Ljava/lang/Object;
.source "NetImportCallback.java"

# interfaces
.implements Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;


# instance fields
.field private final do:Lcom/wsw/cospa/activity/ComicManagerActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ComicManagerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/activity/NetImportCallback;->do:Lcom/wsw/cospa/activity/ComicManagerActivity;

    return-void
.end method


# virtual methods
.method public onConfirm(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "地址不能为空"

    invoke-static {v0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "地址不能为空"

    invoke-static {v0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/NetImportCallback;->do:Lcom/wsw/cospa/activity/ComicManagerActivity;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->b(Ljava/lang/String;)V

    return-void
.end method
