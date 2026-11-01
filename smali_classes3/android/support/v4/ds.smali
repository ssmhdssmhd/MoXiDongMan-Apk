.class public Landroid/support/v4/ds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final if:Ljava/math/BigInteger;


# instance fields
.field private do:Landroid/support/v4/cs;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Landroid/support/v4/ds;->if:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private do(Landroid/support/v4/fs;Landroid/support/v4/gs;)Landroid/support/v4/hs;
    .locals 6

    invoke-virtual {p1}, Landroid/support/v4/fs;->do()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/fs;->if()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/fs;->new()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v4/gs;->new()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p2}, Landroid/support/v4/gs;->try()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p2}, Landroid/support/v4/gs;->case()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p2}, Landroid/support/v4/gs;->else()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v4/gs;->goto()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v0, p2, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    new-instance v0, Landroid/support/v4/hs;

    invoke-direct {v0, p1, v3, v1, p2}, Landroid/support/v4/hs;-><init>(Landroid/support/v4/fs;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method private for(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 1

    sget-object v0, Landroid/support/v4/ds;->if:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/do;->try(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method private if(Ljava/security/SecureRandom;Landroid/support/v4/fs;)Landroid/support/v4/gs;
    .locals 9

    invoke-virtual {p2}, Landroid/support/v4/fs;->new()Ljava/math/BigInteger;

    move-result-object v0

    new-instance v8, Landroid/support/v4/gs;

    invoke-direct {p0, v0, p1}, Landroid/support/v4/ds;->for(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {p0, v0, p1}, Landroid/support/v4/ds;->for(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {p0, v0, p1}, Landroid/support/v4/ds;->for(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {p0, v0, p1}, Landroid/support/v4/ds;->for(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {p0, v0, p1}, Landroid/support/v4/ds;->for(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v7

    move-object v1, v8

    move-object v2, p2

    invoke-direct/range {v1 .. v7}, Landroid/support/v4/gs;-><init>(Landroid/support/v4/fs;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v8
.end method


# virtual methods
.method public generateKeyPair()Landroid/support/v4/y3;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/ds;->do:Landroid/support/v4/cs;

    invoke-virtual {v0}, Landroid/support/v4/cs;->for()Landroid/support/v4/fs;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/ds;->do:Landroid/support/v4/cs;

    invoke-virtual {v1}, Landroid/support/v4/dr0;->do()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Landroid/support/v4/ds;->if(Ljava/security/SecureRandom;Landroid/support/v4/fs;)Landroid/support/v4/gs;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/ds;->do(Landroid/support/v4/fs;Landroid/support/v4/gs;)Landroid/support/v4/hs;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/gs;->this(Landroid/support/v4/hs;)V

    new-instance v2, Landroid/support/v4/y3;

    invoke-direct {v2, v0, v1}, Landroid/support/v4/y3;-><init>(Landroid/support/v4/a4;Landroid/support/v4/a4;)V

    return-object v2
.end method

.method public init(Landroid/support/v4/dr0;)V
    .locals 0

    check-cast p1, Landroid/support/v4/cs;

    iput-object p1, p0, Landroid/support/v4/ds;->do:Landroid/support/v4/cs;

    return-void
.end method
