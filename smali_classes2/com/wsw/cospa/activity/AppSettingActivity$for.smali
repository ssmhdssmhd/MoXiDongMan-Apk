.class Lcom/wsw/cospa/activity/AppSettingActivity$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/AppSettingActivity;->return()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/AppSettingActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/AppSettingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/AppSettingActivity$for;->do:Lcom/wsw/cospa/activity/AppSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 0

    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onConfirm()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppSettingActivity$for;->do:Lcom/wsw/cospa/activity/AppSettingActivity;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "show_gdt_ad_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method
