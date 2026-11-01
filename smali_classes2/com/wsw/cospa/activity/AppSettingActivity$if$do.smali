.class Lcom/wsw/cospa/activity/AppSettingActivity$if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/AppSettingActivity$if;->onConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/AppSettingActivity$if;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/AppSettingActivity$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/AppSettingActivity$if$do;->do:Lcom/wsw/cospa/activity/AppSettingActivity$if;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppSettingActivity$if$do;->do:Lcom/wsw/cospa/activity/AppSettingActivity$if;

    iget-object v0, v0, Lcom/wsw/cospa/activity/AppSettingActivity$if;->do:Lcom/wsw/cospa/activity/AppSettingActivity;

    invoke-static {v0}, Landroid/support/v4/z2;->throw(Landroid/content/Context;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/AppSettingActivity$if$do;->do:Lcom/wsw/cospa/activity/AppSettingActivity$if;

    iget-object v1, v1, Lcom/wsw/cospa/activity/AppSettingActivity$if;->do:Lcom/wsw/cospa/activity/AppSettingActivity;

    invoke-static {v1}, Landroid/support/v4/z2;->while(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "versionCode"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "versionName"

    .line 5
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "phone_brand"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "phone_model"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppSettingActivity$if$do;->do:Lcom/wsw/cospa/activity/AppSettingActivity$if;

    iget-object v0, v0, Lcom/wsw/cospa/activity/AppSettingActivity$if;->do:Lcom/wsw/cospa/activity/AppSettingActivity;

    const-string v1, "close_ad_click"

    invoke-static {v0, v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppSettingActivity$if$do;->do:Lcom/wsw/cospa/activity/AppSettingActivity$if;

    iget-object v0, v0, Lcom/wsw/cospa/activity/AppSettingActivity$if;->do:Lcom/wsw/cospa/activity/AppSettingActivity;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "show_gdt_ad_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppSettingActivity$if$do;->do:Lcom/wsw/cospa/activity/AppSettingActivity$if;

    iget-object v0, v0, Lcom/wsw/cospa/activity/AppSettingActivity$if;->do:Lcom/wsw/cospa/activity/AppSettingActivity;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "CLOSE_GDT_AD_TIME"

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/v02;->goto(Ljava/lang/String;J)V

    return-void
.end method
