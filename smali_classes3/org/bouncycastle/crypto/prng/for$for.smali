.class Lorg/bouncycastle/crypto/prng/for$for;
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
    name = "for"
.end annotation


# instance fields
.field private final do:Lorg/bouncycastle/crypto/Digest;

.field private final for:[B

.field private final if:[B

.field private final new:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;[B[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/for$for;->do:Lorg/bouncycastle/crypto/Digest;

    iput-object p2, p0, Lorg/bouncycastle/crypto/prng/for$for;->if:[B

    iput-object p3, p0, Lorg/bouncycastle/crypto/prng/for$for;->for:[B

    iput p4, p0, Lorg/bouncycastle/crypto/prng/for$for;->new:I

    return-void
.end method


# virtual methods
.method public get(Lorg/bouncycastle/crypto/prng/EntropySource;)Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;
    .locals 7

    new-instance v6, Lorg/bouncycastle/crypto/prng/drbg/new;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/for$for;->do:Lorg/bouncycastle/crypto/Digest;

    iget v2, p0, Lorg/bouncycastle/crypto/prng/for$for;->new:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/prng/for$for;->for:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/for$for;->if:[B

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/prng/drbg/new;-><init>(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/prng/EntropySource;[B[B)V

    return-object v6
.end method
