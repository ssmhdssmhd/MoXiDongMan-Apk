.class public Lorg/bouncycastle/pqc/crypto/xmss/throws;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/StateAwareMessageSigner;


# instance fields
.field private case:Lorg/bouncycastle/pqc/crypto/xmss/this;

.field private do:Lorg/bouncycastle/pqc/crypto/xmss/return;

.field private else:Z

.field private for:Lorg/bouncycastle/pqc/crypto/xmss/static;

.field private goto:Z

.field private if:Lorg/bouncycastle/pqc/crypto/xmss/return;

.field private new:Lorg/bouncycastle/pqc/crypto/xmss/public;

.field private try:Lorg/bouncycastle/pqc/crypto/xmss/finally;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private if([BLorg/bouncycastle/pqc/crypto/xmss/goto;)Lorg/bouncycastle/pqc/crypto/xmss/final;
    .locals 3

    array-length v0, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->new:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/public;->if()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "otsHashAddress == null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->case:Lorg/bouncycastle/pqc/crypto/xmss/this;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->do:Lorg/bouncycastle/pqc/crypto/xmss/return;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/return;->break()[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/this;->catch([BLorg/bouncycastle/pqc/crypto/xmss/goto;)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->do:Lorg/bouncycastle/pqc/crypto/xmss/return;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/return;->else()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/this;->class([B[B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->case:Lorg/bouncycastle/pqc/crypto/xmss/this;

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

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->do:Lorg/bouncycastle/pqc/crypto/xmss/return;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/return;->catch()J

    move-result-wide v0

    return-wide v0
.end method

.method public generateSignature([B)[B
    .locals 14

    const-string v0, "message == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->goto:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->do:Lorg/bouncycastle/pqc/crypto/xmss/return;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/return;->for()Lorg/bouncycastle/pqc/crypto/xmss/if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/if;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->do:Lorg/bouncycastle/pqc/crypto/xmss/return;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/return;->for()Lorg/bouncycastle/pqc/crypto/xmss/if;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->do:Lorg/bouncycastle/pqc/crypto/xmss/return;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/return;->new()J

    move-result-wide v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->new:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/public;->for()I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->try:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->new()I

    move-result v4

    invoke-static {v3, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->final(IJ)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->case:Lorg/bouncycastle/pqc/crypto/xmss/this;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/this;->new()Lorg/bouncycastle/pqc/crypto/xmss/case;

    move-result-object v3

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->do:Lorg/bouncycastle/pqc/crypto/xmss/return;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/xmss/return;->this()[B

    move-result-object v5

    const/16 v6, 0x20

    invoke-static {v1, v2, v6}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->public(JI)[B

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/case;->new([B[B)[B

    move-result-object v3

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->do:Lorg/bouncycastle/pqc/crypto/xmss/return;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/xmss/return;->goto()[B

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->new:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/xmss/public;->if()I

    move-result v6

    invoke-static {v1, v2, v6}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->public(JI)[B

    move-result-object v6

    invoke-static {v3, v5, v6}, Landroid/support/v4/q3;->extends([B[B[B)[B

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->case:Lorg/bouncycastle/pqc/crypto/xmss/this;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/xmss/this;->new()Lorg/bouncycastle/pqc/crypto/xmss/case;

    move-result-object v6

    invoke-virtual {v6, v5, p1}, Lorg/bouncycastle/pqc/crypto/xmss/case;->for([B[B)[B

    move-result-object p1

    new-instance v5, Lorg/bouncycastle/pqc/crypto/xmss/switch$if;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->new:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-direct {v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/switch$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/public;)V

    invoke-virtual {v5, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/switch$if;->else(J)Lorg/bouncycastle/pqc/crypto/xmss/switch$if;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/bouncycastle/pqc/crypto/xmss/switch$if;->goto([B)Lorg/bouncycastle/pqc/crypto/xmss/switch$if;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/switch$if;->case()Lorg/bouncycastle/pqc/crypto/xmss/switch;

    move-result-object v3

    invoke-static {v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->class(JI)J

    move-result-wide v5

    invoke-static {v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->catch(JI)I

    move-result v7

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->case:Lorg/bouncycastle/pqc/crypto/xmss/this;

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->new:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/xmss/public;->if()I

    move-result v9

    new-array v9, v9, [B

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->do:Lorg/bouncycastle/pqc/crypto/xmss/return;

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/xmss/return;->else()[B

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/bouncycastle/pqc/crypto/xmss/this;->class([B[B)V

    new-instance v8, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-direct {v8}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;-><init>()V

    invoke-virtual {v8, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {v8, v7}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->throw(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/pqc/crypto/xmss/goto;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lorg/bouncycastle/pqc/crypto/xmss/if;->get(I)Lorg/bouncycastle/pqc/crypto/xmss/do;

    move-result-object v10

    if-eqz v10, :cond_0

    if-nez v7, :cond_1

    :cond_0
    new-instance v7, Lorg/bouncycastle/pqc/crypto/xmss/do;

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->try:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    iget-object v11, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->do:Lorg/bouncycastle/pqc/crypto/xmss/return;

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/xmss/return;->else()[B

    move-result-object v11

    iget-object v12, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->do:Lorg/bouncycastle/pqc/crypto/xmss/return;

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/xmss/return;->break()[B

    move-result-object v12

    invoke-direct {v7, v10, v11, v12, v8}, Lorg/bouncycastle/pqc/crypto/xmss/do;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;[B[BLorg/bouncycastle/pqc/crypto/xmss/goto;)V

    invoke-virtual {v0, v9, v7}, Lorg/bouncycastle/pqc/crypto/xmss/if;->put(ILorg/bouncycastle/pqc/crypto/xmss/do;)V

    :cond_1
    invoke-direct {p0, p1, v8}, Lorg/bouncycastle/pqc/crypto/xmss/throws;->if([BLorg/bouncycastle/pqc/crypto/xmss/goto;)Lorg/bouncycastle/pqc/crypto/xmss/final;

    move-result-object p1

    new-instance v7, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->try:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-direct {v7, v8}, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;)V

    invoke-virtual {v7, p1}, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->goto(Lorg/bouncycastle/pqc/crypto/xmss/final;)Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;

    move-result-object p1

    invoke-virtual {v0, v9}, Lorg/bouncycastle/pqc/crypto/xmss/if;->get(I)Lorg/bouncycastle/pqc/crypto/xmss/do;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/xmss/do;->getAuthenticationPath()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->case(Ljava/util/List;)Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->try()Lorg/bouncycastle/pqc/crypto/xmss/abstract;

    move-result-object p1

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/switch;->for()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    const/4 v7, 0x1

    :goto_0
    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->new:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/xmss/public;->new()I

    move-result v8

    if-ge v7, v8, :cond_4

    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/crypto/xmss/if;->get(I)Lorg/bouncycastle/pqc/crypto/xmss/do;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/xmss/do;->getRoot()Lorg/bouncycastle/pqc/crypto/xmss/default;

    move-result-object v8

    invoke-static {v5, v6, v4}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->catch(JI)I

    move-result v9

    invoke-static {v5, v6, v4}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->class(JI)J

    move-result-wide v5

    new-instance v10, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-direct {v10}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;-><init>()V

    invoke-virtual {v10, v7}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {v10, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {v10, v9}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->throw(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/pqc/crypto/xmss/goto;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getValue()[B

    move-result-object v8

    invoke-direct {p0, v8, v9}, Lorg/bouncycastle/pqc/crypto/xmss/throws;->if([BLorg/bouncycastle/pqc/crypto/xmss/goto;)Lorg/bouncycastle/pqc/crypto/xmss/final;

    move-result-object v8

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/xmss/if;->get(I)Lorg/bouncycastle/pqc/crypto/xmss/do;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-static {v1, v2, v4, v7}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->throw(JII)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    new-instance v10, Lorg/bouncycastle/pqc/crypto/xmss/do;

    iget-object v11, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->try:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    iget-object v12, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->do:Lorg/bouncycastle/pqc/crypto/xmss/return;

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/xmss/return;->else()[B

    move-result-object v12

    iget-object v13, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->do:Lorg/bouncycastle/pqc/crypto/xmss/return;

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/xmss/return;->break()[B

    move-result-object v13

    invoke-direct {v10, v11, v12, v13, v9}, Lorg/bouncycastle/pqc/crypto/xmss/do;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;[B[BLorg/bouncycastle/pqc/crypto/xmss/goto;)V

    invoke-virtual {v0, v7, v10}, Lorg/bouncycastle/pqc/crypto/xmss/if;->put(ILorg/bouncycastle/pqc/crypto/xmss/do;)V

    :cond_3
    new-instance v9, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->try:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-direct {v9, v10}, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;)V

    invoke-virtual {v9, v8}, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->goto(Lorg/bouncycastle/pqc/crypto/xmss/final;)Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;

    move-result-object v8

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/xmss/if;->get(I)Lorg/bouncycastle/pqc/crypto/xmss/do;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/xmss/do;->getAuthenticationPath()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->case(Ljava/util/List;)Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/xmss/abstract$do;->try()Lorg/bouncycastle/pqc/crypto/xmss/abstract;

    move-result-object v8

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/switch;->for()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_4
    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->else:Z

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->if:Lorg/bouncycastle/pqc/crypto/xmss/return;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/return;->try()Lorg/bouncycastle/pqc/crypto/xmss/return;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->do:Lorg/bouncycastle/pqc/crypto/xmss/return;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->if:Lorg/bouncycastle/pqc/crypto/xmss/return;

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->do:Lorg/bouncycastle/pqc/crypto/xmss/return;

    :goto_1
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/switch;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "index out of bounds"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "signing key no longer usable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "signer not initialized for signature generation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public getUpdatedPrivateKey()Landroid/support/v4/a4;
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->else:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->do:Lorg/bouncycastle/pqc/crypto/xmss/return;

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->do:Lorg/bouncycastle/pqc/crypto/xmss/return;

    :goto_0
    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->if:Lorg/bouncycastle/pqc/crypto/xmss/return;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->if:Lorg/bouncycastle/pqc/crypto/xmss/return;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/return;->try()Lorg/bouncycastle/pqc/crypto/xmss/return;

    move-result-object v0

    goto :goto_0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->goto:Z

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->else:Z

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/return;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->do:Lorg/bouncycastle/pqc/crypto/xmss/return;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->if:Lorg/bouncycastle/pqc/crypto/xmss/return;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/return;->case()Lorg/bouncycastle/pqc/crypto/xmss/public;

    move-result-object p1

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->goto:Z

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/static;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->for:Lorg/bouncycastle/pqc/crypto/xmss/static;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/static;->for()Lorg/bouncycastle/pqc/crypto/xmss/public;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->new:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/public;->goto()Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->try:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/xmss/this;

    new-instance p2, Lorg/bouncycastle/pqc/crypto/xmss/catch;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->new:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/public;->do()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/bouncycastle/pqc/crypto/xmss/catch;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-direct {p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/this;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/catch;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->case:Lorg/bouncycastle/pqc/crypto/xmss/this;

    return-void
.end method

.method public verifySignature([B[B)Z
    .locals 11

    const-string v0, "message == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "signature == null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->for:Lorg/bouncycastle/pqc/crypto/xmss/static;

    const-string v1, "publicKey == null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/switch$if;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->new:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/switch$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/public;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/crypto/xmss/switch$if;->break([B)Lorg/bouncycastle/pqc/crypto/xmss/switch$if;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/switch$if;->case()Lorg/bouncycastle/pqc/crypto/xmss/switch;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/switch;->if()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->for:Lorg/bouncycastle/pqc/crypto/xmss/static;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/static;->try()[B

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/switch;->do()J

    move-result-wide v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->new:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/public;->if()I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->public(JI)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v4/q3;->extends([B[B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->case:Lorg/bouncycastle/pqc/crypto/xmss/this;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/this;->new()Lorg/bouncycastle/pqc/crypto/xmss/case;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/case;->for([B[B)[B

    move-result-object v4

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/switch;->do()J

    move-result-wide v0

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->try:Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->new()I

    move-result p1

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->class(JI)J

    move-result-wide v8

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->catch(JI)I

    move-result v7

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->case:Lorg/bouncycastle/pqc/crypto/xmss/this;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->new:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/public;->if()I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->for:Lorg/bouncycastle/pqc/crypto/xmss/static;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/static;->new()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/this;->class([B[B)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;-><init>()V

    invoke-virtual {v0, v8, v9}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->throw(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/bouncycastle/pqc/crypto/xmss/goto;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/switch;->for()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/bouncycastle/pqc/crypto/xmss/abstract;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->case:Lorg/bouncycastle/pqc/crypto/xmss/this;

    move v3, p1

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/xmss/interface;->do(Lorg/bouncycastle/pqc/crypto/xmss/this;I[BLorg/bouncycastle/pqc/crypto/xmss/abstract;Lorg/bouncycastle/pqc/crypto/xmss/goto;I)Lorg/bouncycastle/pqc/crypto/xmss/default;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->new:Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/public;->new()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/switch;->for()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/abstract;

    invoke-static {v8, v9, p1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->catch(JI)I

    move-result v10

    invoke-static {v8, v9, p1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->class(JI)J

    move-result-wide v3

    new-instance v5, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;-><init>()V

    invoke-virtual {v5, v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {v5, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {v5, v10}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->throw(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lorg/bouncycastle/pqc/crypto/xmss/goto;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->case:Lorg/bouncycastle/pqc/crypto/xmss/this;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getValue()[B

    move-result-object v7

    move v6, p1

    move-object v8, v2

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/interface;->do(Lorg/bouncycastle/pqc/crypto/xmss/this;I[BLorg/bouncycastle/pqc/crypto/xmss/abstract;Lorg/bouncycastle/pqc/crypto/xmss/goto;I)Lorg/bouncycastle/pqc/crypto/xmss/default;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    move-wide v8, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getValue()[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/throws;->for:Lorg/bouncycastle/pqc/crypto/xmss/static;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/static;->try()[B

    move-result-object p2

    invoke-static {p1, p2}, Landroid/support/v4/q3;->abstract([B[B)Z

    move-result p1

    return p1
.end method
