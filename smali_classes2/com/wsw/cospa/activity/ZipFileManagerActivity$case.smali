.class Lcom/wsw/cospa/activity/ZipFileManagerActivity$case;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/activity/ZipFileManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "case"
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$case;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$case;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->t(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)Lcom/wsw/cospa/activity/ZipFileManagerActivity$case;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public if()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$case;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->t(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)Lcom/wsw/cospa/activity/ZipFileManagerActivity$case;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$case;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->u(Lcom/wsw/cospa/activity/ZipFileManagerActivity;Lcom/wsw/cospa/activity/ZipFileManagerActivity$case;)Lcom/wsw/cospa/activity/ZipFileManagerActivity$case;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$case;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->s(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity$case;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->s(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)V

    :cond_1
    :goto_0
    return-void
.end method
