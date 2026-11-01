.class public Lorg/bouncycastle/pqc/crypto/xmss/strictfp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/StateAwareMessageSigner;


# instance fields
.field private case:Z

.field private do:Lorg/bouncycastle/pqc/crypto/xmss/package;

.field private else:Z

.field private for:Lorg/bouncycastle/pqc/crypto/xmss/private;

.field private if:Lorg/bouncycastle/pqc/crypto/xmss/package;

.field private new:Lorg/bouncycastle/pqc/crypto/xmss/finally;

.field private try:Lorg/bouncycastle/pqc/crypto/xmss/case;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private if([BLorg/bouncycastle/pqc/crypto/xmss/goto;)Lorg/bouncycastle/pqc/crypto/xmss/final;
    .locals 3

    array-length v0, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->new:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->for()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "otsHashAddress == null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->new:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->case()Lorg/bouncycastle/pqc/crypto/xmss/this;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->new:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->case()Lorg/bouncycastle/pqc/crypto/xmss/this;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->do:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/package;->break()[B

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/bouncycastle/pqc/crypto/xmss/this;->catch([BLorg/bouncycastle/pqc/crypto/xmss/goto;)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->do:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/package;->else()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/this;->class([B[B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->new:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->case()Lorg/bouncycastle/pqc/crypto/xmss/this;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/this;->const([BLorg/bouncycastle/pqc/crypto/xmss/goto;)Lorg/bouncycastle/pqc/crypto/xmss/final;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size of messageDigest needs to be equal to size of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public do()J
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->do:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->catch()J

    move-result-wide v0

    return-wide v0
.end method

.method public generateSignature([B)[B
    .locals 6

    const-string v0, "message == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->case:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->do:Lorg/bouncycastle/pqc/crypto/xmss/package;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->for()Lorg/bouncycastle/pqc/crypto/xmss/do;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/do;->getAuthenticationPath()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->do:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->new()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->new:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->new()I

    move-result v1

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->final(IJ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->try:Lorg/bouncycastle/pqc/crypto/xmss/case;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->do:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/package;->this()[B

    move-result-object v4

    const/16 v5, 0x20

    invoke-static {v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->public(JI)[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/case;->new([B[B)[B

    move-result-object v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->do:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/package;->goto()[B

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->new:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->for()I

    move-result v5

    invoke-static {v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->public(JI)[B

    move-result-object v2

    invoke-static {v1, v4, v2}, Landroid/support/v4/q3;->extends([B[B[B)[B

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->try:Lorg/bouncycastle/pqc/crypto/xmss/case;

    invoke-virtual {v3, v2, p1}, Lorg/bouncycastle/pqc/crypto/xmss/case;->for([B[B)[B

    move-result-object p1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;-><init>()V

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->throw(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/goto;

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->if([BLorg/bouncycastle/pqc/crypto/xmss/goto;)Lorg/bouncycastle/pqc/crypto/xmss/final;

    move-result-object p1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/continue$if;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->new:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/continue$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;)V

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/crypto/xmss/continue$if;->class(I)Lorg/bouncycastle/pqc/crypto/xmss/continue$if;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/continue$if;->const([B)Lorg/bouncycastle/pqc/crypto/xmss/continue$if;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->goto(Lorg/bouncycastle/pqc/crypto/xmss/final;)Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->do:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->for()Lorg/bouncycastle/pqc/crypto/xmss/do;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/do;->getAuthenticationPath()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->case(Ljava/util/List;)Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->try()Lorg/bouncycastle/pqc/crypto/xmss/abstract;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/continue;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->else:Z

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->if:Lorg/bouncycastle/pqc/crypto/xmss/package;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->try()Lorg/bouncycastle/pqc/crypto/xmss/package;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->do:Lorg/bouncycastle/pqc/crypto/xmss/package;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->if:Lorg/bouncycastle/pqc/crypto/xmss/package;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->do:Lorg/bouncycastle/pqc/crypto/xmss/package;

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/continue;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "index out of bounds"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "signing key no longer usable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "signer not initialized for signature generation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getUpdatedPrivateKey()Landroid/support/v4/a4;
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->else:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->do:Lorg/bouncycastle/pqc/crypto/xmss/package;

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->do:Lorg/bouncycastle/pqc/crypto/xmss/package;

    :goto_0
    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->if:Lorg/bouncycastle/pqc/crypto/xmss/package;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->if:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/package;->try()Lorg/bouncycastle/pqc/crypto/xmss/package;

    move-result-object v0

    goto :goto_0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->case:Z

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->else:Z

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/package;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->do:Lorg/bouncycastle/pqc/crypto/xmss/package;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->if:Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/package;->case()Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object p1

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->case:Z

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/private;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->for:Lorg/bouncycastle/pqc/crypto/xmss/private;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/private;->for()Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->new:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->case()Lorg/bouncycastle/pqc/crypto/xmss/this;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/this;->new()Lorg/bouncycastle/pqc/crypto/xmss/case;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->try:Lorg/bouncycastle/pqc/crypto/xmss/case;

    return-void
.end method

.method public verifySignature([B[B)Z
    .locals 6

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/continue$if;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->new:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/continue$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/crypto/xmss/continue$if;->final([B)Lorg/bouncycastle/pqc/crypto/xmss/continue$if;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/continue$if;->catch()Lorg/bouncycastle/pqc/crypto/xmss/continue;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/continue;->new()I

    move-result p2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->new:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->case()Lorg/bouncycastle/pqc/crypto/xmss/this;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->new:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->for()I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->for:Lorg/bouncycastle/pqc/crypto/xmss/private;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/private;->new()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/this;->class([B[B)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/continue;->try()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->for:Lorg/bouncycastle/pqc/crypto/xmss/private;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/private;->try()[B

    move-result-object v1

    int-to-long v4, p2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->new:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->for()I

    move-result v2

    invoke-static {v4, v5, v2}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->public(JI)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v4/q3;->extends([B[B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->try:Lorg/bouncycastle/pqc/crypto/xmss/case;

    invoke-virtual {v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/case;->for([B[B)[B

    move-result-object v2

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->new:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->new()I

    move-result v1

    invoke-static {v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->catch(JI)I

    move-result v5

    new-instance p1, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;-><init>()V

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->throw(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/goto;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->new:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->case()Lorg/bouncycastle/pqc/crypto/xmss/this;

    move-result-object v0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/xmss/interface;->do(Lorg/bouncycastle/pqc/crypto/xmss/this;I[BLorg/bouncycastle/pqc/crypto/xmss/abstract;Lorg/bouncycastle/pqc/crypto/xmss/goto;I)Lorg/bouncycastle/pqc/crypto/xmss/default;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getValue()[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->for:Lorg/bouncycastle/pqc/crypto/xmss/private;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/private;->try()[B

    move-result-object p2

    invoke-static {p1, p2}, Landroid/support/v4/q3;->abstract([B[B)Z

    move-result p1

    return p1
.end method
