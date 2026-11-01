.class Lorg/chromium/net/HttpNegotiateAuthenticator$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/HttpNegotiateAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "[",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field private final do:Lorg/chromium/net/HttpNegotiateAuthenticator$for;

.field public final synthetic if:Lorg/chromium/net/HttpNegotiateAuthenticator;


# direct methods
.method public constructor <init>(Lorg/chromium/net/HttpNegotiateAuthenticator;Lorg/chromium/net/HttpNegotiateAuthenticator$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$do;->if:Lorg/chromium/net/HttpNegotiateAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$do;->do:Lorg/chromium/net/HttpNegotiateAuthenticator$for;

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "[",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    const-string v0, "net_auth"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    array-length v3, p1

    if-nez v3, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "ERR_MISSING_AUTH_CREDENTIALS: No account provided for the kerberos authentication. Please verify the configuration policies and that the CONTACTS runtime permission is granted. "

    .line 3
    invoke-static {v0, v1, p1}, Landroid/support/v4/rv0;->const(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lorg/chromium/net/this;->if()Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;

    move-result-object v2

    iget-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$do;->do:Lorg/chromium/net/HttpNegotiateAuthenticator$for;

    iget-wide v3, p1, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->do:J

    iget-object v5, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$do;->if:Lorg/chromium/net/HttpNegotiateAuthenticator;

    const/16 v6, -0x155

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;->setResult(JLorg/chromium/net/HttpNegotiateAuthenticator;ILjava/lang/String;)V

    return-void

    .line 5
    :cond_0
    array-length v3, p1

    if-le v3, v1, :cond_1

    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    array-length p1, p1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "ERR_MISSING_AUTH_CREDENTIALS: Found %d accounts eligible for the kerberos authentication. Please fix the configuration by providing a single account."

    .line 8
    invoke-static {v0, p1, v1}, Landroid/support/v4/rv0;->const(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Lorg/chromium/net/this;->if()Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;

    move-result-object v2

    iget-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$do;->do:Lorg/chromium/net/HttpNegotiateAuthenticator$for;

    iget-wide v3, p1, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->do:J

    iget-object v5, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$do;->if:Lorg/chromium/net/HttpNegotiateAuthenticator;

    const/16 v6, -0x155

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;->setResult(JLorg/chromium/net/HttpNegotiateAuthenticator;ILjava/lang/String;)V

    return-void

    .line 10
    :cond_1
    iget-object v3, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$do;->if:Lorg/chromium/net/HttpNegotiateAuthenticator;

    invoke-static {}, Lorg/chromium/base/try;->case()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.USE_CREDENTIALS"

    invoke-virtual {v3, v4, v5, v1}, Lorg/chromium/net/HttpNegotiateAuthenticator;->if(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "ERR_MISCONFIGURED_AUTH_ENVIRONMENT: USE_CREDENTIALS permission not granted. Aborting authentication."

    .line 11
    invoke-static {v0, v1, p1}, Landroid/support/v4/rv0;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-static {}, Lorg/chromium/net/this;->if()Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;

    move-result-object v2

    iget-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$do;->do:Lorg/chromium/net/HttpNegotiateAuthenticator$for;

    iget-wide v3, p1, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->do:J

    iget-object v5, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$do;->if:Lorg/chromium/net/HttpNegotiateAuthenticator;

    const/16 v6, -0x157

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;->setResult(JLorg/chromium/net/HttpNegotiateAuthenticator;ILjava/lang/String;)V

    return-void

    .line 13
    :cond_2
    iget-object v0, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$do;->do:Lorg/chromium/net/HttpNegotiateAuthenticator$for;

    aget-object v4, p1, v2

    iput-object v4, v0, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->try:Landroid/accounts/Account;

    .line 14
    iget-object v3, v0, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->if:Landroid/accounts/AccountManager;

    iget-object v5, v0, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->new:Ljava/lang/String;

    iget-object v6, v0, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->for:Landroid/os/Bundle;

    const/4 v7, 0x1

    new-instance v8, Lorg/chromium/net/HttpNegotiateAuthenticator$if;

    iget-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$do;->if:Lorg/chromium/net/HttpNegotiateAuthenticator;

    invoke-direct {v8, p1, v0}, Lorg/chromium/net/HttpNegotiateAuthenticator$if;-><init>(Lorg/chromium/net/HttpNegotiateAuthenticator;Lorg/chromium/net/HttpNegotiateAuthenticator$for;)V

    new-instance v9, Landroid/os/Handler;

    .line 15
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->case()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v9, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    invoke-virtual/range {v3 .. v9}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "ERR_UNEXPECTED: Error while attempting to retrieve accounts."

    .line 17
    invoke-static {v0, p1, v1}, Landroid/support/v4/rv0;->const(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lorg/chromium/net/this;->if()Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;

    move-result-object v2

    iget-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$do;->do:Lorg/chromium/net/HttpNegotiateAuthenticator$for;

    iget-wide v3, p1, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->do:J

    iget-object v5, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$do;->if:Lorg/chromium/net/HttpNegotiateAuthenticator;

    const/16 v6, -0x9

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;->setResult(JLorg/chromium/net/HttpNegotiateAuthenticator;ILjava/lang/String;)V

    return-void
.end method
