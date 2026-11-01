.class public Lorg/bouncycastle/crypto/prng/for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/prng/for$do;,
        Lorg/bouncycastle/crypto/prng/for$if;,
        Lorg/bouncycastle/crypto/prng/for$for;
    }
.end annotation


# instance fields
.field private final do:Ljava/security/SecureRandom;

.field private for:[B

.field private final if:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

.field private new:I

.field private try:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/prng/for;-><init>(Ljava/security/SecureRandom;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lorg/bouncycastle/crypto/prng/for;->new:I

    iput v0, p0, Lorg/bouncycastle/crypto/prng/for;->try:I

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/for;->do:Ljava/security/SecureRandom;

    new-instance v0, Lorg/bouncycastle/crypto/prng/do;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/crypto/prng/do;-><init>(Ljava/security/SecureRandom;Z)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/for;->if:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/prng/EntropySourceProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lorg/bouncycastle/crypto/prng/for;->new:I

    iput v0, p0, Lorg/bouncycastle/crypto/prng/for;->try:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/prng/for;->do:Ljava/security/SecureRandom;

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/for;->if:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    return-void
.end method


# virtual methods
.method public case(I)Lorg/bouncycastle/crypto/prng/for;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/prng/for;->new:I

    return-object p0
.end method

.method public do(Lorg/bouncycastle/crypto/BlockCipher;I[BZ)Lorg/bouncycastle/crypto/prng/if;
    .locals 10

    new-instance v0, Lorg/bouncycastle/crypto/prng/if;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/for;->do:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/for;->if:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    iget v3, p0, Lorg/bouncycastle/crypto/prng/for;->try:I

    invoke-interface {v2, v3}, Lorg/bouncycastle/crypto/prng/EntropySourceProvider;->get(I)Lorg/bouncycastle/crypto/prng/EntropySource;

    move-result-object v2

    new-instance v9, Lorg/bouncycastle/crypto/prng/for$do;

    iget-object v7, p0, Lorg/bouncycastle/crypto/prng/for;->for:[B

    iget v8, p0, Lorg/bouncycastle/crypto/prng/for;->new:I

    move-object v3, v9

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/crypto/prng/for$do;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I[B[BI)V

    invoke-direct {v0, v1, v2, v9, p4}, Lorg/bouncycastle/crypto/prng/if;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/prng/EntropySource;Lorg/bouncycastle/crypto/prng/DRBGProvider;Z)V

    return-object v0
.end method

.method public for(Lorg/bouncycastle/crypto/Digest;[BZ)Lorg/bouncycastle/crypto/prng/if;
    .locals 6

    new-instance v0, Lorg/bouncycastle/crypto/prng/if;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/for;->do:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/for;->if:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    iget v3, p0, Lorg/bouncycastle/crypto/prng/for;->try:I

    invoke-interface {v2, v3}, Lorg/bouncycastle/crypto/prng/EntropySourceProvider;->get(I)Lorg/bouncycastle/crypto/prng/EntropySource;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/prng/for$for;

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/for;->for:[B

    iget v5, p0, Lorg/bouncycastle/crypto/prng/for;->new:I

    invoke-direct {v3, p1, p2, v4, v5}, Lorg/bouncycastle/crypto/prng/for$for;-><init>(Lorg/bouncycastle/crypto/Digest;[B[BI)V

    invoke-direct {v0, v1, v2, v3, p3}, Lorg/bouncycastle/crypto/prng/if;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/prng/EntropySource;Lorg/bouncycastle/crypto/prng/DRBGProvider;Z)V

    return-object v0
.end method

.method public if(Lorg/bouncycastle/crypto/Mac;[BZ)Lorg/bouncycastle/crypto/prng/if;
    .locals 6

    new-instance v0, Lorg/bouncycastle/crypto/prng/if;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/for;->do:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/for;->if:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    iget v3, p0, Lorg/bouncycastle/crypto/prng/for;->try:I

    invoke-interface {v2, v3}, Lorg/bouncycastle/crypto/prng/EntropySourceProvider;->get(I)Lorg/bouncycastle/crypto/prng/EntropySource;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/prng/for$if;

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/for;->for:[B

    iget v5, p0, Lorg/bouncycastle/crypto/prng/for;->new:I

    invoke-direct {v3, p1, p2, v4, v5}, Lorg/bouncycastle/crypto/prng/for$if;-><init>(Lorg/bouncycastle/crypto/Mac;[B[BI)V

    invoke-direct {v0, v1, v2, v3, p3}, Lorg/bouncycastle/crypto/prng/if;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/prng/EntropySource;Lorg/bouncycastle/crypto/prng/DRBGProvider;Z)V

    return-object v0
.end method

.method public new(I)Lorg/bouncycastle/crypto/prng/for;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/prng/for;->try:I

    return-object p0
.end method

.method public try([B)Lorg/bouncycastle/crypto/prng/for;
    .locals 0

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/for;->for:[B

    return-object p0
.end method
