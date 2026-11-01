.class public Lorg/bouncycastle/crypto/signers/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/signers/do$if;
    }
.end annotation


# instance fields
.field private final do:Lorg/bouncycastle/crypto/signers/do$if;

.field private for:Lorg/bouncycastle/crypto/params/if;

.field private if:Z

.field private new:Lorg/bouncycastle/crypto/params/for;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/signers/do$if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/signers/do$if;-><init>(Lorg/bouncycastle/crypto/signers/do$do;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/do;->do:Lorg/bouncycastle/crypto/signers/do$if;

    return-void
.end method


# virtual methods
.method public generateSignature()[B
    .locals 3

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/do;->if:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/do;->for:Lorg/bouncycastle/crypto/params/if;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/do;->do:Lorg/bouncycastle/crypto/signers/do$if;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/do;->new:Lorg/bouncycastle/crypto/params/for;

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/crypto/signers/do$if;->do(Lorg/bouncycastle/crypto/params/if;Lorg/bouncycastle/crypto/params/for;)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ed25519Signer not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/signers/do;->if:Z

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/if;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/do;->for:Lorg/bouncycastle/crypto/params/if;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/if;->for()Lorg/bouncycastle/crypto/params/for;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/do;->new:Lorg/bouncycastle/crypto/params/for;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/do;->for:Lorg/bouncycastle/crypto/params/if;

    check-cast p2, Lorg/bouncycastle/crypto/params/for;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/do;->new:Lorg/bouncycastle/crypto/params/for;

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/do;->reset()V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/do;->do:Lorg/bouncycastle/crypto/signers/do$if;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/signers/do$if;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/do;->do:Lorg/bouncycastle/crypto/signers/do$if;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/do;->do:Lorg/bouncycastle/crypto/signers/do$if;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/do;->if:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/do;->new:Lorg/bouncycastle/crypto/params/for;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/do;->do:Lorg/bouncycastle/crypto/signers/do$if;

    invoke-virtual {v1, v0, p1}, Lorg/bouncycastle/crypto/signers/do$if;->if(Lorg/bouncycastle/crypto/params/for;[B)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Ed25519Signer not initialised for verification"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
