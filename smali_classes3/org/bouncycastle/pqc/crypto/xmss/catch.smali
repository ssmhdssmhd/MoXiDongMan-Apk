.class final Lorg/bouncycastle/pqc/crypto/xmss/catch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final case:I

.field private final do:Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;

.field private final else:I

.field private final for:I

.field private final if:Lorg/bouncycastle/crypto/Digest;

.field private final new:I

.field private final try:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "digest == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/catch;->if:Lorg/bouncycastle/crypto/Digest;

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->break(Lorg/bouncycastle/crypto/Digest;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/catch;->for:I

    const/16 v1, 0x10

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/catch;->new:I

    mul-int/lit8 v2, v0, 0x8

    int-to-double v2, v2

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->while(I)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/catch;->case:I

    const/4 v3, 0x1

    rsub-int/lit8 v4, v3, 0x10

    mul-int v4, v4, v2

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->while(I)I

    move-result v4

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->while(I)I

    move-result v5

    div-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v4, v3

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/catch;->else:I

    add-int/2addr v2, v4

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/catch;->try:I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/break;->if(Ljava/lang/String;III)Lorg/bouncycastle/pqc/crypto/xmss/break;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/catch;->do:Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find OID for digest algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public case()Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/catch;->do:Lorg/bouncycastle/pqc/crypto/xmss/XMSSOid;

    return-object v0
.end method

.method public do()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/catch;->if:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public else()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/catch;->new:I

    return v0
.end method

.method public for()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/catch;->try:I

    return v0
.end method

.method public if()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/catch;->for:I

    return v0
.end method

.method public new()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/catch;->case:I

    return v0
.end method

.method public try()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/catch;->else:I

    return v0
.end method
