.class public Lorg/bouncycastle/crypto/tls/transient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public do:J

.field public if:[B


# direct methods
.method public constructor <init>(J[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/bouncycastle/crypto/tls/transient;->do:J

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/transient;->if:[B

    return-void
.end method

.method public static new(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/transient;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->Y(Ljava/io/InputStream;)J

    move-result-wide v0

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->P(Ljava/io/InputStream;)[B

    move-result-object p0

    new-instance v2, Lorg/bouncycastle/crypto/tls/transient;

    invoke-direct {v2, v0, v1, p0}, Lorg/bouncycastle/crypto/tls/transient;-><init>(J[B)V

    return-object v2
.end method


# virtual methods
.method public do(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/bouncycastle/crypto/tls/transient;->do:J

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/crypto/tls/l0;->z0(JLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/transient;->if:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/tls/l0;->o0([BLjava/io/OutputStream;)V

    return-void
.end method

.method public for()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/crypto/tls/transient;->do:J

    return-wide v0
.end method

.method public if()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/transient;->if:[B

    return-object v0
.end method
