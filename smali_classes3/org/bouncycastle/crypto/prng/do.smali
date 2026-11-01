.class public Lorg/bouncycastle/crypto/prng/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/prng/EntropySourceProvider;


# instance fields
.field private final do:Ljava/security/SecureRandom;

.field private final if:Z


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/do;->do:Ljava/security/SecureRandom;

    iput-boolean p2, p0, Lorg/bouncycastle/crypto/prng/do;->if:Z

    return-void
.end method

.method public static synthetic do(Lorg/bouncycastle/crypto/prng/do;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/crypto/prng/do;->if:Z

    return p0
.end method

.method public static synthetic if(Lorg/bouncycastle/crypto/prng/do;)Ljava/security/SecureRandom;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/prng/do;->do:Ljava/security/SecureRandom;

    return-object p0
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/crypto/prng/EntropySource;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/prng/do$do;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/crypto/prng/do$do;-><init>(Lorg/bouncycastle/crypto/prng/do;I)V

    return-object v0
.end method
