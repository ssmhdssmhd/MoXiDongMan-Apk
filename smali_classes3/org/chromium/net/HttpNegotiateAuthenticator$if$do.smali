.class Lorg/chromium/net/HttpNegotiateAuthenticator$if$do;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/HttpNegotiateAuthenticator$if;->run(Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/content/Context;

.field public final synthetic if:Lorg/chromium/net/HttpNegotiateAuthenticator$if;


# direct methods
.method public constructor <init>(Lorg/chromium/net/HttpNegotiateAuthenticator$if;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$if$do;->if:Lorg/chromium/net/HttpNegotiateAuthenticator$if;

    iput-object p2, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$if$do;->do:Landroid/content/Context;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$if$do;->do:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    iget-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$if$do;->if:Lorg/chromium/net/HttpNegotiateAuthenticator$if;

    invoke-static {p1}, Lorg/chromium/net/HttpNegotiateAuthenticator$if;->do(Lorg/chromium/net/HttpNegotiateAuthenticator$if;)Lorg/chromium/net/HttpNegotiateAuthenticator$for;

    move-result-object p1

    iget-object v0, p1, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->if:Landroid/accounts/AccountManager;

    iget-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$if$do;->if:Lorg/chromium/net/HttpNegotiateAuthenticator$if;

    invoke-static {p1}, Lorg/chromium/net/HttpNegotiateAuthenticator$if;->do(Lorg/chromium/net/HttpNegotiateAuthenticator$if;)Lorg/chromium/net/HttpNegotiateAuthenticator$for;

    move-result-object p1

    iget-object v1, p1, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->try:Landroid/accounts/Account;

    iget-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$if$do;->if:Lorg/chromium/net/HttpNegotiateAuthenticator$if;

    .line 3
    invoke-static {p1}, Lorg/chromium/net/HttpNegotiateAuthenticator$if;->do(Lorg/chromium/net/HttpNegotiateAuthenticator$if;)Lorg/chromium/net/HttpNegotiateAuthenticator$for;

    move-result-object p1

    iget-object v2, p1, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->new:Ljava/lang/String;

    iget-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$if$do;->if:Lorg/chromium/net/HttpNegotiateAuthenticator$if;

    invoke-static {p1}, Lorg/chromium/net/HttpNegotiateAuthenticator$if;->do(Lorg/chromium/net/HttpNegotiateAuthenticator$if;)Lorg/chromium/net/HttpNegotiateAuthenticator$for;

    move-result-object p1

    iget-object v3, p1, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->for:Landroid/os/Bundle;

    new-instance v5, Lorg/chromium/net/HttpNegotiateAuthenticator$if;

    iget-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$if$do;->if:Lorg/chromium/net/HttpNegotiateAuthenticator$if;

    iget-object p2, p1, Lorg/chromium/net/HttpNegotiateAuthenticator$if;->if:Lorg/chromium/net/HttpNegotiateAuthenticator;

    .line 4
    invoke-static {p1}, Lorg/chromium/net/HttpNegotiateAuthenticator$if;->do(Lorg/chromium/net/HttpNegotiateAuthenticator$if;)Lorg/chromium/net/HttpNegotiateAuthenticator$for;

    move-result-object p1

    invoke-direct {v5, p2, p1}, Lorg/chromium/net/HttpNegotiateAuthenticator$if;-><init>(Lorg/chromium/net/HttpNegotiateAuthenticator;Lorg/chromium/net/HttpNegotiateAuthenticator$for;)V

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 5
    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method
