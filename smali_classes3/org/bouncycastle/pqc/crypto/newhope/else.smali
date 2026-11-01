.class Lorg/bouncycastle/pqc/crypto/newhope/else;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final do:Z = false

.field public static final for:I = 0x400

.field public static final if:I = 0x20

.field public static final new:I = 0x720

.field public static final try:I = 0x800


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case(Ljava/security/SecureRandom;[B[S)V
    .locals 5

    const/16 v0, 0x20

    new-array v1, v0, [B

    invoke-virtual {p0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/newhope/else;->else([B)V

    const/16 v2, 0x400

    new-array v3, v2, [S

    invoke-static {v3, v1}, Lorg/bouncycastle/pqc/crypto/newhope/else;->try([S[B)V

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 p0, 0x0

    invoke-static {p2, v0, p0}, Lorg/bouncycastle/pqc/crypto/newhope/this;->new([S[BB)V

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/newhope/this;->goto([S)V

    new-array p0, v2, [S

    const/4 v4, 0x1

    invoke-static {p0, v0, v4}, Lorg/bouncycastle/pqc/crypto/newhope/this;->new([S[BB)V

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/newhope/this;->goto([S)V

    new-array v0, v2, [S

    invoke-static {v3, p2, v0}, Lorg/bouncycastle/pqc/crypto/newhope/this;->case([S[S[S)V

    new-array p2, v2, [S

    invoke-static {v0, p0, p2}, Lorg/bouncycastle/pqc/crypto/newhope/this;->do([S[S[S)V

    invoke-static {p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/newhope/else;->for([B[S[B)V

    return-void
.end method

.method public static do([S[B[B)V
    .locals 2

    invoke-static {p0, p2}, Lorg/bouncycastle/pqc/crypto/newhope/this;->if([S[B)V

    const/16 p0, 0x700

    const/4 v0, 0x0

    const/16 v1, 0x20

    invoke-static {p2, p0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static else([B)V
    .locals 3

    new-instance v0, Landroid/support/v4/aq1;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Landroid/support/v4/aq1;-><init>(I)V

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {v0, p0, v1, v2}, Landroid/support/v4/tq0;->update([BII)V

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/aq1;->doFinal([BI)I

    return-void
.end method

.method public static for([B[S[B)V
    .locals 2

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/newhope/this;->else([B[S)V

    const/4 p1, 0x0

    const/16 v0, 0x700

    const/16 v1, 0x20

    invoke-static {p2, p1, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static goto([B[S[B)V
    .locals 3

    const/16 v0, 0x400

    new-array v1, v0, [S

    new-array v2, v0, [S

    invoke-static {v1, v2, p2}, Lorg/bouncycastle/pqc/crypto/newhope/else;->if([S[S[B)V

    new-array p2, v0, [S

    invoke-static {p1, v1, p2}, Lorg/bouncycastle/pqc/crypto/newhope/this;->case([S[S[S)V

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/newhope/this;->for([S)V

    invoke-static {p0, p2, v2}, Lorg/bouncycastle/pqc/crypto/newhope/if;->case([B[S[S)V

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/newhope/else;->else([B)V

    return-void
.end method

.method public static if([S[S[B)V
    .locals 4

    invoke-static {p0, p2}, Lorg/bouncycastle/pqc/crypto/newhope/this;->if([S[B)V

    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0x100

    if-ge p0, v0, :cond_0

    mul-int/lit8 v0, p0, 0x4

    add-int/lit16 v1, p0, 0x700

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v0, 0x0

    and-int/lit8 v3, v1, 0x3

    int-to-short v3, v3

    aput-short v3, p1, v2

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, v1, 0x2

    and-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    aput-short v3, p1, v2

    add-int/lit8 v2, v0, 0x2

    ushr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    aput-short v3, p1, v2

    add-int/lit8 v0, v0, 0x3

    ushr-int/lit8 v1, v1, 0x6

    int-to-short v1, v1

    aput-short v1, p1, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static new([B[S[S)V
    .locals 4

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/newhope/this;->else([B[S)V

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    mul-int/lit8 v0, p1, 0x4

    add-int/lit16 v1, p1, 0x700

    aget-short v2, p2, v0

    add-int/lit8 v3, v0, 0x1

    aget-short v3, p2, v3

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-short v3, p2, v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-short v0, p2, v0

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static this(Ljava/security/SecureRandom;[B[B[B)V
    .locals 5

    const/16 v0, 0x400

    new-array v1, v0, [S

    const/16 v2, 0x20

    new-array v3, v2, [B

    invoke-static {v1, v3, p3}, Lorg/bouncycastle/pqc/crypto/newhope/else;->do([S[B[B)V

    new-array p3, v0, [S

    invoke-static {p3, v3}, Lorg/bouncycastle/pqc/crypto/newhope/else;->try([S[B)V

    new-array v2, v2, [B

    invoke-virtual {p0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array p0, v0, [S

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/newhope/this;->new([S[BB)V

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/newhope/this;->goto([S)V

    new-array v3, v0, [S

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lorg/bouncycastle/pqc/crypto/newhope/this;->new([S[BB)V

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/newhope/this;->goto([S)V

    new-array v4, v0, [S

    invoke-static {p3, p0, v4}, Lorg/bouncycastle/pqc/crypto/newhope/this;->case([S[S[S)V

    invoke-static {v4, v3, v4}, Lorg/bouncycastle/pqc/crypto/newhope/this;->do([S[S[S)V

    new-array p3, v0, [S

    invoke-static {v1, p0, p3}, Lorg/bouncycastle/pqc/crypto/newhope/this;->case([S[S[S)V

    invoke-static {p3}, Lorg/bouncycastle/pqc/crypto/newhope/this;->for([S)V

    new-array p0, v0, [S

    const/4 v1, 0x2

    invoke-static {p0, v2, v1}, Lorg/bouncycastle/pqc/crypto/newhope/this;->new([S[BB)V

    invoke-static {p3, p0, p3}, Lorg/bouncycastle/pqc/crypto/newhope/this;->do([S[S[S)V

    new-array p0, v0, [S

    const/4 v0, 0x3

    invoke-static {p0, p3, v2, v0}, Lorg/bouncycastle/pqc/crypto/newhope/if;->try([S[S[BB)V

    invoke-static {p2, v4, p0}, Lorg/bouncycastle/pqc/crypto/newhope/else;->new([B[S[S)V

    invoke-static {p1, p3, p0}, Lorg/bouncycastle/pqc/crypto/newhope/if;->case([B[S[S)V

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/newhope/else;->else([B)V

    return-void
.end method

.method public static try([S[B)V
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/newhope/this;->this([S[B)V

    return-void
.end method
