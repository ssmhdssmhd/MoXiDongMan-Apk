.class public Lorg/bouncycastle/pqc/crypto/xmss/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x301434945f01f644L


# instance fields
.field private final bdsState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/bouncycastle/pqc/crypto/xmss/do;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/if;->bdsState:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/if;Lorg/bouncycastle/pqc/crypto/xmss/public;J[B[B)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/if;->bdsState:Ljava/util/Map;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/xmss/if;->bdsState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/if;->bdsState:Ljava/util/Map;

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/xmss/if;->bdsState:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/xmss/if;->do(Lorg/bouncycastle/pqc/crypto/xmss/public;J[B[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/public;J[B[B)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/if;->bdsState:Ljava/util/Map;

    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v2, v0, p2

    if-gez v2, :cond_0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, v0

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/xmss/if;->do(Lorg/bouncycastle/pqc/crypto/xmss/public;J[B[B)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private do(Lorg/bouncycastle/pqc/crypto/xmss/public;J[B[B)V
    .locals 10

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/public;->goto()Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->new()I

    move-result v1

    invoke-static {p2, p3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->class(JI)J

    move-result-wide v2

    invoke-static {p2, p3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->catch(JI)I

    move-result v4

    new-instance v5, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;-><init>()V

    invoke-virtual {v5, v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {v5, v4}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->throw(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/pqc/crypto/xmss/goto;

    const/4 v6, 0x1

    shl-int v7, v6, v1

    sub-int/2addr v7, v6

    if-ge v4, v7, :cond_2

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lorg/bouncycastle/pqc/crypto/xmss/if;->get(I)Lorg/bouncycastle/pqc/crypto/xmss/do;

    move-result-object v9

    if-eqz v9, :cond_0

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/do;

    invoke-direct {v4, v0, p4, p5, v5}, Lorg/bouncycastle/pqc/crypto/xmss/do;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;[B[BLorg/bouncycastle/pqc/crypto/xmss/goto;)V

    invoke-virtual {p0, v8, v4}, Lorg/bouncycastle/pqc/crypto/xmss/if;->put(ILorg/bouncycastle/pqc/crypto/xmss/do;)V

    :cond_1
    invoke-virtual {p0, v8, p4, p5, v5}, Lorg/bouncycastle/pqc/crypto/xmss/if;->update(I[B[BLorg/bouncycastle/pqc/crypto/xmss/goto;)Lorg/bouncycastle/pqc/crypto/xmss/do;

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/public;->new()I

    move-result v0

    if-ge v6, v0, :cond_5

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->catch(JI)I

    move-result v0

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->class(JI)J

    move-result-wide v2

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;-><init>()V

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {v4, v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {v4, v0}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->throw(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/goto;

    if-ge v0, v7, :cond_4

    invoke-static {p2, p3, v1, v6}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->super(JII)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v6}, Lorg/bouncycastle/pqc/crypto/xmss/if;->get(I)Lorg/bouncycastle/pqc/crypto/xmss/do;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/do;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/public;->goto()Lorg/bouncycastle/pqc/crypto/xmss/finally;

    move-result-object v5

    invoke-direct {v0, v5, p4, p5, v4}, Lorg/bouncycastle/pqc/crypto/xmss/do;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;[B[BLorg/bouncycastle/pqc/crypto/xmss/goto;)V

    invoke-virtual {p0, v6, v0}, Lorg/bouncycastle/pqc/crypto/xmss/if;->put(ILorg/bouncycastle/pqc/crypto/xmss/do;)V

    :cond_3
    invoke-virtual {p0, v6, p4, p5, v4}, Lorg/bouncycastle/pqc/crypto/xmss/if;->update(I[B[BLorg/bouncycastle/pqc/crypto/xmss/goto;)Lorg/bouncycastle/pqc/crypto/xmss/do;

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/pqc/crypto/xmss/do;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/if;->bdsState:Ljava/util/Map;

    invoke-static {p1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/do;

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/if;->bdsState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(ILorg/bouncycastle/pqc/crypto/xmss/do;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/if;->bdsState:Ljava/util/Map;

    invoke-static {p1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public update(I[B[BLorg/bouncycastle/pqc/crypto/xmss/goto;)Lorg/bouncycastle/pqc/crypto/xmss/do;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/if;->bdsState:Ljava/util/Map;

    invoke-static {p1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/if;->bdsState:Ljava/util/Map;

    invoke-static {p1}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/do;

    invoke-virtual {p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/xmss/do;->getNextState([B[BLorg/bouncycastle/pqc/crypto/xmss/goto;)Lorg/bouncycastle/pqc/crypto/xmss/do;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/do;

    return-object p1
.end method

.method public withWOTSDigest(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/pqc/crypto/xmss/if;
    .locals 5

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/if;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/if;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/if;->bdsState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/xmss/if;->bdsState:Ljava/util/Map;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/if;->bdsState:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/do;

    invoke-virtual {v4, p1}, Lorg/bouncycastle/pqc/crypto/xmss/do;->withWOTSDigest(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/pqc/crypto/xmss/do;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
