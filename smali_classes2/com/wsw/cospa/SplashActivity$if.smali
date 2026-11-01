.class Lcom/wsw/cospa/SplashActivity$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/SplashActivity;->public()V
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
    iput-object p1, p0, Lcom/wsw/cospa/SplashActivity$if;->do:Lcom/wsw/cospa/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wsw/cospa/SplashActivity$if;->do:Lcom/wsw/cospa/SplashActivity;

    const-class v2, Lcom/wsw/cospa/activity/HomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/SplashActivity$if;->do:Lcom/wsw/cospa/SplashActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/SplashActivity$if;->do:Lcom/wsw/cospa/SplashActivity;

    invoke-virtual {v0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    return-void
.end method
