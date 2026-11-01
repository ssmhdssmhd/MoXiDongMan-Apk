.class public abstract Lorg/bouncycastle/crypto/tls/native;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final do:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/native;->do:Ljava/security/SecureRandom;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'secureRandom\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static case(IS)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->a(I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    invoke-direct {p0, p1}, Landroid/support/v4/n72;-><init>(S)V

    throw p0
.end method

.method public static do(Lorg/bouncycastle/crypto/tls/return;S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_1

    invoke-static {p1}, Landroid/support/v4/dy0;->do(S)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    add-int/lit8 p1, p1, 0x8

    shl-int p1, v0, p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/return;->const(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static for(Lorg/bouncycastle/crypto/tls/break;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/break;->if(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static if(ZLjava/util/Hashtable;Ljava/util/Hashtable;S)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/crypto/tls/v;->public(Ljava/util/Hashtable;)S

    move-result p2

    if-ltz p2, :cond_1

    invoke-static {p2}, Landroid/support/v4/dy0;->do(S)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/v;->public(Ljava/util/Hashtable;)S

    move-result p0

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    invoke-direct {p0, p3}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    :cond_1
    :goto_0
    return p2
.end method

.method public static new(Ljava/util/Vector;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/tls/a0;->w(Ljava/io/OutputStream;Ljava/util/Vector;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public try([B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p2

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/tls/l0;->O(ILjava/io/InputStream;)[B

    move-result-object p1

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    invoke-static {p2, p1}, Landroid/support/v4/q3;->abstract([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/support/v4/n72;

    const/16 p2, 0x28

    invoke-direct {p1, p2}, Landroid/support/v4/n72;-><init>(S)V

    throw p1
.end method
