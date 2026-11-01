.class Lorg/bouncycastle/crypto/signers/do$if;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/signers/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/crypto/signers/do$do;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/signers/do$if;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized do(Lorg/bouncycastle/crypto/params/if;Lorg/bouncycastle/crypto/params/for;)[B
    .locals 10

    monitor-enter p0

    const/16 v0, 0x40

    :try_start_0
    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v6, 0x0

    iget v7, p0, Ljava/io/ByteArrayOutputStream;->count:I

    const/4 v9, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v8, v0

    invoke-virtual/range {v1 .. v9}, Lorg/bouncycastle/crypto/params/if;->try(ILorg/bouncycastle/crypto/params/for;[B[BII[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/do$if;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized if(Lorg/bouncycastle/crypto/params/for;[B)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/for;->for()[B

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v5, 0x0

    iget v6, p0, Ljava/io/ByteArrayOutputStream;->count:I

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/rfc8032/do;->l([BI[BI[BII)Z

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/do$if;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/support/v4/q3;->e([BIIB)V

    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
