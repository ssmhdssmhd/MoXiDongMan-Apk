.class public Lorg/bouncycastle/pqc/crypto/gmss/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/StateAwareMessageSigner;


# instance fields
.field private final do:Landroid/support/v4/jf0;

.field private if:Landroid/support/v4/ef0;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lorg/bouncycastle/util/Memoable;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/util/Memoable;

    invoke-interface {p1}, Lorg/bouncycastle/util/Memoable;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object p1

    new-instance v0, Landroid/support/v4/jf0;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gmss/for$do;

    invoke-direct {v1, p0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/for$do;-><init>(Lorg/bouncycastle/pqc/crypto/gmss/for;Lorg/bouncycastle/util/Memoable;)V

    invoke-direct {v0, v1}, Landroid/support/v4/jf0;-><init>(Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/for;->do:Landroid/support/v4/jf0;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "digest must implement Memoable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/for;->if:Landroid/support/v4/ef0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/for;->do:Landroid/support/v4/jf0;

    invoke-virtual {v0, p1}, Landroid/support/v4/jf0;->generateSignature([B)[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/for;->if:Landroid/support/v4/ef0;

    invoke-virtual {v0}, Landroid/support/v4/ef0;->super()Landroid/support/v4/ef0;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/for;->if:Landroid/support/v4/ef0;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "signing key no longer usable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getUpdatedPrivateKey()Landroid/support/v4/a4;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/for;->if:Landroid/support/v4/ef0;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/for;->if:Landroid/support/v4/ef0;

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p2, Landroid/support/v4/cc1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/support/v4/cc1;

    invoke-virtual {v0}, Landroid/support/v4/cc1;->do()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Landroid/support/v4/ef0;

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/support/v4/ef0;

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/for;->if:Landroid/support/v4/ef0;

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/for;->do:Landroid/support/v4/jf0;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/jf0;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public verifySignature([B[B)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/for;->do:Landroid/support/v4/jf0;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/jf0;->verifySignature([B[B)Z

    move-result p1

    return p1
.end method
