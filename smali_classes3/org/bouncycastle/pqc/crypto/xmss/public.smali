.class public final Lorg/bouncycastle/pqc/crypto/xmss/public;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;

.field private final for:I

.field private final if:Lorg/bouncycastle/pqc/crypto/xmss/finally;

.field private final new:I


# direct methods
.method public constructor <init>(IILorg/bouncycastle/crypto/Digest;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/public;->for:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/public;->new:I

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/public;->this(II)I

    move-result p1

    invoke-direct {v0, p1, p3}, Lorg/bouncycastle/pqc/crypto/xmss/finally;-><init>(ILorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/public;->if:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/public;->do()Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/public;->if()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/public;->else()I

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/public;->try()I

    move-result v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/public;->for()I

    move-result v4

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/support/v4/yy;->if(Ljava/lang/String;IIIII)Landroid/support/v4/yy;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/public;->do:Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;

    return-void
.end method

.method private static this(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x2

    if-lt p0, v0, :cond_2

    rem-int v0, p0, p1

    if-nez v0, :cond_1

    div-int/2addr p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "height / layers must be greater than 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "layers must divide totalHeight without remainder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "totalHeight must be > 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public case()Lorg/bouncycastle/pqc/crypto/xmss/this;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/public;->if:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->case()Lorg/bouncycastle/pqc/crypto/xmss/this;

    move-result-object v0

    return-object v0
.end method

.method public do()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/public;->if:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->if()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public else()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/public;->if:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->else()I

    move-result v0

    return v0
.end method

.method public for()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/public;->for:I

    return v0
.end method

.method public goto()Lorg/bouncycastle/pqc/crypto/xmss/finally;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/public;->if:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    return-object v0
.end method

.method public if()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/public;->if:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->for()I

    move-result v0

    return v0
.end method

.method public new()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/public;->new:I

    return v0
.end method

.method public try()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/public;->if:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->case()Lorg/bouncycastle/pqc/crypto/xmss/this;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/this;->try()Lorg/bouncycastle/pqc/crypto/xmss/catch;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/catch;->for()I

    move-result v0

    return v0
.end method
