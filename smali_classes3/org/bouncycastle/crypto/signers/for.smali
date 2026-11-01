.class public Lorg/bouncycastle/crypto/signers/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/signers/for$if;
    }
.end annotation


# instance fields
.field private final do:Lorg/bouncycastle/crypto/signers/for$if;

.field private for:Z

.field private final if:[B

.field private new:Lorg/bouncycastle/crypto/params/new;

.field private try:Lorg/bouncycastle/crypto/params/try;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/signers/for$if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/signers/for$if;-><init>(Lorg/bouncycastle/crypto/signers/for$do;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/for;->do:Lorg/bouncycastle/crypto/signers/for$if;

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/for;->if:[B

    return-void
.end method


# virtual methods
.method public generateSignature()[B
    .locals 4

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/for;->for:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/for;->new:Lorg/bouncycastle/crypto/params/new;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/for;->do:Lorg/bouncycastle/crypto/signers/for$if;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/for;->try:Lorg/bouncycastle/crypto/params/try;

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/for;->if:[B

    invoke-virtual {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/signers/for$if;->do(Lorg/bouncycastle/crypto/params/new;Lorg/bouncycastle/crypto/params/try;[B)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ed448Signer not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/signers/for;->for:Z

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/new;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/for;->new:Lorg/bouncycastle/crypto/params/new;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/new;->for()Lorg/bouncycastle/crypto/params/try;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/for;->try:Lorg/bouncycastle/crypto/params/try;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/for;->new:Lorg/bouncycastle/crypto/params/new;

    check-cast p2, Lorg/bouncycastle/crypto/params/try;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/for;->try:Lorg/bouncycastle/crypto/params/try;

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/for;->reset()V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/for;->do:Lorg/bouncycastle/crypto/signers/for$if;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/signers/for$if;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/for;->do:Lorg/bouncycastle/crypto/signers/for$if;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/for;->do:Lorg/bouncycastle/crypto/signers/for$if;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .locals 3

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/for;->for:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/for;->try:Lorg/bouncycastle/crypto/params/try;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/for;->do:Lorg/bouncycastle/crypto/signers/for$if;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/for;->if:[B

    invoke-virtual {v1, v0, v2, p1}, Lorg/bouncycastle/crypto/signers/for$if;->if(Lorg/bouncycastle/crypto/params/try;[B[B)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Ed448Signer not initialised for verification"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
