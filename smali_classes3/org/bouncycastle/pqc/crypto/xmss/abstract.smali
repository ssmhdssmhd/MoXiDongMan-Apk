.class public Lorg/bouncycastle/pqc/crypto/xmss/abstract;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/xmss/XMSSStoreableObjectInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;
    }
.end annotation


# instance fields
.field private final do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

.field private final for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/pqc/crypto/xmss/default;",
            ">;"
        }
    .end annotation
.end field

.field private final if:Lorg/bouncycastle/pqc/crypto/xmss/final;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->do(Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;)Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    const-string v1, "params == null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->for()I

    move-result v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->case()Lorg/bouncycastle/pqc/crypto/xmss/this;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/this;->try()Lorg/bouncycastle/pqc/crypto/xmss/catch;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->for()I

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->new()I

    move-result v3

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->if(Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;)[B

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    mul-int p1, v2, v1

    mul-int v0, v3, v1

    add-int/2addr p1, v0

    array-length v0, v4

    if-ne v0, p1, :cond_1

    new-array p1, v2, [[B

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-static {v4, v6, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object v7

    aput-object v7, p1, v0

    add-int/2addr v6, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/final;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->case()Lorg/bouncycastle/pqc/crypto/xmss/this;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/this;->try()Lorg/bouncycastle/pqc/crypto/xmss/catch;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lorg/bouncycastle/pqc/crypto/xmss/final;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/catch;[[B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract;->if:Lorg/bouncycastle/pqc/crypto/xmss/final;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v5, v3, :cond_6

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/default;

    invoke-static {v4, v6, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->this([BII)[B

    move-result-object v2

    invoke-direct {v0, v5, v2}, Lorg/bouncycastle/pqc/crypto/xmss/default;-><init>(I[B)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "signature has wrong size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->for(Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;)Lorg/bouncycastle/pqc/crypto/xmss/final;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/final;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->case()Lorg/bouncycastle/pqc/crypto/xmss/this;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/this;->try()Lorg/bouncycastle/pqc/crypto/xmss/catch;

    move-result-object v0

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x1

    aput v1, v6, v7

    aput v2, v6, v5

    const-class v1, B

    invoke-static {v1, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    invoke-direct {v4, v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/final;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/catch;[[B)V

    :goto_2
    iput-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract;->if:Lorg/bouncycastle/pqc/crypto/xmss/final;

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->new(Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of authPath needs to be equal to height of tree"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    :goto_3
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract;->for:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public do()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/pqc/crypto/xmss/default;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract;->for:Ljava/util/List;

    return-object v0
.end method

.method public for()Lorg/bouncycastle/pqc/crypto/xmss/final;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract;->if:Lorg/bouncycastle/pqc/crypto/xmss/final;

    return-object v0
.end method

.method public if()Lorg/bouncycastle/pqc/crypto/xmss/finally;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    return-object v0
.end method

.method public toByteArray()[B
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->for()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->case()Lorg/bouncycastle/pqc/crypto/xmss/this;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/this;->try()Lorg/bouncycastle/pqc/crypto/xmss/catch;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->for()I

    move-result v1

    mul-int v1, v1, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract;->do:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->new()I

    move-result v2

    mul-int v2, v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract;->if:Lorg/bouncycastle/pqc/crypto/xmss/final;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/final;->do()[[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    array-length v6, v2

    if-ge v4, v6, :cond_0

    aget-object v6, v2, v4

    invoke-static {v1, v6, v5}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->case([B[BI)V

    add-int/2addr v5, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract;->for:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/abstract;->for:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/default;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getValue()[B

    move-result-object v2

    invoke-static {v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->case([B[BI)V

    add-int/2addr v5, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method
