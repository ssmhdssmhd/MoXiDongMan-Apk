.class public Landroid/support/v4/mr1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# static fields
.field public static final case:[B

.field public static final else:[B

.field private static final new:B = 0x36t

.field private static final try:B = 0x5ct


# instance fields
.field private do:Lorg/bouncycastle/crypto/Digest;

.field private for:[B

.field private if:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x36

    const/16 v1, 0x30

    invoke-static {v0, v1}, Landroid/support/v4/mr1;->do(BI)[B

    move-result-object v0

    sput-object v0, Landroid/support/v4/mr1;->case:[B

    const/16 v0, 0x5c

    invoke-static {v0, v1}, Landroid/support/v4/mr1;->do(BI)[B

    move-result-object v0

    sput-object v0, Landroid/support/v4/mr1;->else:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/mr1;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    const/16 p1, 0x28

    goto :goto_0

    :cond_0
    const/16 p1, 0x30

    :goto_0
    iput p1, p0, Landroid/support/v4/mr1;->if:I

    return-void
.end method

.method private static do(BI)[B
    .locals 0

    new-array p1, p1, [B

    invoke-static {p1, p0}, Landroid/support/v4/q3;->c([BB)V

    return-object p1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6

    iget-object v0, p0, Landroid/support/v4/mr1;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Landroid/support/v4/mr1;->do:Lorg/bouncycastle/crypto/Digest;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v2, p0, Landroid/support/v4/mr1;->do:Lorg/bouncycastle/crypto/Digest;

    iget-object v4, p0, Landroid/support/v4/mr1;->for:[B

    array-length v5, v4

    invoke-interface {v2, v4, v3, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Landroid/support/v4/mr1;->do:Lorg/bouncycastle/crypto/Digest;

    sget-object v4, Landroid/support/v4/mr1;->else:[B

    iget v5, p0, Landroid/support/v4/mr1;->if:I

    invoke-interface {v2, v4, v3, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Landroid/support/v4/mr1;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, v1, v3, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Landroid/support/v4/mr1;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v4/mr1;->reset()V

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v4/mr1;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/SSL3MAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/mr1;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    return v0
.end method

.method public if()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/mr1;->do:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    check-cast p1, Landroid/support/v4/gr0;

    invoke-virtual {p1}, Landroid/support/v4/gr0;->do()[B

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/mr1;->for:[B

    invoke-virtual {p0}, Landroid/support/v4/mr1;->reset()V

    return-void
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/mr1;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v0, p0, Landroid/support/v4/mr1;->do:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Landroid/support/v4/mr1;->for:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Landroid/support/v4/mr1;->do:Lorg/bouncycastle/crypto/Digest;

    sget-object v1, Landroid/support/v4/mr1;->case:[B

    iget v2, p0, Landroid/support/v4/mr1;->if:I

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/mr1;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/mr1;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method
