.class public Landroid/support/v4/f40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/ec/ECDecryptor;


# instance fields
.field private do:Landroid/support/v4/h50;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt(Landroid/support/v4/c50;)Lorg/bouncycastle/math/ec/new;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/f40;->do:Landroid/support/v4/h50;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/c50;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/do;->do(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/f40;->do:Landroid/support/v4/h50;

    invoke-virtual {v2}, Landroid/support/v4/h50;->for()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/new;->package(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/c50;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/do;->do(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/math/ec/new;->transient(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ECElGamalDecryptor not initialised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    instance-of v0, p1, Landroid/support/v4/h50;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/h50;

    iput-object p1, p0, Landroid/support/v4/f40;->do:Landroid/support/v4/h50;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ECPrivateKeyParameters are required for decryption."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
