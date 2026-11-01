.class public final Lorg/bouncycastle/pqc/crypto/xmss/continue;
.super Lorg/bouncycastle/pqc/crypto/xmss/abstract;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/xmss/XMSSStoreableObjectInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/xmss/continue$if;
    }
.end annotation


# instance fields
.field private final new:I

.field private final try:[B


# direct methods
.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/continue$if;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/abstract;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;)V

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/continue$if;->this(Lorg/bouncycastle/pqc/crypto/xmss/continue$if;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/continue;->new:I

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/abstract;->if()Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->for()I

    move-result v0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/continue$if;->break(Lorg/bouncycastle/pqc/crypto/xmss/continue$if;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v1, p1

    if-ne v1, v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/continue;->try:[B

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of random needs to be equal to size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-array p1, v0, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/continue;->try:[B

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/continue$if;Lorg/bouncycastle/pqc/crypto/xmss/continue$do;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/continue;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/continue$if;)V

    return-void
.end method


# virtual methods
.method public new()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/continue;->new:I

    return v0
.end method

.method public toByteArray()[B
    .locals 7

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/abstract;->if()Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->for()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/abstract;->if()Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->case()Lorg/bouncycastle/pqc/crypto/xmss/this;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/this;->try()Lorg/bouncycastle/pqc/crypto/xmss/catch;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->for()I

    move-result v1

    mul-int v1, v1, v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/abstract;->if()Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->new()I

    move-result v2

    mul-int v2, v2, v0

    add-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    new-array v1, v3, [B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/continue;->new:I

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/support/v4/ib1;->case(I[BI)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/continue;->try:[B

    const/4 v4, 0x4

    invoke-static {v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->case([B[BI)V

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/abstract;->for()Lorg/bouncycastle/pqc/crypto/xmss/final;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/final;->do()[[B

    move-result-object v2

    const/4 v5, 0x0

    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_0

    aget-object v6, v2, v5

    invoke-static {v1, v6, v4}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->case([B[BI)V

    add-int/2addr v4, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/abstract;->do()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/abstract;->do()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/default;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getValue()[B

    move-result-object v2

    invoke-static {v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->case([B[BI)V

    add-int/2addr v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public try()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/continue;->try:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->new([B)[B

    move-result-object v0

    return-object v0
.end method
