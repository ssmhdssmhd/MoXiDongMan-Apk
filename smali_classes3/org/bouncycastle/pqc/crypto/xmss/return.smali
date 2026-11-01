.class public final Lorg/bouncycastle/pqc/crypto/xmss/return;
.super Landroid/support/v4/ii2;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/xmss/XMSSStoreableObjectInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/xmss/return$if;
    }
.end annotation


# instance fields
.field private final case:[B

.field private final else:[B

.field private final for:Lorg/bouncycastle/pqc/crypto/xmss/public;

.field private final goto:[B

.field private final new:J

.field private final this:Lorg/bouncycastle/pqc/crypto/xmss/if;

.field private final try:[B


# direct methods
.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/return$if;)V
    .locals 8

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->do(Lorg/bouncycastle/pqc/crypto/xmss/return$if;)Lorg/bouncycastle/pqc/crypto/xmss/public;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/public;->do()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/support/v4/ii2;-><init>(ZLjava/lang/String;)V

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->do(Lorg/bouncycastle/pqc/crypto/xmss/return$if;)Lorg/bouncycastle/pqc/crypto/xmss/public;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->for:Lorg/bouncycastle/pqc/crypto/xmss/public;

    const-string v0, "params == null"

    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/public;->if()I

    move-result v0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->if(Lorg/bouncycastle/pqc/crypto/xmss/return$if;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->for(Lorg/bouncycastle/pqc/crypto/xmss/return$if;)Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object v2

    const-string v4, "xmss == null"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/public;->for()I

    move-result v2

    add-int/lit8 v3, v2, 0x7

    div-int/lit8 v3, v3, 0x8

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->if([BII)J

    move-result-wide v5

    iput-wide v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->new:J

    invoke-static {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->final(IJ)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/2addr v3, v4

    invoke-static {v1, v3, v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->try:[B

    add-int/2addr v3, v0

    invoke-static {v1, v3, v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->case:[B

    add-int/2addr v3, v0

    invoke-static {v1, v3, v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->else:[B

    add-int/2addr v3, v0

    invoke-static {v1, v3, v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->goto:[B

    add-int/2addr v3, v0

    array-length v0, v1

    sub-int/2addr v0, v3

    invoke-static {v1, v3, v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object v0

    :try_start_0
    const-class v1, Lorg/bouncycastle/pqc/crypto/xmss/if;

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->else([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/if;

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->for(Lorg/bouncycastle/pqc/crypto/xmss/return$if;)Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->if()Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/new;->if(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/if;->withWOTSDigest(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/pqc/crypto/xmss/if;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->this:Lorg/bouncycastle/pqc/crypto/xmss/if;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of bounds"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->new(Lorg/bouncycastle/pqc/crypto/xmss/return$if;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->new:J

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->try(Lorg/bouncycastle/pqc/crypto/xmss/return$if;)[B

    move-result-object v7

    if-eqz v7, :cond_3

    array-length v1, v7

    if-ne v1, v0, :cond_2

    iput-object v7, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->try:[B

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of secretKeySeed needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->try:[B

    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->case(Lorg/bouncycastle/pqc/crypto/xmss/return$if;)[B

    move-result-object v1

    if-eqz v1, :cond_5

    array-length v2, v1

    if-ne v2, v0, :cond_4

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->case:[B

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of secretKeyPRF needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->case:[B

    :goto_1
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->else(Lorg/bouncycastle/pqc/crypto/xmss/return$if;)[B

    move-result-object v6

    if-eqz v6, :cond_7

    array-length v1, v6

    if-ne v1, v0, :cond_6

    iput-object v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->else:[B

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of publicSeed needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->else:[B

    :goto_2
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->goto(Lorg/bouncycastle/pqc/crypto/xmss/return$if;)[B

    move-result-object v1

    if-eqz v1, :cond_9

    array-length v2, v1

    if-ne v2, v0, :cond_8

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->goto:[B

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of root needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->goto:[B

    :goto_3
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->this(Lorg/bouncycastle/pqc/crypto/xmss/return$if;)Lorg/bouncycastle/pqc/crypto/xmss/if;

    move-result-object v0

    if-eqz v0, :cond_a

    :goto_4
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->this:Lorg/bouncycastle/pqc/crypto/xmss/if;

    goto :goto_5

    :cond_a
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->new(Lorg/bouncycastle/pqc/crypto/xmss/return$if;)J

    move-result-wide v0

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/public;->for()I

    move-result v2

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->final(IJ)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v6, :cond_b

    if-eqz v7, :cond_b

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/if;

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->new(Lorg/bouncycastle/pqc/crypto/xmss/return$if;)J

    move-result-wide v4

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/xmss/if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/public;J[B[B)V

    goto :goto_4

    :cond_b
    new-instance p1, Lorg/bouncycastle/pqc/crypto/xmss/if;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/xmss/if;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->this:Lorg/bouncycastle/pqc/crypto/xmss/if;

    :goto_5
    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/return$if;Lorg/bouncycastle/pqc/crypto/xmss/return$do;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/return;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/return$if;)V

    return-void
.end method


# virtual methods
.method public break()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->try:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->new([B)[B

    move-result-object v0

    return-object v0
.end method

.method public case()Lorg/bouncycastle/pqc/crypto/xmss/public;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->for:Lorg/bouncycastle/pqc/crypto/xmss/public;

    return-object v0
.end method

.method public catch()J
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/return;->case()Lorg/bouncycastle/pqc/crypto/xmss/public;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/public;->for()I

    move-result v0

    const-wide/16 v1, 0x1

    shl-long v0, v1, v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/return;->new()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public else()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->else:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->new([B)[B

    move-result-object v0

    return-object v0
.end method

.method public for()Lorg/bouncycastle/pqc/crypto/xmss/if;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->this:Lorg/bouncycastle/pqc/crypto/xmss/if;

    return-object v0
.end method

.method public goto()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->goto:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->new([B)[B

    move-result-object v0

    return-object v0
.end method

.method public new()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->new:J

    return-wide v0
.end method

.method public this()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->case:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->new([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->for:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/public;->if()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->for:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/public;->for()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int v2, v1, v0

    add-int/2addr v2, v0

    add-int/2addr v2, v0

    add-int/2addr v2, v0

    new-array v2, v2, [B

    iget-wide v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->new:J

    invoke-static {v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->public(JI)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->case([B[BI)V

    add-int/2addr v1, v4

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->try:[B

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->case([B[BI)V

    add-int/2addr v1, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->case:[B

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->case([B[BI)V

    add-int/2addr v1, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->else:[B

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->case([B[BI)V

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->goto:[B

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->case([B[BI)V

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->this:Lorg/bouncycastle/pqc/crypto/xmss/if;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->native(Ljava/lang/Object;)[B

    move-result-object v0

    invoke-static {v2, v0}, Landroid/support/v4/q3;->default([B[B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error serializing bds state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public try()Lorg/bouncycastle/pqc/crypto/xmss/return;
    .locals 8

    new-instance v7, Lorg/bouncycastle/pqc/crypto/xmss/if;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->this:Lorg/bouncycastle/pqc/crypto/xmss/if;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->for:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/return;->new()J

    move-result-wide v3

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->else:[B

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->try:[B

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/xmss/if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/if;Lorg/bouncycastle/pqc/crypto/xmss/public;J[B[B)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->for:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/public;)V

    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->new:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->class(J)Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->try:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->while([B)Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->case:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->throw([B)Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->else:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->final([B)Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/return;->goto:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->super([B)Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->catch(Lorg/bouncycastle/pqc/crypto/xmss/if;)Lorg/bouncycastle/pqc/crypto/xmss/return$if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/return$if;->break()Lorg/bouncycastle/pqc/crypto/xmss/return;

    move-result-object v0

    return-object v0
.end method
