.class final Lcom/google/common/graph/const;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/graph/GraphConnections;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/const$this;,
        Lcom/google/common/graph/const$break;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/graph/GraphConnections<",
        "TN;TV;>;"
    }
.end annotation


# static fields
.field private static final try:Ljava/lang/Object;


# instance fields
.field private final do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TN;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private for:I

.field private final if:Ljava/util/List;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/common/graph/const$this<",
            "TN;>;>;"
        }
    .end annotation
.end field

.field private new:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/graph/const;->try:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/util/List;II)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TN;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/common/graph/const$this<",
            "TN;>;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/graph/const;->do:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Lcom/google/common/graph/const;->if:Ljava/util/List;

    .line 4
    invoke-static {p3}, Lcom/google/common/graph/default;->if(I)I

    move-result p2

    iput p2, p0, Lcom/google/common/graph/const;->for:I

    .line 5
    invoke-static {p4}, Lcom/google/common/graph/default;->if(I)I

    move-result p2

    iput p2, p0, Lcom/google/common/graph/const;->new:I

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    if-gt p3, p2, :cond_0

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-gt p4, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-static {p1}, Landroid/support/v4/af1;->t(Z)V

    return-void
.end method

.method public static break(Ljava/lang/Object;Ljava/lang/Iterable;Lcom/google/common/base/Function;)Lcom/google/common/graph/const;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TN;",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/graph/import<",
            "TN;>;>;",
            "Lcom/google/common/base/Function<",
            "TN;TV;>;)",
            "Lcom/google/common/graph/const<",
            "TN;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/collect/v0;->builder()Lcom/google/common/collect/v0$do;

    move-result-object v1

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/graph/import;

    .line 4
    invoke-virtual {v5}, Lcom/google/common/graph/import;->new()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/google/common/graph/import;->try()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5
    new-instance v5, Lcom/google/common/graph/const$break;

    invoke-interface {p2, p0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/common/graph/const$break;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v5, Lcom/google/common/graph/const$this$do;

    invoke-direct {v5, p0}, Lcom/google/common/graph/const$this$do;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lcom/google/common/collect/v0$do;->this(Ljava/lang/Object;)Lcom/google/common/collect/v0$do;

    .line 7
    new-instance v5, Lcom/google/common/graph/const$this$if;

    invoke-direct {v5, p0}, Lcom/google/common/graph/const$this$if;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lcom/google/common/collect/v0$do;->this(Ljava/lang/Object;)Lcom/google/common/collect/v0$do;

    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v5}, Lcom/google/common/graph/import;->try()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9
    invoke-virtual {v5}, Lcom/google/common/graph/import;->new()Ljava/lang/Object;

    move-result-object v5

    .line 10
    sget-object v6, Lcom/google/common/graph/const;->try:Ljava/lang/Object;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 11
    new-instance v7, Lcom/google/common/graph/const$break;

    invoke-direct {v7, v6}, Lcom/google/common/graph/const$break;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    new-instance v6, Lcom/google/common/graph/const$this$do;

    invoke-direct {v6, v5}, Lcom/google/common/graph/const$this$do;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Lcom/google/common/collect/v0$do;->this(Ljava/lang/Object;)Lcom/google/common/collect/v0$do;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v5}, Lcom/google/common/graph/import;->new()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Landroid/support/v4/af1;->new(Z)V

    .line 14
    invoke-virtual {v5}, Lcom/google/common/graph/import;->try()Ljava/lang/Object;

    move-result-object v5

    .line 15
    invoke-interface {p2, v5}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 16
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 17
    sget-object v8, Lcom/google/common/graph/const;->try:Ljava/lang/Object;

    if-ne v7, v8, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    invoke-static {v7}, Landroid/support/v4/af1;->new(Z)V

    .line 18
    new-instance v7, Lcom/google/common/graph/const$break;

    invoke-direct {v7, v6}, Lcom/google/common/graph/const$break;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_4
    new-instance v6, Lcom/google/common/graph/const$this$if;

    invoke-direct {v6, v5}, Lcom/google/common/graph/const$this$if;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Lcom/google/common/collect/v0$do;->this(Ljava/lang/Object;)Lcom/google/common/collect/v0$do;

    goto :goto_1

    .line 20
    :cond_5
    new-instance p0, Lcom/google/common/graph/const;

    .line 21
    invoke-virtual {v1}, Lcom/google/common/collect/v0$do;->const()Lcom/google/common/collect/v0;

    move-result-object p1

    invoke-direct {p0, v0, p1, v3, v4}, Lcom/google/common/graph/const;-><init>(Ljava/util/Map;Ljava/util/List;II)V

    return-object p0
.end method

.method public static synthetic case(Lcom/google/common/graph/const;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/common/graph/const;->new:I

    return p0
.end method

.method public static synthetic do(Lcom/google/common/graph/const;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/graph/const;->if:Ljava/util/List;

    return-object p0
.end method

.method private static else(Ljava/lang/Object;)Z
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/common/graph/const;->try:Ljava/lang/Object;

    if-eq p0, v0, :cond_1

    instance-of p0, p0, Lcom/google/common/graph/const$break;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic for(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/graph/const;->else(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static goto(Ljava/lang/Object;)Z
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/common/graph/const;->try:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic if(Lcom/google/common/graph/const;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/graph/const;->do:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic new(Lcom/google/common/graph/const;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/common/graph/const;->for:I

    return p0
.end method

.method public static this(Lcom/google/common/graph/while;)Lcom/google/common/graph/const;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/while<",
            "TN;>;)",
            "Lcom/google/common/graph/const<",
            "TN;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/graph/const$goto;->do:[I

    invoke-virtual {p0}, Lcom/google/common/graph/while;->goto()Lcom/google/common/graph/while$if;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Lcom/google/common/graph/while;->goto()Lcom/google/common/graph/while$if;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    const/4 p0, 0x0

    .line 4
    :goto_0
    new-instance v0, Lcom/google/common/graph/const;

    new-instance v1, Ljava/util/HashMap;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Ljava/util/HashMap;-><init>(IF)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/google/common/graph/const;-><init>(Ljava/util/Map;Ljava/util/List;II)V

    return-object v0
.end method

.method public static synthetic try(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/graph/const;->goto(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addPredecessor(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TV;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/common/graph/const;->do:Ljava/util/Map;

    sget-object v0, Lcom/google/common/graph/const;->try:Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_0

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 2
    :cond_0
    instance-of v3, p2, Lcom/google/common/graph/const$break;

    if-eqz v3, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/common/graph/const;->do:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-eq p2, v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/google/common/graph/const;->do:Ljava/util/Map;

    new-instance v1, Lcom/google/common/graph/const$break;

    invoke-direct {v1, p2}, Lcom/google/common/graph/const$break;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 5
    iget p2, p0, Lcom/google/common/graph/const;->for:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/google/common/graph/const;->for:I

    invoke-static {p2}, Lcom/google/common/graph/default;->new(I)I

    .line 6
    iget-object p2, p0, Lcom/google/common/graph/const;->if:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 7
    new-instance v0, Lcom/google/common/graph/const$this$do;

    invoke-direct {v0, p1}, Lcom/google/common/graph/const$this$do;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public addSuccessor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/const;->do:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 2
    :cond_0
    instance-of v2, v0, Lcom/google/common/graph/const$break;

    if-eqz v2, :cond_1

    .line 3
    iget-object v1, p0, Lcom/google/common/graph/const;->do:Ljava/util/Map;

    new-instance v2, Lcom/google/common/graph/const$break;

    invoke-direct {v2, p2}, Lcom/google/common/graph/const$break;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    check-cast v0, Lcom/google/common/graph/const$break;

    invoke-static {v0}, Lcom/google/common/graph/const$break;->do(Lcom/google/common/graph/const$break;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_1
    sget-object v2, Lcom/google/common/graph/const;->try:Ljava/lang/Object;

    if-ne v0, v2, :cond_2

    .line 6
    iget-object v0, p0, Lcom/google/common/graph/const;->do:Ljava/util/Map;

    new-instance v2, Lcom/google/common/graph/const$break;

    invoke-direct {v2, p2}, Lcom/google/common/graph/const$break;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 7
    iget p2, p0, Lcom/google/common/graph/const;->new:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/graph/const;->new:I

    invoke-static {p2}, Lcom/google/common/graph/default;->new(I)I

    .line 8
    iget-object p2, p0, Lcom/google/common/graph/const;->if:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 9
    new-instance v1, Lcom/google/common/graph/const$this$if;

    invoke-direct {v1, p1}, Lcom/google/common/graph/const$this$if;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public adjacentNodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/const;->if:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/graph/const;->do:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/graph/const$do;

    invoke-direct {v0, p0}, Lcom/google/common/graph/const$do;-><init>(Lcom/google/common/graph/const;)V

    return-object v0
.end method

.method public incidentEdgeIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Iterator<",
            "Lcom/google/common/graph/import<",
            "TN;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/const;->if:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/graph/const;->predecessors()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/const$new;

    invoke-direct {v1, p0, p1}, Lcom/google/common/graph/const$new;-><init>(Lcom/google/common/graph/const;Ljava/lang/Object;)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/collect/s1;->p(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/google/common/graph/const;->successors()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lcom/google/common/graph/const$try;

    invoke-direct {v2, p0, p1}, Lcom/google/common/graph/const$try;-><init>(Lcom/google/common/graph/const;Ljava/lang/Object;)V

    .line 5
    invoke-static {v1, v2}, Lcom/google/common/collect/s1;->p(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object p1

    .line 6
    invoke-static {v0, p1}, Lcom/google/common/collect/s1;->break(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/const$case;

    invoke-direct {v1, p0, p1}, Lcom/google/common/graph/const$case;-><init>(Lcom/google/common/graph/const;Ljava/lang/Object;)V

    .line 8
    invoke-static {v0, v1}, Lcom/google/common/collect/s1;->p(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object p1

    .line 9
    :goto_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    new-instance v1, Lcom/google/common/graph/const$else;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/common/graph/const$else;-><init>(Lcom/google/common/graph/const;Ljava/util/Iterator;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-object v1
.end method

.method public predecessors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/const$if;

    invoke-direct {v0, p0}, Lcom/google/common/graph/const$if;-><init>(Lcom/google/common/graph/const;)V

    return-object v0
.end method

.method public removePredecessor(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/const;->do:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/google/common/graph/const;->try:Ljava/lang/Object;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/graph/const;->do:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 4
    :cond_0
    instance-of v1, v0, Lcom/google/common/graph/const$break;

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/google/common/graph/const;->do:Ljava/util/Map;

    check-cast v0, Lcom/google/common/graph/const$break;

    invoke-static {v0}, Lcom/google/common/graph/const$break;->do(Lcom/google/common/graph/const$break;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 6
    iget v0, p0, Lcom/google/common/graph/const;->for:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/common/graph/const;->for:I

    invoke-static {v0}, Lcom/google/common/graph/default;->if(I)I

    .line 7
    iget-object v0, p0, Lcom/google/common/graph/const;->if:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 8
    new-instance v1, Lcom/google/common/graph/const$this$do;

    invoke-direct {v1, p1}, Lcom/google/common/graph/const$this$do;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public removeSuccessor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/const;->do:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    sget-object v1, Lcom/google/common/graph/const;->try:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v2, v0, Lcom/google/common/graph/const$break;

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/google/common/graph/const;->do:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    check-cast v0, Lcom/google/common/graph/const$break;

    invoke-static {v0}, Lcom/google/common/graph/const$break;->do(Lcom/google/common/graph/const$break;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/common/graph/const;->do:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 7
    iget v1, p0, Lcom/google/common/graph/const;->new:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/graph/const;->new:I

    invoke-static {v1}, Lcom/google/common/graph/default;->if(I)I

    .line 8
    iget-object v1, p0, Lcom/google/common/graph/const;->if:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 9
    new-instance v2, Lcom/google/common/graph/const$this$if;

    invoke-direct {v2, p1}, Lcom/google/common/graph/const$this$if;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public successors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/const$for;

    invoke-direct {v0, p0}, Lcom/google/common/graph/const$for;-><init>(Lcom/google/common/graph/const;)V

    return-object v0
.end method

.method public value(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/graph/const;->do:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/google/common/graph/const;->try:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/google/common/graph/const$break;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lcom/google/common/graph/const$break;

    invoke-static {p1}, Lcom/google/common/graph/const$break;->do(Lcom/google/common/graph/const$break;)Ljava/lang/Object;

    move-result-object p1

    :cond_1
    return-object p1
.end method
