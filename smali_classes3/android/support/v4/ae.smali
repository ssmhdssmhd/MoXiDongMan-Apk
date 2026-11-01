.class public Landroid/support/v4/ae;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/crypto/tls/goto;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/tls/goto;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/tls/goto;-><init>()V

    iput-object v0, p0, Landroid/support/v4/ae;->do:Lorg/bouncycastle/crypto/tls/goto;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ae;->do:Lorg/bouncycastle/crypto/tls/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/goto;->if()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public do([B)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/ae;->do:Lorg/bouncycastle/crypto/tls/goto;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/tls/goto;->do([BII)V

    return-void
.end method

.method public if([B)I
    .locals 3

    iget-object v0, p0, Landroid/support/v4/ae;->do:Lorg/bouncycastle/crypto/tls/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/goto;->if()I

    move-result v0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/ae;->do:Lorg/bouncycastle/crypto/tls/goto;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0, v2}, Lorg/bouncycastle/crypto/tls/goto;->try([BIII)V

    return v0
.end method

.method public read()I
    .locals 3

    iget-object v0, p0, Landroid/support/v4/ae;->do:Lorg/bouncycastle/crypto/tls/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/goto;->if()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/ae;->do:Lorg/bouncycastle/crypto/tls/goto;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/goto;->this(II)[B

    move-result-object v0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/support/v4/ae;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/ae;->do:Lorg/bouncycastle/crypto/tls/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/goto;->if()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Landroid/support/v4/ae;->do:Lorg/bouncycastle/crypto/tls/goto;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/bouncycastle/crypto/tls/goto;->goto([BIII)V

    return p3
.end method

.method public skip(J)J
    .locals 0

    long-to-int p2, p1

    iget-object p1, p0, Landroid/support/v4/ae;->do:Lorg/bouncycastle/crypto/tls/goto;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/goto;->if()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p2, p0, Landroid/support/v4/ae;->do:Lorg/bouncycastle/crypto/tls/goto;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/crypto/tls/goto;->else(I)V

    int-to-long p1, p1

    return-wide p1
.end method
