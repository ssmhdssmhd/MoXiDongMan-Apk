.class public Landroid/support/v4/w5;
.super Lorg/bouncycastle/jcajce/util/try;
.source "SourceFile"


# static fields
.field private static volatile if:Ljava/security/Provider;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/support/v4/w5;->do()Ljava/security/Provider;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/util/try;-><init>(Ljava/security/Provider;)V

    return-void
.end method

.method private static declared-synchronized do()Ljava/security/Provider;
    .locals 2

    const-class v0, Landroid/support/v4/w5;

    monitor-enter v0

    :try_start_0
    const-string v1, "BC"

    invoke-static {v1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "BC"

    invoke-static {v1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    sget-object v1, Landroid/support/v4/w5;->if:Ljava/security/Provider;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/support/v4/w5;->if:Ljava/security/Provider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_2
    new-instance v1, Lorg/bouncycastle/jce/provider/do;

    invoke-direct {v1}, Lorg/bouncycastle/jce/provider/do;-><init>()V

    sput-object v1, Landroid/support/v4/w5;->if:Ljava/security/Provider;

    sget-object v1, Landroid/support/v4/w5;->if:Ljava/security/Provider;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
