.class public Landroid/support/v4/x50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# instance fields
.field private final do:Lorg/bouncycastle/crypto/Xof;

.field private for:Z

.field private final if:[B

.field private new:Lorg/bouncycastle/crypto/params/new;

.field private try:Lorg/bouncycastle/crypto/params/try;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/if;->try()Lorg/bouncycastle/crypto/Xof;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/x50;->do:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/x50;->if:[B

    return-void
.end method


# virtual methods
.method public generateSignature()[B
    .locals 10

    iget-boolean v0, p0, Landroid/support/v4/x50;->for:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/x50;->new:Lorg/bouncycastle/crypto/params/new;

    if-eqz v0, :cond_1

    const/16 v0, 0x40

    new-array v5, v0, [B

    iget-object v1, p0, Landroid/support/v4/x50;->do:Lorg/bouncycastle/crypto/Xof;

    const/4 v2, 0x0

    invoke-interface {v1, v5, v2, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x72

    new-array v0, v0, [B

    iget-object v1, p0, Landroid/support/v4/x50;->new:Lorg/bouncycastle/crypto/params/new;

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/support/v4/x50;->try:Lorg/bouncycastle/crypto/params/try;

    iget-object v4, p0, Landroid/support/v4/x50;->if:[B

    const/4 v6, 0x0

    const/16 v7, 0x40

    const/4 v9, 0x0

    move-object v8, v0

    invoke-virtual/range {v1 .. v9}, Lorg/bouncycastle/crypto/params/new;->try(ILorg/bouncycastle/crypto/params/try;[B[BII[BI)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Prehash digest failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ed448phSigner not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/x50;->for:Z

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/new;

    iput-object p2, p0, Landroid/support/v4/x50;->new:Lorg/bouncycastle/crypto/params/new;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/new;->for()Lorg/bouncycastle/crypto/params/try;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/x50;->try:Lorg/bouncycastle/crypto/params/try;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/x50;->new:Lorg/bouncycastle/crypto/params/new;

    check-cast p2, Lorg/bouncycastle/crypto/params/try;

    iput-object p2, p0, Landroid/support/v4/x50;->try:Lorg/bouncycastle/crypto/params/try;

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/x50;->reset()V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/x50;->do:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/x50;->do:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/x50;->do:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .locals 7

    iget-boolean v0, p0, Landroid/support/v4/x50;->for:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/x50;->try:Lorg/bouncycastle/crypto/params/try;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/try;->for()[B

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/v4/x50;->if:[B

    iget-object v6, p0, Landroid/support/v4/x50;->do:Lorg/bouncycastle/crypto/Xof;

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/ec/rfc8032/if;->h([BI[BI[BLorg/bouncycastle/crypto/Xof;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Ed448phSigner not initialised for verification"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
