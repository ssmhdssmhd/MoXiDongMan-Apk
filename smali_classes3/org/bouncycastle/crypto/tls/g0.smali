.class public Lorg/bouncycastle/crypto/tls/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final do:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    invoke-static {v0}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/g0;->do:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Ljava/util/Hashtable;Landroid/support/v4/hd2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/tls/g0;->do:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/g0;->if(Landroid/support/v4/hd2;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static for(Ljava/util/Hashtable;)Landroid/support/v4/hd2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/tls/g0;->do:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/tls/l0;->b(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/g0;->new([B)Landroid/support/v4/hd2;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static if(Landroid/support/v4/hd2;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/hd2;->if()[I

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/tls/l0;->v0([ILjava/io/OutputStream;)V

    invoke-virtual {p0}, Landroid/support/v4/hd2;->do()[B

    move-result-object p0

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/tls/l0;->q0([BLjava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'useSRTPData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static new([B)Landroid/support/v4/hd2;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->T(Ljava/io/InputStream;)I

    move-result p0

    const/4 v1, 0x2

    if-lt p0, v1, :cond_0

    and-int/lit8 v2, p0, 0x1

    if-nez v2, :cond_0

    div-int/2addr p0, v1

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/tls/l0;->V(ILjava/io/InputStream;)[I

    move-result-object p0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/l0;->R(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    new-instance v0, Landroid/support/v4/hd2;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/hd2;-><init>([I[B)V

    return-object v0

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
