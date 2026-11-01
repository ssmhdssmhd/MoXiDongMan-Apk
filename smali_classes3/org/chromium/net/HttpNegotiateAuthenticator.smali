.class public Lorg/chromium/net/HttpNegotiateAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/v4/lo0;
    value = "net::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;,
        Lorg/chromium/net/HttpNegotiateAuthenticator$if;,
        Lorg/chromium/net/HttpNegotiateAuthenticator$do;,
        Lorg/chromium/net/HttpNegotiateAuthenticator$for;
    }
.end annotation


# static fields
.field private static final for:Ljava/lang/String; = "net_auth"

.field public static final synthetic new:Z


# instance fields
.field private do:Landroid/os/Bundle;

.field private final if:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator;->if:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lorg/chromium/net/HttpNegotiateAuthenticator;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    new-instance v0, Lorg/chromium/net/HttpNegotiateAuthenticator;

    invoke-direct {v0, p0}, Lorg/chromium/net/HttpNegotiateAuthenticator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic do(Lorg/chromium/net/HttpNegotiateAuthenticator;Landroid/os/Bundle;Lorg/chromium/net/HttpNegotiateAuthenticator$for;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/chromium/net/HttpNegotiateAuthenticator;->for(Landroid/os/Bundle;Lorg/chromium/net/HttpNegotiateAuthenticator$for;)V

    return-void
.end method

.method private for(Landroid/os/Bundle;Lorg/chromium/net/HttpNegotiateAuthenticator$for;)V
    .locals 8

    const-string v0, "spnegoContext"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/HttpNegotiateAuthenticator;->do:Landroid/os/Bundle;

    const-string v0, "spnegoResult"

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, -0x9

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v1, -0x149

    const/16 v6, -0x149

    goto :goto_1

    :pswitch_1
    const/16 v1, -0x158

    const/16 v6, -0x158

    goto :goto_1

    :pswitch_2
    const/16 v1, -0x155

    const/16 v6, -0x155

    goto :goto_1

    :pswitch_3
    const/16 v1, -0x153

    const/16 v6, -0x153

    goto :goto_1

    :pswitch_4
    const/16 v1, -0x152

    const/16 v6, -0x152

    goto :goto_1

    :pswitch_5
    const/16 v1, -0x140

    const/16 v6, -0x140

    goto :goto_1

    :pswitch_6
    const/16 v1, -0x156

    const/16 v6, -0x156

    goto :goto_1

    :pswitch_7
    const/4 v1, -0x3

    const/4 v6, -0x3

    goto :goto_1

    :goto_0
    :pswitch_8
    const/16 v6, -0x9

    goto :goto_1

    :pswitch_9
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 3
    :goto_1
    invoke-static {}, Lorg/chromium/net/this;->if()Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;

    move-result-object v2

    iget-wide v3, p2, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->do:J

    const-string p2, "authtoken"

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, p0

    .line 5
    invoke-interface/range {v2 .. v7}, Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;->setResult(JLorg/chromium/net/HttpNegotiateAuthenticator;ILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private new(Landroid/content/Context;Landroid/app/Activity;Lorg/chromium/net/HttpNegotiateAuthenticator$for;[Ljava/lang/String;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p3

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x17

    if-ge v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const-string v4, "android.permission.MANAGE_ACCOUNTS"

    goto :goto_1

    :cond_1
    const-string v4, "android.permission.GET_ACCOUNTS"

    :goto_1
    move-object/from16 v5, p1

    .line 2
    invoke-virtual {v6, v5, v4, v1}, Lorg/chromium/net/HttpNegotiateAuthenticator;->if(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v4, v1, v3

    const-string v2, "net_auth"

    const-string v3, "ERR_MISCONFIGURED_AUTH_ENVIRONMENT: %s permission not granted. Aborting authentication"

    .line 3
    invoke-static {v2, v3, v1}, Landroid/support/v4/rv0;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lorg/chromium/net/this;->if()Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;

    move-result-object v1

    iget-wide v2, v0, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->do:J

    const/16 v4, -0x157

    const/4 v5, 0x0

    move-object v0, v1

    move-wide v1, v2

    move-object/from16 v3, p0

    invoke-interface/range {v0 .. v5}, Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;->setResult(JLorg/chromium/net/HttpNegotiateAuthenticator;ILjava/lang/String;)V

    return-void

    .line 5
    :cond_2
    iget-object v7, v0, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->if:Landroid/accounts/AccountManager;

    iget-object v8, v6, Lorg/chromium/net/HttpNegotiateAuthenticator;->if:Ljava/lang/String;

    iget-object v9, v0, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->new:Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v13, v0, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->for:Landroid/os/Bundle;

    new-instance v14, Lorg/chromium/net/HttpNegotiateAuthenticator$if;

    invoke-direct {v14, v6, v0}, Lorg/chromium/net/HttpNegotiateAuthenticator$if;-><init>(Lorg/chromium/net/HttpNegotiateAuthenticator;Lorg/chromium/net/HttpNegotiateAuthenticator$for;)V

    new-instance v15, Landroid/os/Handler;

    .line 6
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->case()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v15, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v10, p4

    move-object/from16 v11, p2

    .line 7
    invoke-virtual/range {v7 .. v15}, Landroid/accounts/AccountManager;->getAuthTokenByFeatures(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method private try(Landroid/content/Context;Lorg/chromium/net/HttpNegotiateAuthenticator$for;[Ljava/lang/String;)V
    .locals 7

    const-string v0, "android.permission.GET_ACCOUNTS"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lorg/chromium/net/HttpNegotiateAuthenticator;->if(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p3, "net_auth"

    const-string v0, "ERR_MISCONFIGURED_AUTH_ENVIRONMENT: GET_ACCOUNTS permission not granted. Aborting authentication."

    .line 2
    invoke-static {p3, v0, p1}, Landroid/support/v4/rv0;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lorg/chromium/net/this;->if()Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;

    move-result-object v1

    iget-wide v2, p2, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->do:J

    const/16 v5, -0x157

    const/4 v6, 0x0

    move-object v4, p0

    invoke-interface/range {v1 .. v6}, Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;->setResult(JLorg/chromium/net/HttpNegotiateAuthenticator;ILjava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p2, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->if:Landroid/accounts/AccountManager;

    iget-object v0, p0, Lorg/chromium/net/HttpNegotiateAuthenticator;->if:Ljava/lang/String;

    new-instance v1, Lorg/chromium/net/HttpNegotiateAuthenticator$do;

    invoke-direct {v1, p0, p2}, Lorg/chromium/net/HttpNegotiateAuthenticator$do;-><init>(Lorg/chromium/net/HttpNegotiateAuthenticator;Lorg/chromium/net/HttpNegotiateAuthenticator$for;)V

    new-instance p2, Landroid/os/Handler;

    .line 5
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->case()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    invoke-virtual {p1, v0, p3, v1, p2}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method


# virtual methods
.method public getNextAuthToken(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-static {}, Lorg/chromium/base/try;->case()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/chromium/net/HttpNegotiateAuthenticator$for;

    invoke-direct {v1}, Lorg/chromium/net/HttpNegotiateAuthenticator$for;-><init>()V

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPNEGO:HOSTBASED:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v1, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->new:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p3

    iput-object p3, v1, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->if:Landroid/accounts/AccountManager;

    .line 5
    iput-wide p1, v1, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->do:J

    const-string p1, "SPNEGO"

    .line 6
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, v1, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->for:Landroid/os/Bundle;

    if-eqz p4, :cond_0

    const-string p3, "incomingAuthToken"

    .line 8
    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    iget-object p2, p0, Lorg/chromium/net/HttpNegotiateAuthenticator;->do:Landroid/os/Bundle;

    if-eqz p2, :cond_1

    .line 10
    iget-object p3, v1, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->for:Landroid/os/Bundle;

    const-string p4, "spnegoContext"

    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 11
    :cond_1
    iget-object p2, v1, Lorg/chromium/net/HttpNegotiateAuthenticator$for;->for:Landroid/os/Bundle;

    const-string p3, "canDelegate"

    invoke-virtual {p2, p3, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->break()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_2

    .line 13
    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/net/HttpNegotiateAuthenticator;->try(Landroid/content/Context;Lorg/chromium/net/HttpNegotiateAuthenticator$for;[Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-direct {p0, v0, p2, v1, p1}, Lorg/chromium/net/HttpNegotiateAuthenticator;->new(Landroid/content/Context;Landroid/app/Activity;Lorg/chromium/net/HttpNegotiateAuthenticator$for;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public if(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p3, v1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p1, p2, p3, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
