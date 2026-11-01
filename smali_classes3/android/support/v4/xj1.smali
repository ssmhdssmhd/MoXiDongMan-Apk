.class public Landroid/support/v4/xj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private do:Landroid/support/v4/ck1;

.field private if:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Landroid/support/v4/ck1;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Landroid/support/v4/dk1;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/support/v4/xj1;->do:Landroid/support/v4/ck1;

    iput-object p2, p0, Landroid/support/v4/xj1;->if:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "RSA parameters should be for a public key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public do()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xj1;->if:Ljava/math/BigInteger;

    return-object v0
.end method

.method public if()Landroid/support/v4/ck1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xj1;->do:Landroid/support/v4/ck1;

    return-object v0
.end method
