.class public abstract Lcom/jayway/jsonpath/internal/path/PathToken;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private definite:Ljava/lang/Boolean;

.field private next:Lcom/jayway/jsonpath/internal/path/PathToken;

.field private prev:Lcom/jayway/jsonpath/internal/path/PathToken;

.field private upstreamDefinite:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathToken;->definite:Ljava/lang/Boolean;

    .line 3
    iput-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathToken;->upstreamDefinite:Ljava/lang/Boolean;

    return-void
.end method

.method private static hasProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->getPropertyKeys(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static readObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p2

    invoke-interface {p2, p1, p0}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->getMapValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public appendTailToken(Lcom/jayway/jsonpath/internal/path/PathToken;)Lcom/jayway/jsonpath/internal/path/PathToken;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/PathToken;->next:Lcom/jayway/jsonpath/internal/path/PathToken;

    .line 2
    iput-object p0, p1, Lcom/jayway/jsonpath/internal/path/PathToken;->prev:Lcom/jayway/jsonpath/internal/path/PathToken;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract evaluate(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V
.end method

.method public abstract getPathFragment()Ljava/lang/String;
.end method

.method public getTokenCount()I
    .locals 3

    const/4 v0, 0x1

    move-object v1, p0

    .line 1
    :goto_0
    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/path/PathToken;->isLeaf()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/path/PathToken;->next()Lcom/jayway/jsonpath/internal/path/PathToken;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public handleArrayIndex(ILjava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    const-string v1, "["

    aput-object v1, v0, p2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 p2, 0x3

    const-string v1, "]"

    aput-object v1, v0, p2

    invoke-static {v0}, Lcom/jayway/jsonpath/internal/Utils;->concat([Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->forUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3, p1}, Lcom/jayway/jsonpath/internal/PathRef;->create(Ljava/lang/Object;I)Lcom/jayway/jsonpath/internal/PathRef;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/jayway/jsonpath/internal/PathRef;->NO_OP:Lcom/jayway/jsonpath/internal/PathRef;

    :goto_0
    if-gez p1, :cond_1

    .line 3
    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v1

    invoke-interface {v1, p3}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->length(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr p1, v1

    .line 4
    :cond_1
    :try_start_0
    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v1

    invoke-interface {v1, p3, p1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->getArrayIndex(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isLeaf()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 6
    invoke-virtual {p4, p2, v0, p1}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->addResult(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->next()Lcom/jayway/jsonpath/internal/path/PathToken;

    move-result-object p3

    invoke-virtual {p3, p2, v0, p1, p4}, Lcom/jayway/jsonpath/internal/path/PathToken;->evaluate(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method public handleObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "Missing property in path "

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_b

    const/4 v0, 0x0

    .line 2
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object p1, v4, v0

    const-string p1, "[\'"

    aput-object p1, v4, v2

    const/4 p1, 0x2

    aput-object p4, v4, p1

    const/4 p1, 0x3

    const-string v0, "\']"

    aput-object v0, v4, p1

    .line 3
    invoke-static {v4}, Lcom/jayway/jsonpath/internal/Utils;->concat([Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p4, p2, p3}, Lcom/jayway/jsonpath/internal/path/PathToken;->readObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    sget-object v2, Lcom/jayway/jsonpath/spi/json/JsonProvider;->UNDEFINED:Ljava/lang/Object;

    if-ne v0, v2, :cond_8

    .line 6
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p3}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->options()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/jayway/jsonpath/Option;->DEFAULT_PATH_LEAF_TO_NULL:Lcom/jayway/jsonpath/Option;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {p3}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->options()Ljava/util/Set;

    move-result-object p2

    sget-object p4, Lcom/jayway/jsonpath/Option;->SUPPRESS_EXCEPTIONS:Lcom/jayway/jsonpath/Option;

    invoke-interface {p2, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 9
    invoke-virtual {p3}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->options()Ljava/util/Set;

    move-result-object p2

    sget-object p3, Lcom/jayway/jsonpath/Option;->REQUIRE_PROPERTIES:Lcom/jayway/jsonpath/Option;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p2, Lcom/jayway/jsonpath/PathNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No results for path: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jayway/jsonpath/PathNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    return-void

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isUpstreamDefinite()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isTokenDefinite()Z

    move-result p2

    if-nez p2, :cond_5

    .line 12
    :cond_4
    invoke-virtual {p3}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->options()Ljava/util/Set;

    move-result-object p2

    sget-object p4, Lcom/jayway/jsonpath/Option;->REQUIRE_PROPERTIES:Lcom/jayway/jsonpath/Option;

    invoke-interface {p2, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 13
    :cond_5
    invoke-virtual {p3}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->options()Ljava/util/Set;

    move-result-object p2

    sget-object p3, Lcom/jayway/jsonpath/Option;->SUPPRESS_EXCEPTIONS:Lcom/jayway/jsonpath/Option;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_1

    .line 14
    :cond_6
    new-instance p2, Lcom/jayway/jsonpath/PathNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jayway/jsonpath/PathNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    :goto_1
    return-void

    :cond_8
    move-object v3, v0

    .line 15
    :goto_2
    invoke-virtual {p3}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->forUpdate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p2, p4}, Lcom/jayway/jsonpath/internal/PathRef;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/jayway/jsonpath/internal/PathRef;

    move-result-object p2

    goto :goto_3

    :cond_9
    sget-object p2, Lcom/jayway/jsonpath/internal/PathRef;->NO_OP:Lcom/jayway/jsonpath/internal/PathRef;

    .line 16
    :goto_3
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isLeaf()Z

    move-result p4

    if-eqz p4, :cond_a

    .line 17
    invoke-virtual {p3, p1, p2, v3}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->addResult(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 18
    :cond_a
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->next()Lcom/jayway/jsonpath/internal/path/PathToken;

    move-result-object p4

    invoke-virtual {p4, p1, p2, v3, p3}, Lcom/jayway/jsonpath/internal/path/PathToken;->evaluate(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V

    goto/16 :goto_7

    .line 19
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    const-string v2, "\'"

    invoke-static {p1, v2, p4}, Lcom/jayway/jsonpath/internal/Utils;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-virtual {p3}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->createMap()Ljava/lang/Object;

    move-result-object v0

    .line 21
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 22
    invoke-static {v4, p2, p3}, Lcom/jayway/jsonpath/internal/path/PathToken;->hasProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 23
    invoke-static {v4, p2, p3}, Lcom/jayway/jsonpath/internal/path/PathToken;->readObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)Ljava/lang/Object;

    move-result-object v5

    .line 24
    sget-object v6, Lcom/jayway/jsonpath/spi/json/JsonProvider;->UNDEFINED:Ljava/lang/Object;

    if-ne v5, v6, :cond_e

    .line 25
    invoke-virtual {p3}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->options()Ljava/util/Set;

    move-result-object v5

    sget-object v6, Lcom/jayway/jsonpath/Option;->DEFAULT_PATH_LEAF_TO_NULL:Lcom/jayway/jsonpath/Option;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_5

    .line 26
    :cond_d
    invoke-virtual {p3}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->options()Ljava/util/Set;

    move-result-object v5

    sget-object v6, Lcom/jayway/jsonpath/Option;->DEFAULT_PATH_LEAF_TO_NULL:Lcom/jayway/jsonpath/Option;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    :goto_5
    move-object v5, v3

    .line 27
    :cond_e
    invoke-virtual {p3}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v6

    invoke-interface {v6, v0, v4, v5}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->setProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 28
    :cond_f
    invoke-virtual {p3}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->options()Ljava/util/Set;

    move-result-object v4

    sget-object v5, Lcom/jayway/jsonpath/Option;->REQUIRE_PROPERTIES:Lcom/jayway/jsonpath/Option;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_4

    .line 29
    :cond_10
    new-instance p2, Lcom/jayway/jsonpath/PathNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jayway/jsonpath/PathNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 30
    :cond_11
    invoke-virtual {p3}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->forUpdate()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {p2, p4}, Lcom/jayway/jsonpath/internal/PathRef;->create(Ljava/lang/Object;Ljava/util/Collection;)Lcom/jayway/jsonpath/internal/PathRef;

    move-result-object p2

    goto :goto_6

    :cond_12
    sget-object p2, Lcom/jayway/jsonpath/internal/PathRef;->NO_OP:Lcom/jayway/jsonpath/internal/PathRef;

    .line 31
    :goto_6
    invoke-virtual {p3, p1, p2, v0}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->addResult(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;)V

    :goto_7
    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public invoke(Lcom/jayway/jsonpath/internal/function/PathFunction;Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 1
    invoke-interface/range {v0 .. v5}, Lcom/jayway/jsonpath/internal/function/PathFunction;->invoke(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/EvaluationContext;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p5, p2, p3, p1}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->addResult(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;)V

    return-void
.end method

.method public isLeaf()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathToken;->next:Lcom/jayway/jsonpath/internal/path/PathToken;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPathDefinite()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathToken;->definite:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isTokenDefinite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isLeaf()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathToken;->next:Lcom/jayway/jsonpath/internal/path/PathToken;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isPathDefinite()Z

    move-result v0

    .line 6
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/jayway/jsonpath/internal/path/PathToken;->definite:Ljava/lang/Boolean;

    return v0
.end method

.method public isRoot()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathToken;->prev:Lcom/jayway/jsonpath/internal/path/PathToken;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract isTokenDefinite()Z
.end method

.method public isUpstreamDefinite()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathToken;->upstreamDefinite:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isRoot()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathToken;->prev:Lcom/jayway/jsonpath/internal/path/PathToken;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isTokenDefinite()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathToken;->prev:Lcom/jayway/jsonpath/internal/path/PathToken;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isUpstreamDefinite()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathToken;->upstreamDefinite:Ljava/lang/Boolean;

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathToken;->upstreamDefinite:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/jayway/jsonpath/internal/path/PathToken;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathToken;->next:Lcom/jayway/jsonpath/internal/path/PathToken;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current path token is a leaf"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prev()Lcom/jayway/jsonpath/internal/path/PathToken;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PathToken;->prev:Lcom/jayway/jsonpath/internal/path/PathToken;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->getPathFragment()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->getPathFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->next()Lcom/jayway/jsonpath/internal/path/PathToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/path/PathToken;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
