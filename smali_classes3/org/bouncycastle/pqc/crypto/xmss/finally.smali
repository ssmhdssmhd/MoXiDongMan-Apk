.class public final Lorg/bouncycastle/pqc/crypto/xmss/finally;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;

.field private final for:I

.field private final if:Lorg/bouncycastle/pqc/crypto/xmss/this;

.field private final new:I


# direct methods
.method public constructor <init>(ILorg/bouncycastle/crypto/Digest;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const-string v0, "digest == null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/this;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-direct {v1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/catch;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/this;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/catch;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/finally;->if:Lorg/bouncycastle/pqc/crypto/xmss/this;

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/finally;->for:I

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->do()I

    move-result p2

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/finally;->new:I

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->if()Lorg/bouncycastle/crypto/Digest;

    move-result-object p2

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->for()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->else()I

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/this;->try()Lorg/bouncycastle/pqc/crypto/xmss/catch;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->for()I

    move-result v0

    invoke-static {p2, v1, v2, v0, p1}, Landroid/support/v4/zy;->if(Ljava/lang/String;IIII)Landroid/support/v4/zy;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/finally;->do:Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "height must be >= 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private do()I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x2

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/finally;->for:I

    if-gt v1, v2, :cond_1

    sub-int/2addr v2, v1

    rem-int/2addr v2, v0

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should never happen..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public case()Lorg/bouncycastle/pqc/crypto/xmss/this;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/finally;->if:Lorg/bouncycastle/pqc/crypto/xmss/this;

    return-object v0
.end method

.method public else()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/finally;->if:Lorg/bouncycastle/pqc/crypto/xmss/this;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/this;->try()Lorg/bouncycastle/pqc/crypto/xmss/catch;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->else()I

    move-result v0

    return v0
.end method

.method public for()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/finally;->if:Lorg/bouncycastle/pqc/crypto/xmss/this;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/this;->try()Lorg/bouncycastle/pqc/crypto/xmss/catch;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->if()I

    move-result v0

    return v0
.end method

.method public if()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/finally;->if:Lorg/bouncycastle/pqc/crypto/xmss/this;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/this;->try()Lorg/bouncycastle/pqc/crypto/xmss/catch;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->do()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public new()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/finally;->for:I

    return v0
.end method

.method public try()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/finally;->new:I

    return v0
.end method
