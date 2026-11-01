.class public final Lorg/bouncycastle/pqc/crypto/xmss/package;
.super Landroid/support/v4/fi2;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/xmss/XMSSStoreableObjectInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/xmss/package$if;
    }
.end annotation


# instance fields
.field private final break:[B

.field private final catch:[B

.field private final class:Lorg/bouncycastle/pqc/crypto/xmss/do;

.field private final else:Lorg/bouncycastle/pqc/crypto/xmss/finally;

.field private final goto:[B

.field private final this:[B


# direct methods
.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/package$if;)V
    .locals 8

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->do(Lorg/bouncycastle/pqc/crypto/xmss/package$if;)Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->if()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/support/v4/fi2;-><init>(ZLjava/lang/String;)V

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->do(Lorg/bouncycastle/pqc/crypto/xmss/package$if;)Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->else:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    const-string v0, "params == null"

    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->for()I

    move-result v0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->if(Lorg/bouncycastle/pqc/crypto/xmss/package$if;)[B

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->for(Lorg/bouncycastle/pqc/crypto/xmss/package$if;)Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object v1

    const-string v4, "xmss == null"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->new()I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v4/ib1;->do([BI)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->final(IJ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->goto:[B

    add-int/2addr v1, v0

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->this:[B

    add-int/2addr v1, v0

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->break:[B

    add-int/2addr v1, v0

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->catch:[B

    add-int/2addr v1, v0

    array-length v0, v2

    sub-int/2addr v0, v1

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object v0

    :try_start_0
    const-class v1, Lorg/bouncycastle/pqc/crypto/xmss/do;

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->else([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/do;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/do;->getIndex()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->for(Lorg/bouncycastle/pqc/crypto/xmss/package$if;)Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->if()Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/new;->if(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/do;->withWOTSDigest(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/pqc/crypto/xmss/do;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->class:Lorg/bouncycastle/pqc/crypto/xmss/do;

    goto/16 :goto_5

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "serialized BDS has wrong index"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

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

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of bounds"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->new(Lorg/bouncycastle/pqc/crypto/xmss/package$if;)[B

    move-result-object v5

    if-eqz v5, :cond_4

    array-length v2, v5

    if-ne v2, v0, :cond_3

    iput-object v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->goto:[B

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of secretKeySeed needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-array v2, v0, [B

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->goto:[B

    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->try(Lorg/bouncycastle/pqc/crypto/xmss/package$if;)[B

    move-result-object v2

    if-eqz v2, :cond_6

    array-length v4, v2

    if-ne v4, v0, :cond_5

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->this:[B

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of secretKeyPRF needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-array v2, v0, [B

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->this:[B

    :goto_1
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->case(Lorg/bouncycastle/pqc/crypto/xmss/package$if;)[B

    move-result-object v4

    if-eqz v4, :cond_8

    array-length v2, v4

    if-ne v2, v0, :cond_7

    iput-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->break:[B

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of publicSeed needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-array v2, v0, [B

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->break:[B

    :goto_2
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->else(Lorg/bouncycastle/pqc/crypto/xmss/package$if;)[B

    move-result-object v2

    if-eqz v2, :cond_a

    array-length v6, v2

    if-ne v6, v0, :cond_9

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->catch:[B

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of root needs to be equal size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->catch:[B

    :goto_3
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->goto(Lorg/bouncycastle/pqc/crypto/xmss/package$if;)Lorg/bouncycastle/pqc/crypto/xmss/do;

    move-result-object v0

    if-eqz v0, :cond_b

    :goto_4
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->class:Lorg/bouncycastle/pqc/crypto/xmss/do;

    goto :goto_5

    :cond_b
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->this(Lorg/bouncycastle/pqc/crypto/xmss/package$if;)I

    move-result v0

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->new()I

    move-result v2

    shl-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    if-ge v0, v1, :cond_c

    if-eqz v4, :cond_c

    if-eqz v5, :cond_c

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/do;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/bouncycastle/pqc/crypto/xmss/goto;

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->this(Lorg/bouncycastle/pqc/crypto/xmss/package$if;)I

    move-result v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/xmss/do;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;[B[BLorg/bouncycastle/pqc/crypto/xmss/goto;I)V

    goto :goto_4

    :cond_c
    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/do;

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->this(Lorg/bouncycastle/pqc/crypto/xmss/package$if;)I

    move-result p1

    invoke-direct {v0, v3, p1}, Lorg/bouncycastle/pqc/crypto/xmss/do;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;I)V

    goto :goto_4

    :goto_5
    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/package$if;Lorg/bouncycastle/pqc/crypto/xmss/package$do;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/package;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/package$if;)V

    return-void
.end method


# virtual methods
.method public break()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->goto:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->new([B)[B

    move-result-object v0

    return-object v0
.end method

.method public case()Lorg/bouncycastle/pqc/crypto/xmss/finally;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->else:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    return-object v0
.end method

.method public catch()J
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->case()Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->new()I

    move-result v0

    const-wide/16 v1, 0x1

    shl-long v0, v1, v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->new()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public else()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->break:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->new([B)[B

    move-result-object v0

    return-object v0
.end method

.method public for()Lorg/bouncycastle/pqc/crypto/xmss/do;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->class:Lorg/bouncycastle/pqc/crypto/xmss/do;

    return-object v0
.end method

.method public goto()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->catch:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->new([B)[B

    move-result-object v0

    return-object v0
.end method

.method public new()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->class:Lorg/bouncycastle/pqc/crypto/xmss/do;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/do;->getIndex()I

    move-result v0

    return v0
.end method

.method public this()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->this:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->new([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->else:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->for()I

    move-result v0

    add-int/lit8 v1, v0, 0x4

    add-int/2addr v1, v0

    add-int/2addr v1, v0

    add-int/2addr v1, v0

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->class:Lorg/bouncycastle/pqc/crypto/xmss/do;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/do;->getIndex()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/support/v4/ib1;->case(I[BI)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->goto:[B

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->case([B[BI)V

    add-int/2addr v3, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->this:[B

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->case([B[BI)V

    add-int/2addr v3, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->break:[B

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->case([B[BI)V

    add-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->catch:[B

    invoke-static {v1, v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->case([B[BI)V

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->class:Lorg/bouncycastle/pqc/crypto/xmss/do;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->native(Ljava/lang/Object;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1, v0}, Landroid/support/v4/q3;->default([B[B)[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error serializing bds state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public try()Lorg/bouncycastle/pqc/crypto/xmss/package;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->else:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->new()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->new()I

    move-result v1

    const/4 v2, 0x1

    shl-int v0, v2, v0

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->else:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->goto:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->while([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->this:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->throw([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->break:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->final([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->catch:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->super([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->class:Lorg/bouncycastle/pqc/crypto/xmss/do;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->break:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->goto:[B

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;-><init>()V

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/goto;

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/do;->getNextState([B[BLorg/bouncycastle/pqc/crypto/xmss/goto;)Lorg/bouncycastle/pqc/crypto/xmss/do;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->catch(Lorg/bouncycastle/pqc/crypto/xmss/do;)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->break()Lorg/bouncycastle/pqc/crypto/xmss/package;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->else:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->goto:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->while([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->this:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->throw([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->break:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->final([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->catch:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/package$if;->super([B)Lorg/bouncycastle/pqc/crypto/xmss/package$if;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/do;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/package;->else:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->new()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/do;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;I)V

    goto :goto_0
.end method
