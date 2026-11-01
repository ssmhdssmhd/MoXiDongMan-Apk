.class Lorg/bouncycastle/util/test/try$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/prng/EntropySource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/util/test/try;->get(I)Lorg/bouncycastle/crypto/prng/EntropySource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic if:Lorg/bouncycastle/util/test/try;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/util/test/try;I)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/util/test/try$do;->if:Lorg/bouncycastle/util/test/try;

    iput p2, p0, Lorg/bouncycastle/util/test/try$do;->do:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public entropySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/util/test/try$do;->do:I

    return v0
.end method

.method public getEntropy()[B
    .locals 2

    iget v0, p0, Lorg/bouncycastle/util/test/try$do;->do:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/util/test/try$do;->if:Lorg/bouncycastle/util/test/try;

    invoke-static {v1}, Lorg/bouncycastle/util/test/try;->if(Lorg/bouncycastle/util/test/try;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public isPredictionResistant()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/util/test/try$do;->if:Lorg/bouncycastle/util/test/try;

    invoke-static {v0}, Lorg/bouncycastle/util/test/try;->do(Lorg/bouncycastle/util/test/try;)Z

    move-result v0

    return v0
.end method
