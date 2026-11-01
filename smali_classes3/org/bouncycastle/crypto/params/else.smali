.class public final Lorg/bouncycastle/crypto/params/else;
.super Landroid/support/v4/a4;
.source "SourceFile"


# static fields
.field public static final for:I = 0x20

.field public static final new:I = 0x20


# instance fields
.field private final if:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/a4;-><init>(Z)V

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/params/else;->if:[B

    invoke-static {p1, v1}, Landroid/support/v4/a22;->case(Ljava/io/InputStream;[B)I

    move-result p1

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "EOF encountered in middle of X25519 private key"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/a4;-><init>(Z)V

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/else;->if:[B

    invoke-static {p1, v0}, Landroid/support/v4/jg2;->new(Ljava/security/SecureRandom;[B)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/a4;-><init>(Z)V

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/params/else;->if:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public for()Lorg/bouncycastle/crypto/params/goto;
    .locals 3

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/else;->if:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/support/v4/jg2;->try([BI[BI)V

    new-instance v1, Lorg/bouncycastle/crypto/params/goto;

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/crypto/params/goto;-><init>([BI)V

    return-object v1
.end method

.method public if([BI)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/else;->if:[B

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public new(Lorg/bouncycastle/crypto/params/goto;[BI)V
    .locals 7

    const/16 v0, 0x20

    new-array v3, v0, [B

    const/4 v0, 0x0

    invoke-virtual {p1, v3, v0}, Lorg/bouncycastle/crypto/params/goto;->if([BI)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/else;->if:[B

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Landroid/support/v4/jg2;->do([BI[BI[BI)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "X25519 agreement failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public try()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/else;->if:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method
