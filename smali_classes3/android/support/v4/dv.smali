.class public Landroid/support/v4/dv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final if:Ljava/math/BigInteger;


# instance fields
.field private do:Landroid/support/v4/cv;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Landroid/support/v4/dv;->if:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static do(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p1, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static if(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 3

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x2

    :cond_0
    sget-object v1, Landroid/support/v4/dv;->if:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lorg/bouncycastle/util/do;->try(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/math/ec/class;->goto(Ljava/math/BigInteger;)I

    move-result v2

    if-lt v2, v0, :cond_0

    return-object v1
.end method


# virtual methods
.method public generateKeyPair()Landroid/support/v4/y3;
    .locals 5

    iget-object v0, p0, Landroid/support/v4/dv;->do:Landroid/support/v4/cv;

    invoke-virtual {v0}, Landroid/support/v4/cv;->for()Landroid/support/v4/hv;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hv;->for()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/dv;->do:Landroid/support/v4/cv;

    invoke-virtual {v2}, Landroid/support/v4/dr0;->do()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/dv;->if(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/hv;->if()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v4/hv;->do()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/support/v4/dv;->do(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Landroid/support/v4/y3;

    new-instance v4, Landroid/support/v4/kv;

    invoke-direct {v4, v2, v0}, Landroid/support/v4/kv;-><init>(Ljava/math/BigInteger;Landroid/support/v4/hv;)V

    new-instance v2, Landroid/support/v4/jv;

    invoke-direct {v2, v1, v0}, Landroid/support/v4/jv;-><init>(Ljava/math/BigInteger;Landroid/support/v4/hv;)V

    invoke-direct {v3, v4, v2}, Landroid/support/v4/y3;-><init>(Landroid/support/v4/a4;Landroid/support/v4/a4;)V

    return-object v3
.end method

.method public init(Landroid/support/v4/dr0;)V
    .locals 0

    check-cast p1, Landroid/support/v4/cv;

    iput-object p1, p0, Landroid/support/v4/dv;->do:Landroid/support/v4/cv;

    return-void
.end method
