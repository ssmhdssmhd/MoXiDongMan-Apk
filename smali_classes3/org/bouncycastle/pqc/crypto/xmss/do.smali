.class public final Lorg/bouncycastle/pqc/crypto/xmss/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private authenticationPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/pqc/crypto/xmss/default;",
            ">;"
        }
    .end annotation
.end field

.field private transient do:Lorg/bouncycastle/pqc/crypto/xmss/this;

.field private index:I

.field private k:I

.field private keep:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/bouncycastle/pqc/crypto/xmss/default;",
            ">;"
        }
    .end annotation
.end field

.field private retain:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList<",
            "Lorg/bouncycastle/pqc/crypto/xmss/default;",
            ">;>;"
        }
    .end annotation
.end field

.field private root:Lorg/bouncycastle/pqc/crypto/xmss/default;

.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/bouncycastle/pqc/crypto/xmss/default;",
            ">;"
        }
    .end annotation
.end field

.field private final treeHashInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/pqc/crypto/xmss/for;",
            ">;"
        }
    .end annotation
.end field

.field private final treeHeight:I

.field private used:Z


# direct methods
.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/do;Lorg/bouncycastle/crypto/Digest;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/this;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/catch;

    invoke-direct {v1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/catch;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/this;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/catch;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->do:Lorg/bouncycastle/pqc/crypto/xmss/this;

    iget p2, p1, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHeight:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHeight:I

    iget p2, p1, Lorg/bouncycastle/pqc/crypto/xmss/do;->k:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->k:I

    iget-object p2, p1, Lorg/bouncycastle/pqc/crypto/xmss/do;->root:Lorg/bouncycastle/pqc/crypto/xmss/default;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->root:Lorg/bouncycastle/pqc/crypto/xmss/default;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->authenticationPath:Ljava/util/List;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/xmss/do;->authenticationPath:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p1, Lorg/bouncycastle/pqc/crypto/xmss/do;->retain:Ljava/util/Map;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->retain:Ljava/util/Map;

    new-instance p2, Ljava/util/Stack;

    invoke-direct {p2}, Ljava/util/Stack;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->stack:Ljava/util/Stack;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/xmss/do;->stack:Ljava/util/Stack;

    invoke-virtual {p2, v0}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p1, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHashInstances:Ljava/util/List;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHashInstances:Ljava/util/List;

    new-instance p2, Ljava/util/TreeMap;

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/xmss/do;->keep:Ljava/util/Map;

    invoke-direct {p2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->keep:Ljava/util/Map;

    iget p2, p1, Lorg/bouncycastle/pqc/crypto/xmss/do;->index:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->index:I

    iget-boolean p1, p1, Lorg/bouncycastle/pqc/crypto/xmss/do;->used:Z

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->used:Z

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/xmss/do;->new()V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/do;[B[BLorg/bouncycastle/pqc/crypto/xmss/goto;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/xmss/do;->do:Lorg/bouncycastle/pqc/crypto/xmss/this;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->do:Lorg/bouncycastle/pqc/crypto/xmss/this;

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHeight:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHeight:I

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/xmss/do;->k:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->k:I

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/xmss/do;->root:Lorg/bouncycastle/pqc/crypto/xmss/default;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->root:Lorg/bouncycastle/pqc/crypto/xmss/default;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->authenticationPath:Ljava/util/List;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/xmss/do;->authenticationPath:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/xmss/do;->retain:Ljava/util/Map;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->retain:Ljava/util/Map;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->stack:Ljava/util/Stack;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/xmss/do;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHashInstances:Ljava/util/List;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHashInstances:Ljava/util/List;

    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/xmss/do;->keep:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->keep:Ljava/util/Map;

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/xmss/do;->index:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->index:I

    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/xmss/do;->for([B[BLorg/bouncycastle/pqc/crypto/xmss/goto;)V

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/bouncycastle/pqc/crypto/xmss/do;->used:Z

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;I)V
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->case()Lorg/bouncycastle/pqc/crypto/xmss/this;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->new()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->try()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/xmss/do;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/this;II)V

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->index:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->used:Z

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;[B[BLorg/bouncycastle/pqc/crypto/xmss/goto;)V
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->case()Lorg/bouncycastle/pqc/crypto/xmss/this;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->new()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->try()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/xmss/do;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/this;II)V

    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/xmss/do;->if([B[BLorg/bouncycastle/pqc/crypto/xmss/goto;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;[B[BLorg/bouncycastle/pqc/crypto/xmss/goto;I)V
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->case()Lorg/bouncycastle/pqc/crypto/xmss/this;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->new()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/finally;->try()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/xmss/do;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/this;II)V

    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/xmss/do;->if([B[BLorg/bouncycastle/pqc/crypto/xmss/goto;)V

    :goto_0
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->index:I

    if-ge p1, p5, :cond_0

    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/xmss/do;->for([B[BLorg/bouncycastle/pqc/crypto/xmss/goto;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->used:Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/this;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->do:Lorg/bouncycastle/pqc/crypto/xmss/this;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHeight:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->k:I

    if-gt p3, p2, :cond_1

    const/4 p1, 0x2

    if-lt p3, p1, :cond_1

    sub-int/2addr p2, p3

    rem-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->authenticationPath:Ljava/util/List;

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->retain:Ljava/util/Map;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->stack:Ljava/util/Stack;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHashInstances:Ljava/util/List;

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHashInstances:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/for;

    invoke-direct {v1, p3}, Lorg/bouncycastle/pqc/crypto/xmss/for;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->keep:Ljava/util/Map;

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->index:I

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->used:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "illegal value for BDS parameter k"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private do()Lorg/bouncycastle/pqc/crypto/xmss/for;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHashInstances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/for;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/for;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/for;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/for;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/for;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_3

    :goto_1
    move-object v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/for;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/for;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/for;->getIndexLeaf()I

    move-result v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/for;->getIndexLeaf()I

    move-result v4

    if-ge v3, v4, :cond_0

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method private for([B[BLorg/bouncycastle/pqc/crypto/xmss/goto;)V
    .locals 11

    const-string v0, "otsHashAddress == null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->used:Z

    if-nez v0, :cond_9

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->index:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHeight:I

    const/4 v2, 0x1

    shl-int v3, v2, v1

    add-int/lit8 v3, v3, -0x2

    if-gt v0, v3, :cond_8

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->for(II)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->index:I

    add-int/lit8 v3, v0, 0x1

    shr-int/2addr v1, v3

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHeight:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->keep:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->authenticationPath:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/default;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/default;->clone()Lorg/bouncycastle/pqc/crypto/xmss/default;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/else$if;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/else$if;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/else$if;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/else$if;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/else$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/else;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/try;

    const/4 v4, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->index:I

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->throw(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v0

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/goto;->case()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->final(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v0

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/goto;->else()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->super(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v0

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->do()I

    move-result p3

    invoke-virtual {v0, p3}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->else(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/goto;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->do:Lorg/bouncycastle/pqc/crypto/xmss/this;

    invoke-virtual {v0, p2, p3}, Lorg/bouncycastle/pqc/crypto/xmss/this;->catch([BLorg/bouncycastle/pqc/crypto/xmss/goto;)[B

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lorg/bouncycastle/pqc/crypto/xmss/this;->class([B[B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->do:Lorg/bouncycastle/pqc/crypto/xmss/this;

    invoke-virtual {v0, p3}, Lorg/bouncycastle/pqc/crypto/xmss/this;->else(Lorg/bouncycastle/pqc/crypto/xmss/goto;)Lorg/bouncycastle/pqc/crypto/xmss/const;

    move-result-object v0

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/else$if;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/xmss/else$if;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/else$if;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/else$if;

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->index:I

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/else$if;->final(I)Lorg/bouncycastle/pqc/crypto/xmss/else$if;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/else;->else()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/else$if;->super(I)Lorg/bouncycastle/pqc/crypto/xmss/else$if;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/else;->goto()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/else$if;->throw(I)Lorg/bouncycastle/pqc/crypto/xmss/else$if;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->do()I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->else(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/else$if;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/else$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/else;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->do:Lorg/bouncycastle/pqc/crypto/xmss/this;

    invoke-static {v3, v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/extends;->do(Lorg/bouncycastle/pqc/crypto/xmss/this;Lorg/bouncycastle/pqc/crypto/xmss/const;Lorg/bouncycastle/pqc/crypto/xmss/else;)Lorg/bouncycastle/pqc/crypto/xmss/default;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->authenticationPath:Ljava/util/List;

    invoke-interface {v1, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_1
    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;-><init>()V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if()I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v1, v5}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->const(I)Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    move-result-object v1

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->index:I

    shr-int/2addr v6, v0

    invoke-virtual {v1, v6}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->final(I)Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    move-result-object v1

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->do()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->else(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/try;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->do:Lorg/bouncycastle/pqc/crypto/xmss/this;

    invoke-virtual {v3, p2, p3}, Lorg/bouncycastle/pqc/crypto/xmss/this;->catch([BLorg/bouncycastle/pqc/crypto/xmss/goto;)[B

    move-result-object v6

    invoke-virtual {v3, v6, p1}, Lorg/bouncycastle/pqc/crypto/xmss/this;->class([B[B)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->do:Lorg/bouncycastle/pqc/crypto/xmss/this;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->authenticationPath:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pqc/crypto/xmss/default;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->keep:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/pqc/crypto/xmss/default;

    invoke-static {v3, v6, v7, v1}, Lorg/bouncycastle/pqc/crypto/xmss/extends;->if(Lorg/bouncycastle/pqc/crypto/xmss/this;Lorg/bouncycastle/pqc/crypto/xmss/default;Lorg/bouncycastle/pqc/crypto/xmss/default;Lorg/bouncycastle/pqc/crypto/xmss/throw;)Lorg/bouncycastle/pqc/crypto/xmss/default;

    move-result-object v1

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/default;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getValue()[B

    move-result-object v1

    invoke-direct {v3, v6, v1}, Lorg/bouncycastle/pqc/crypto/xmss/default;-><init>(I[B)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->authenticationPath:Ljava/util/List;

    invoke-interface {v1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->keep:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHeight:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->k:I

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->authenticationPath:Ljava/util/List;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHashInstances:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/pqc/crypto/xmss/for;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/xmss/for;->getTailNode()Lorg/bouncycastle/pqc/crypto/xmss/default;

    move-result-object v5

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->authenticationPath:Ljava/util/List;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->retain:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    :goto_1
    invoke-interface {v3, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHeight:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->k:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_5

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->index:I

    add-int/2addr v3, v2

    shl-int v5, v2, v1

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v3, v5

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHeight:I

    shl-int v5, v2, v5

    if-ge v3, v5, :cond_4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHashInstances:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/pqc/crypto/xmss/for;

    invoke-virtual {v5, v3}, Lorg/bouncycastle/pqc/crypto/xmss/for;->initialize(I)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHeight:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->k:I

    sub-int/2addr v0, v1

    shr-int/2addr v0, v2

    if-ge v4, v0, :cond_7

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/xmss/do;->do()Lorg/bouncycastle/pqc/crypto/xmss/for;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->stack:Ljava/util/Stack;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->do:Lorg/bouncycastle/pqc/crypto/xmss/this;

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-virtual/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/xmss/for;->update(Ljava/util/Stack;Lorg/bouncycastle/pqc/crypto/xmss/this;[B[BLorg/bouncycastle/pqc/crypto/xmss/goto;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->index:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->index:I

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "index out of bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "index already used"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private if([B[BLorg/bouncycastle/pqc/crypto/xmss/goto;)V
    .locals 10

    const-string v0, "otsHashAddress == null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/else$if;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/else$if;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/else$if;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/else$if;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/else$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/else;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/try;

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHeight:I

    const/4 v4, 0x1

    shl-int v3, v4, v3

    if-ge v2, v3, :cond_5

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->throw(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v3

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/goto;->case()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->final(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v3

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/goto;->else()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->super(I)Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    move-result-object v3

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->do()I

    move-result p3

    invoke-virtual {v3, p3}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->else(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/goto$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/goto;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->do:Lorg/bouncycastle/pqc/crypto/xmss/this;

    invoke-virtual {v3, p2, p3}, Lorg/bouncycastle/pqc/crypto/xmss/this;->catch([BLorg/bouncycastle/pqc/crypto/xmss/goto;)[B

    move-result-object v5

    invoke-virtual {v3, v5, p1}, Lorg/bouncycastle/pqc/crypto/xmss/this;->class([B[B)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->do:Lorg/bouncycastle/pqc/crypto/xmss/this;

    invoke-virtual {v3, p3}, Lorg/bouncycastle/pqc/crypto/xmss/this;->else(Lorg/bouncycastle/pqc/crypto/xmss/goto;)Lorg/bouncycastle/pqc/crypto/xmss/const;

    move-result-object v3

    new-instance v5, Lorg/bouncycastle/pqc/crypto/xmss/else$if;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/xmss/else$if;-><init>()V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/pqc/crypto/xmss/else$if;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/pqc/crypto/xmss/else$if;

    invoke-virtual {v5, v2}, Lorg/bouncycastle/pqc/crypto/xmss/else$if;->final(I)Lorg/bouncycastle/pqc/crypto/xmss/else$if;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/else;->else()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/else$if;->super(I)Lorg/bouncycastle/pqc/crypto/xmss/else$if;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/else;->goto()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/else$if;->throw(I)Lorg/bouncycastle/pqc/crypto/xmss/else$if;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->do()I

    move-result v0

    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->else(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/else$if;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/else$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/else;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->do:Lorg/bouncycastle/pqc/crypto/xmss/this;

    invoke-static {v5, v3, v0}, Lorg/bouncycastle/pqc/crypto/xmss/extends;->do(Lorg/bouncycastle/pqc/crypto/xmss/this;Lorg/bouncycastle/pqc/crypto/xmss/const;Lorg/bouncycastle/pqc/crypto/xmss/else;)Lorg/bouncycastle/pqc/crypto/xmss/default;

    move-result-object v3

    new-instance v5, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {v5, v2}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->final(I)Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    move-result-object v5

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->do()I

    move-result v1

    invoke-virtual {v5, v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->else(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/try;

    :goto_1
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->stack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->stack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/pqc/crypto/xmss/default;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_4

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getHeight()I

    move-result v5

    shl-int v5, v4, v5

    div-int v5, v2, v5

    if-ne v5, v4, :cond_0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->authenticationPath:Ljava/util/List;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/default;->clone()Lorg/bouncycastle/pqc/crypto/xmss/default;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getHeight()I

    move-result v7

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHeight:I

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->k:I

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_1

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHashInstances:Ljava/util/List;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getHeight()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/pqc/crypto/xmss/for;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/default;->clone()Lorg/bouncycastle/pqc/crypto/xmss/default;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/bouncycastle/pqc/crypto/xmss/for;->setNode(Lorg/bouncycastle/pqc/crypto/xmss/default;)V

    :cond_1
    if-lt v5, v6, :cond_3

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v4, :cond_3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getHeight()I

    move-result v5

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHeight:I

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->k:I

    sub-int/2addr v6, v7

    if-lt v5, v6, :cond_3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getHeight()I

    move-result v5

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHeight:I

    add-int/lit8 v6, v6, -0x2

    if-gt v5, v6, :cond_3

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->retain:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/default;->clone()Lorg/bouncycastle/pqc/crypto/xmss/default;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->retain:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->retain:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/default;->clone()Lorg/bouncycastle/pqc/crypto/xmss/default;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    new-instance v5, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/try;->else()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->const(I)Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    move-result-object v5

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/try;->goto()I

    move-result v6

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->final(I)Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    move-result-object v5

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->do()I

    move-result v1

    invoke-virtual {v5, v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->else(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/try;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->do:Lorg/bouncycastle/pqc/crypto/xmss/this;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->stack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pqc/crypto/xmss/default;

    invoke-static {v5, v6, v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/extends;->if(Lorg/bouncycastle/pqc/crypto/xmss/this;Lorg/bouncycastle/pqc/crypto/xmss/default;Lorg/bouncycastle/pqc/crypto/xmss/default;Lorg/bouncycastle/pqc/crypto/xmss/throw;)Lorg/bouncycastle/pqc/crypto/xmss/default;

    move-result-object v3

    new-instance v5, Lorg/bouncycastle/pqc/crypto/xmss/default;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/default;->getValue()[B

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lorg/bouncycastle/pqc/crypto/xmss/default;-><init>(I[B)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->if()I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->for()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/try;->else()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->const(I)Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/try;->goto()I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->final(I)Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw;->do()I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->else(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/try$if;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/try$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/throw;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/try;

    move-object v3, v5

    goto/16 :goto_1

    :cond_4
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->stack:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->stack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/default;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->root:Lorg/bouncycastle/pqc/crypto/xmss/default;

    return-void
.end method

.method private new()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->authenticationPath:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->retain:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->stack:Ljava/util/Stack;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHashInstances:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->keep:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHeight:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->index:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/volatile;->final(IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "index in BDS state out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "keep == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "treeHashInstances == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stack == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "retain == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "authenticationPath == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAuthenticationPath()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/pqc/crypto/xmss/default;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->authenticationPath:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/default;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/default;->clone()Lorg/bouncycastle/pqc/crypto/xmss/default;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->index:I

    return v0
.end method

.method public getNextState([B[BLorg/bouncycastle/pqc/crypto/xmss/goto;)Lorg/bouncycastle/pqc/crypto/xmss/do;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/do;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/xmss/do;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/do;[B[BLorg/bouncycastle/pqc/crypto/xmss/goto;)V

    return-object v0
.end method

.method public getRoot()Lorg/bouncycastle/pqc/crypto/xmss/default;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->root:Lorg/bouncycastle/pqc/crypto/xmss/default;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/default;->clone()Lorg/bouncycastle/pqc/crypto/xmss/default;

    move-result-object v0

    return-object v0
.end method

.method public getTreeHeight()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->treeHeight:I

    return v0
.end method

.method public isUsed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/do;->used:Z

    return v0
.end method

.method public withWOTSDigest(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/pqc/crypto/xmss/do;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/do;

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/new;->do(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/do;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/do;Lorg/bouncycastle/crypto/Digest;)V

    return-object v0
.end method
