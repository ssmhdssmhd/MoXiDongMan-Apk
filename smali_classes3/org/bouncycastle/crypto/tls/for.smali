.class abstract Lorg/bouncycastle/crypto/tls/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsContext;


# static fields
.field private static goto:J


# instance fields
.field private case:Lorg/bouncycastle/crypto/tls/TlsSession;

.field private do:Lorg/bouncycastle/crypto/prng/RandomGenerator;

.field private else:Ljava/lang/Object;

.field private for:Landroid/support/v4/mw1;

.field private if:Ljava/security/SecureRandom;

.field private new:Lorg/bouncycastle/crypto/tls/a;

.field private try:Lorg/bouncycastle/crypto/tls/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/support/v4/h72;->do()J

    move-result-wide v0

    sput-wide v0, Lorg/bouncycastle/crypto/tls/for;->goto:J

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;Landroid/support/v4/mw1;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/for;->new:Lorg/bouncycastle/crypto/tls/a;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/for;->try:Lorg/bouncycastle/crypto/tls/a;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/for;->case:Lorg/bouncycastle/crypto/tls/TlsSession;

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/for;->else:Ljava/lang/Object;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->throws(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v2, Landroid/support/v4/y00;

    invoke-direct {v2, v0}, Landroid/support/v4/y00;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v2, p0, Lorg/bouncycastle/crypto/tls/for;->do:Lorg/bouncycastle/crypto/prng/RandomGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/tls/for;->do()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/bouncycastle/crypto/prng/RandomGenerator;->addSeedMaterial(J)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/for;->do:Lorg/bouncycastle/crypto/prng/RandomGenerator;

    invoke-static {}, Landroid/support/v4/h72;->do()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/bouncycastle/crypto/prng/RandomGenerator;->addSeedMaterial(J)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/for;->do:Lorg/bouncycastle/crypto/prng/RandomGenerator;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/prng/RandomGenerator;->addSeedMaterial([B)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/for;->if:Ljava/security/SecureRandom;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/for;->for:Landroid/support/v4/mw1;

    return-void
.end method

.method private static declared-synchronized do()J
    .locals 5

    const-class v0, Lorg/bouncycastle/crypto/tls/for;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lorg/bouncycastle/crypto/tls/for;->goto:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lorg/bouncycastle/crypto/tls/for;->goto:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public exportKeyingMaterial(Ljava/lang/String;[BI)[B
    .locals 7

    if-eqz p2, :cond_1

    array-length v0, p2

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->z(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'context_value\' must have length less than 2^16 (or be null)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/for;->getSecurityParameters()Landroid/support/v4/mw1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/mw1;->final()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/support/v4/mw1;->for()[B

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/mw1;->catch()[B

    move-result-object v2

    array-length v3, v1

    array-length v4, v2

    add-int/2addr v3, v4

    if-eqz p2, :cond_2

    array-length v4, p2

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    :cond_2
    new-array v4, v3, [B

    array-length v5, v1

    const/4 v6, 0x0

    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v1, v6

    array-length v5, v2

    invoke-static {v2, v6, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v1, v2

    if-eqz p2, :cond_3

    array-length v2, p2

    invoke-static {v2, v4, v1}, Lorg/bouncycastle/crypto/tls/l0;->s0(I[BI)V

    add-int/lit8 v1, v1, 0x2

    array-length v2, p2

    invoke-static {p2, v6, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p2

    add-int/2addr v1, p2

    :cond_3
    if-ne v1, v3, :cond_4

    invoke-virtual {v0}, Landroid/support/v4/mw1;->case()[B

    move-result-object p2

    invoke-static {p0, p2, p1, v4, p3}, Lorg/bouncycastle/crypto/tls/l0;->do(Lorg/bouncycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "error in calculation of seed for export"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot export keying material without extended_master_secret"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public for(Lorg/bouncycastle/crypto/tls/TlsSession;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/for;->case:Lorg/bouncycastle/crypto/tls/TlsSession;

    return-void
.end method

.method public getClientVersion()Lorg/bouncycastle/crypto/tls/a;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/for;->new:Lorg/bouncycastle/crypto/tls/a;

    return-object v0
.end method

.method public getNonceRandomGenerator()Lorg/bouncycastle/crypto/prng/RandomGenerator;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/for;->do:Lorg/bouncycastle/crypto/prng/RandomGenerator;

    return-object v0
.end method

.method public getResumableSession()Lorg/bouncycastle/crypto/tls/TlsSession;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/for;->case:Lorg/bouncycastle/crypto/tls/TlsSession;

    return-object v0
.end method

.method public getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/for;->if:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getSecurityParameters()Landroid/support/v4/mw1;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/for;->for:Landroid/support/v4/mw1;

    return-object v0
.end method

.method public getServerVersion()Lorg/bouncycastle/crypto/tls/a;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/for;->try:Lorg/bouncycastle/crypto/tls/a;

    return-object v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/for;->else:Ljava/lang/Object;

    return-object v0
.end method

.method public if(Lorg/bouncycastle/crypto/tls/a;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/for;->new:Lorg/bouncycastle/crypto/tls/a;

    return-void
.end method

.method public new(Lorg/bouncycastle/crypto/tls/a;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/for;->try:Lorg/bouncycastle/crypto/tls/a;

    return-void
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/for;->else:Ljava/lang/Object;

    return-void
.end method
