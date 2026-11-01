.class public Lorg/bouncycastle/jcajce/provider/symmetric/finally;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/symmetric/finally$do;,
        Lorg/bouncycastle/jcajce/provider/symmetric/finally$if;,
        Lorg/bouncycastle/jcajce/provider/symmetric/finally$for;,
        Lorg/bouncycastle/jcajce/provider/symmetric/finally$new;,
        Lorg/bouncycastle/jcajce/provider/symmetric/finally$try;,
        Lorg/bouncycastle/jcajce/provider/symmetric/finally$case;,
        Lorg/bouncycastle/jcajce/provider/symmetric/finally$else;,
        Lorg/bouncycastle/jcajce/provider/symmetric/finally$goto;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static do(Landroid/support/v4/b42;)[B
    .locals 9

    new-instance v0, Landroid/support/v4/pi0;

    invoke-static {}, Landroid/support/v4/u00;->do()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/pi0;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    new-instance v1, Landroid/support/v4/pi0;

    invoke-static {}, Landroid/support/v4/u00;->if()Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/pi0;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-virtual {p0}, Landroid/support/v4/b42;->do()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/util/for;->goto(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v4/b42;->new()[B

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/q3;->default([B[B)[B

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v4/b42;->for()[B

    move-result-object v3

    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    new-array v5, v4, [B

    new-array v6, v4, [B

    const/4 v7, 0x0

    invoke-static {v3, v7, v5, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v3

    sub-int/2addr v8, v4

    invoke-static {v3, v8, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Landroid/support/v4/b42;->if()I

    move-result p0

    new-array v3, p0, [B

    new-array v4, p0, [B

    invoke-static {v0, v5, v2, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/finally;->new(Lorg/bouncycastle/crypto/Mac;[B[B[B)V

    invoke-static {v1, v6, v2, v4}, Lorg/bouncycastle/jcajce/provider/symmetric/finally;->new(Lorg/bouncycastle/crypto/Mac;[B[B[B)V

    :goto_0
    if-ge v7, p0, :cond_0

    aget-byte v0, v3, v7

    aget-byte v1, v4, v7

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public static synthetic for(Lorg/bouncycastle/crypto/Mac;[B[B[B)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/symmetric/finally;->new(Lorg/bouncycastle/crypto/Mac;[B[B[B)V

    return-void
.end method

.method public static synthetic if(Landroid/support/v4/b42;)[B
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/finally;->do(Landroid/support/v4/b42;)[B

    move-result-object p0

    return-object p0
.end method

.method private static new(Lorg/bouncycastle/crypto/Mac;[B[B[B)V
    .locals 8

    new-instance v0, Landroid/support/v4/gr0;

    invoke-direct {v0, p1}, Landroid/support/v4/gr0;-><init>([B)V

    invoke-interface {p0, v0}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result p1

    array-length v0, p3

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v1

    new-array v2, v1, [B

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v3

    new-array v3, v3, [B

    const/4 v4, 0x0

    move-object v6, p2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    array-length v7, v6

    invoke-interface {p0, v6, v4, v7}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    invoke-interface {p0, v2, v4}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    invoke-interface {p0, v2, v4, v1}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    array-length v6, p2

    invoke-interface {p0, p2, v4, v6}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    invoke-interface {p0, v3, v4}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    mul-int v6, p1, v5

    array-length v7, p3

    sub-int/2addr v7, v6

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v4, p3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    move-object v6, v2

    goto :goto_0

    :cond_0
    return-void
.end method
