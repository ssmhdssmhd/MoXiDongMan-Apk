.class public Lorg/bouncycastle/crypto/generators/for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/generators/for$do;
    }
.end annotation


# static fields
.field private static final new:Ljava/math/BigInteger;


# instance fields
.field private do:I

.field private for:Ljava/security/SecureRandom;

.field private if:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/for;->new:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()Ljava/math/BigInteger;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/generators/for;->new:Ljava/math/BigInteger;

    return-object v0
.end method


# virtual methods
.method public for(Landroid/support/v4/ou;)Landroid/support/v4/fs;
    .locals 4

    invoke-virtual {p1}, Landroid/support/v4/ou;->case()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/ou;->if()Ljava/math/BigInteger;

    move-result-object p1

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/for;->for:Ljava/security/SecureRandom;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/generators/for$do;->if(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/support/v4/fs;

    new-instance v3, Landroid/support/v4/yp1;

    invoke-direct {v3}, Landroid/support/v4/yp1;-><init>()V

    invoke-direct {v2, v0, p1, v1, v3}, Landroid/support/v4/fs;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;)V

    return-object v2
.end method

.method public if()Landroid/support/v4/fs;
    .locals 5

    iget v0, p0, Lorg/bouncycastle/crypto/generators/for;->do:I

    iget v1, p0, Lorg/bouncycastle/crypto/generators/for;->if:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/for;->for:Ljava/security/SecureRandom;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/generators/for$do;->do(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/for;->for:Ljava/security/SecureRandom;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/generators/for$do;->if(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/for;->for:Ljava/security/SecureRandom;

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/generators/for$do;->if(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/support/v4/fs;

    new-instance v4, Landroid/support/v4/yp1;

    invoke-direct {v4}, Landroid/support/v4/yp1;-><init>()V

    invoke-direct {v3, v0, v1, v2, v4}, Landroid/support/v4/fs;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;)V

    return-object v3
.end method

.method public new(IILjava/security/SecureRandom;)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/generators/for;->do:I

    iput p2, p0, Lorg/bouncycastle/crypto/generators/for;->if:I

    iput-object p3, p0, Lorg/bouncycastle/crypto/generators/for;->for:Ljava/security/SecureRandom;

    return-void
.end method
