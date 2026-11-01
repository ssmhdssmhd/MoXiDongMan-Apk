.class Lorg/bouncycastle/crypto/prng/for$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/prng/DRBGProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/prng/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private final do:Lorg/bouncycastle/crypto/BlockCipher;

.field private final for:[B

.field private final if:I

.field private final new:[B

.field private final try:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;I[B[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/for$do;->do:Lorg/bouncycastle/crypto/BlockCipher;

    iput p2, p0, Lorg/bouncycastle/crypto/prng/for$do;->if:I

    iput-object p3, p0, Lorg/bouncycastle/crypto/prng/for$do;->for:[B

    iput-object p4, p0, Lorg/bouncycastle/crypto/prng/for$do;->new:[B

    iput p5, p0, Lorg/bouncycastle/crypto/prng/for$do;->try:I

    return-void
.end method


# virtual methods
.method public get(Lorg/bouncycastle/crypto/prng/EntropySource;)Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;
    .locals 8

    new-instance v7, Lorg/bouncycastle/crypto/prng/drbg/do;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/for$do;->do:Lorg/bouncycastle/crypto/BlockCipher;

    iget v2, p0, Lorg/bouncycastle/crypto/prng/for$do;->if:I

    iget v3, p0, Lorg/bouncycastle/crypto/prng/for$do;->try:I

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/for$do;->new:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/prng/for$do;->for:[B

    move-object v0, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/prng/drbg/do;-><init>(Lorg/bouncycastle/crypto/BlockCipher;IILorg/bouncycastle/crypto/prng/EntropySource;[B[B)V

    return-object v7
.end method
