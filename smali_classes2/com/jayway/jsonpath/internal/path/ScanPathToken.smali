.class public Lcom/jayway/jsonpath/internal/path/ScanPathToken;
.super Lcom/jayway/jsonpath/internal/path/PathToken;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jayway/jsonpath/internal/path/ScanPathToken$PropertyPathTokenPredicate;,
        Lcom/jayway/jsonpath/internal/path/ScanPathToken$ArrayPathTokenPredicate;,
        Lcom/jayway/jsonpath/internal/path/ScanPathToken$WildcardPathTokenPredicate;,
        Lcom/jayway/jsonpath/internal/path/ScanPathToken$FilterPathTokenPredicate;,
        Lcom/jayway/jsonpath/internal/path/ScanPathToken$Predicate;
    }
.end annotation


# static fields
.field private static final FALSE_PREDICATE:Lcom/jayway/jsonpath/internal/path/ScanPathToken$Predicate;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/path/ScanPathToken$1;

    invoke-direct {v0}, Lcom/jayway/jsonpath/internal/path/ScanPathToken$1;-><init>()V

    sput-object v0, Lcom/jayway/jsonpath/internal/path/ScanPathToken;->FALSE_PREDICATE:Lcom/jayway/jsonpath/internal/path/ScanPathToken$Predicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;-><init>()V

    return-void
.end method

.method private static createScanPredicate(Lcom/jayway/jsonpath/internal/path/PathToken;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)Lcom/jayway/jsonpath/internal/path/ScanPathToken$Predicate;
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/jayway/jsonpath/internal/path/PropertyPathToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/jayway/jsonpath/internal/path/ScanPathToken$PropertyPathTokenPredicate;

    invoke-direct {v0, p0, p1, v1}, Lcom/jayway/jsonpath/internal/path/ScanPathToken$PropertyPathTokenPredicate;-><init>(Lcom/jayway/jsonpath/internal/path/PathToken;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;Lcom/jayway/jsonpath/internal/path/ScanPathToken$1;)V

    return-object v0

    .line 3
    :cond_0
    instance-of v0, p0, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;

    if-eqz v0, :cond_1

    .line 4
    new-instance p0, Lcom/jayway/jsonpath/internal/path/ScanPathToken$ArrayPathTokenPredicate;

    invoke-direct {p0, p1, v1}, Lcom/jayway/jsonpath/internal/path/ScanPathToken$ArrayPathTokenPredicate;-><init>(Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;Lcom/jayway/jsonpath/internal/path/ScanPathToken$1;)V

    return-object p0

    .line 5
    :cond_1
    instance-of v0, p0, Lcom/jayway/jsonpath/internal/path/WildcardPathToken;

    if-eqz v0, :cond_2

    .line 6
    new-instance p0, Lcom/jayway/jsonpath/internal/path/ScanPathToken$WildcardPathTokenPredicate;

    invoke-direct {p0, v1}, Lcom/jayway/jsonpath/internal/path/ScanPathToken$WildcardPathTokenPredicate;-><init>(Lcom/jayway/jsonpath/internal/path/ScanPathToken$1;)V

    return-object p0

    .line 7
    :cond_2
    instance-of v0, p0, Lcom/jayway/jsonpath/internal/path/PredicatePathToken;

    if-eqz v0, :cond_3

    .line 8
    new-instance v0, Lcom/jayway/jsonpath/internal/path/ScanPathToken$FilterPathTokenPredicate;

    invoke-direct {v0, p0, p1, v1}, Lcom/jayway/jsonpath/internal/path/ScanPathToken$FilterPathTokenPredicate;-><init>(Lcom/jayway/jsonpath/internal/path/PathToken;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;Lcom/jayway/jsonpath/internal/path/ScanPathToken$1;)V

    return-object v0

    .line 9
    :cond_3
    sget-object p0, Lcom/jayway/jsonpath/internal/path/ScanPathToken;->FALSE_PREDICATE:Lcom/jayway/jsonpath/internal/path/ScanPathToken$Predicate;

    return-object p0
.end method

.method public static walk(Lcom/jayway/jsonpath/internal/path/PathToken;Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;Lcom/jayway/jsonpath/internal/path/ScanPathToken$Predicate;)V
    .locals 1

    .line 1
    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->isMap(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static/range {p0 .. p5}, Lcom/jayway/jsonpath/internal/path/ScanPathToken;->walkObject(Lcom/jayway/jsonpath/internal/path/PathToken;Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;Lcom/jayway/jsonpath/internal/path/ScanPathToken$Predicate;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static/range {p0 .. p5}, Lcom/jayway/jsonpath/internal/path/ScanPathToken;->walkArray(Lcom/jayway/jsonpath/internal/path/PathToken;Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;Lcom/jayway/jsonpath/internal/path/ScanPathToken$Predicate;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static walkArray(Lcom/jayway/jsonpath/internal/path/PathToken;Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;Lcom/jayway/jsonpath/internal/path/ScanPathToken$Predicate;)V
    .locals 10

    .line 1
    invoke-interface {p5, p3}, Lcom/jayway/jsonpath/internal/path/ScanPathToken$Predicate;->matches(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "]"

    const-string v2, "["

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jayway/jsonpath/internal/path/PathToken;->evaluate(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->next()Lcom/jayway/jsonpath/internal/path/PathToken;

    move-result-object v0

    .line 5
    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v4

    invoke-interface {v4, p3}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->toIterable(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v4

    .line 6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {v0, v7, p2, v6, p4}, Lcom/jayway/jsonpath/internal/path/PathToken;->evaluate(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->toIterable(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p2

    .line 10
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-static {p3, v3}, Lcom/jayway/jsonpath/internal/PathRef;->create(Ljava/lang/Object;I)Lcom/jayway/jsonpath/internal/PathRef;

    move-result-object v6

    move-object v4, p0

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v4 .. v9}, Lcom/jayway/jsonpath/internal/path/ScanPathToken;->walk(Lcom/jayway/jsonpath/internal/path/PathToken;Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;Lcom/jayway/jsonpath/internal/path/ScanPathToken$Predicate;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static walkObject(Lcom/jayway/jsonpath/internal/path/PathToken;Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;Lcom/jayway/jsonpath/internal/path/ScanPathToken$Predicate;)V
    .locals 9

    .line 1
    invoke-interface {p5, p3}, Lcom/jayway/jsonpath/internal/path/ScanPathToken$Predicate;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jayway/jsonpath/internal/path/PathToken;->evaluate(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V

    .line 3
    :cond_0
    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->getPropertyKeys(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p2

    .line 4
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\']"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->getMapValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 7
    sget-object v1, Lcom/jayway/jsonpath/spi/json/JsonProvider;->UNDEFINED:Ljava/lang/Object;

    if-eq v6, v1, :cond_1

    .line 8
    invoke-static {p3, v0}, Lcom/jayway/jsonpath/internal/PathRef;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/jayway/jsonpath/internal/PathRef;

    move-result-object v5

    move-object v3, p0

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v3 .. v8}, Lcom/jayway/jsonpath/internal/path/ScanPathToken;->walk(Lcom/jayway/jsonpath/internal/path/PathToken;Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;Lcom/jayway/jsonpath/internal/path/ScanPathToken$Predicate;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->next()Lcom/jayway/jsonpath/internal/path/PathToken;

    move-result-object v0

    .line 2
    invoke-static {v0, p4}, Lcom/jayway/jsonpath/internal/path/ScanPathToken;->createScanPredicate(Lcom/jayway/jsonpath/internal/path/PathToken;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)Lcom/jayway/jsonpath/internal/path/ScanPathToken$Predicate;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/jayway/jsonpath/internal/path/ScanPathToken;->walk(Lcom/jayway/jsonpath/internal/path/PathToken;Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;Lcom/jayway/jsonpath/internal/path/ScanPathToken$Predicate;)V

    return-void
.end method

.method public getPathFragment()Ljava/lang/String;
    .locals 1

    const-string v0, ".."

    return-object v0
.end method

.method public isTokenDefinite()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
