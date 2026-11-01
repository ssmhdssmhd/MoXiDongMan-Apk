.class Lorg/bouncycastle/crypto/tls/import;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Lorg/bouncycastle/crypto/tls/switch;

.field private final for:Lorg/bouncycastle/crypto/tls/TlsCipher;

.field private final if:I

.field private new:J


# direct methods
.method public constructor <init>(ILorg/bouncycastle/crypto/tls/TlsCipher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/tls/switch;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/switch;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/import;->do:Lorg/bouncycastle/crypto/tls/switch;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/tls/import;->new:J

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    iput p1, p0, Lorg/bouncycastle/crypto/tls/import;->if:I

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/import;->for:Lorg/bouncycastle/crypto/tls/TlsCipher;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'cipher\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'epoch\' must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public do()J
    .locals 4

    iget-wide v0, p0, Lorg/bouncycastle/crypto/tls/import;->new:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/tls/import;->new:J

    return-wide v0
.end method

.method public for()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/import;->if:I

    return v0
.end method

.method public if()Lorg/bouncycastle/crypto/tls/TlsCipher;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/import;->for:Lorg/bouncycastle/crypto/tls/TlsCipher;

    return-object v0
.end method

.method public new()Lorg/bouncycastle/crypto/tls/switch;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/import;->do:Lorg/bouncycastle/crypto/tls/switch;

    return-object v0
.end method

.method public try()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/crypto/tls/import;->new:J

    return-wide v0
.end method
