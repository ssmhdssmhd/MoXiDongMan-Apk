.class final Lcom/jayway/jsonpath/internal/path/ScanPathToken$PropertyPathTokenPredicate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jayway/jsonpath/internal/path/ScanPathToken$Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/internal/path/ScanPathToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PropertyPathTokenPredicate"
.end annotation


# instance fields
.field private final ctx:Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;

.field private propertyPathToken:Lcom/jayway/jsonpath/internal/path/PropertyPathToken;


# direct methods
.method private constructor <init>(Lcom/jayway/jsonpath/internal/path/PathToken;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/jayway/jsonpath/internal/path/ScanPathToken$PropertyPathTokenPredicate;->ctx:Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;

    .line 4
    check-cast p1, Lcom/jayway/jsonpath/internal/path/PropertyPathToken;

    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/ScanPathToken$PropertyPathTokenPredicate;->propertyPathToken:Lcom/jayway/jsonpath/internal/path/PropertyPathToken;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jayway/jsonpath/internal/path/PathToken;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;Lcom/jayway/jsonpath/internal/path/ScanPathToken$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/jayway/jsonpath/internal/path/ScanPathToken$PropertyPathTokenPredicate;-><init>(Lcom/jayway/jsonpath/internal/path/PathToken;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/ScanPathToken$PropertyPathTokenPredicate;->ctx:Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->isMap(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/ScanPathToken$PropertyPathTokenPredicate;->propertyPathToken:Lcom/jayway/jsonpath/internal/path/PropertyPathToken;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/path/PropertyPathToken;->isTokenDefinite()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/ScanPathToken$PropertyPathTokenPredicate;->propertyPathToken:Lcom/jayway/jsonpath/internal/path/PropertyPathToken;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/ScanPathToken$PropertyPathTokenPredicate;->ctx:Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->options()Ljava/util/Set;

    move-result-object v0

    sget-object v2, Lcom/jayway/jsonpath/Option;->DEFAULT_PATH_LEAF_TO_NULL:Lcom/jayway/jsonpath/Option;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/ScanPathToken$PropertyPathTokenPredicate;->ctx:Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->getPropertyKeys(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/ScanPathToken$PropertyPathTokenPredicate;->propertyPathToken:Lcom/jayway/jsonpath/internal/path/PropertyPathToken;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/path/PropertyPathToken;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
