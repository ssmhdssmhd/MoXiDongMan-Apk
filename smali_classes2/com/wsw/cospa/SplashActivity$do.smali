.class Lcom/wsw/cospa/SplashActivity$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/SplashActivity;->this()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/SplashActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/SplashActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/SplashActivity$do;->do:Lcom/wsw/cospa/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 0

    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/SplashActivity$do;->do:Lcom/wsw/cospa/SplashActivity;

    invoke-virtual {v0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onConfirm()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/SplashActivity$do;->do:Lcom/wsw/cospa/SplashActivity;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "show_privacy_dialog_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/SplashActivity$do;->do:Lcom/wsw/cospa/SplashActivity;

    const-string v1, "5f816b5194846f78a96ee7fe"

    const-string v2, "Umeng"

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/SplashActivity$do;->do:Lcom/wsw/cospa/SplashActivity;

    invoke-virtual {v0}, Lcom/wsw/cospa/SplashActivity;->throws()V

    return-void
.end method
