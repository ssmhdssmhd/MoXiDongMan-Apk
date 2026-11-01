.class public final Lorg/bouncycastle/pqc/crypto/xmss/static;
.super Landroid/support/v4/ii2;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/xmss/XMSSStoreableObjectInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/xmss/static$if;
    }
.end annotation


# instance fields
.field private final for:Lorg/bouncycastle/pqc/crypto/xmss/public;

.field private final new:[B

.field private final try:[B


# direct methods
.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/static$if;)V
    .locals 4

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->do(Lorg/bouncycastle/pqc/crypto/xmss/static$if;)Lorg/bouncycastle/pqc/crypto/xmss/public;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/public;->do()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/support/v4/ii2;-><init>(ZLjava/lang/String;)V

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->do(Lorg/bouncycastle/pqc/crypto/xmss/static$if;)Lorg/bouncycastle/pqc/crypto/xmss/public;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/static;->for:Lorg/bouncycastle/pqc/crypto/xmss/public;

    const-string v2, "params == null"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/public;->if()I

    move-result v0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->if(Lorg/bouncycastle/pqc/crypto/xmss/static$if;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    add-int p1, v0, v0

    array-length v3, v2

    if-ne v3, p1, :cond_0

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/static;->new:[B

    add-int/lit8 p1, v0, 0x0

    invoke-static {v2, p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/static;->try:[B

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "public key has wrong size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->for(Lorg/bouncycastle/pqc/crypto/xmss/static$if;)[B

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v2, v1

    if-ne v2, v0, :cond_2

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/static;->new:[B

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "length of root must be equal to length of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/static;->new:[B

    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->new(Lorg/bouncycastle/pqc/crypto/xmss/static$if;)[B

    move-result-object p1

    if-eqz p1, :cond_5

    array-length v1, p1

    if-ne v1, v0, :cond_4

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/static;->try:[B

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "length of publicSeed must be equal to length of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-array p1, v0, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/static;->try:[B

    :goto_1
    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/static$if;Lorg/bouncycastle/pqc/crypto/xmss/static$do;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/static;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/static$if;)V

    return-void
.end method


# virtual methods
.method public for()Lorg/bouncycastle/pqc/crypto/xmss/public;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/static;->for:Lorg/bouncycastle/pqc/crypto/xmss/public;

    return-object v0
.end method

.method public new()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/static;->try:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->new([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/static;->for:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/public;->if()I

    move-result v0

    add-int v1, v0, v0

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/static;->new:[B

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->case([B[BI)V

    add-int/2addr v0, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/static;->try:[B

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->case([B[BI)V

    return-object v1
.end method

.method public try()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/static;->new:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->new([B)[B

    move-result-object v0

    return-object v0
.end method
