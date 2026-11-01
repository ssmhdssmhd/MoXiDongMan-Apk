.class public Lcom/jayway/jsonpath/internal/path/PathTokenFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static crateScanToken()Lcom/jayway/jsonpath/internal/path/PathToken;
    .locals 1

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/path/ScanPathToken;

    invoke-direct {v0}, Lcom/jayway/jsonpath/internal/path/ScanPathToken;-><init>()V

    return-object v0
.end method

.method public static createFunctionPathToken(Ljava/lang/String;Ljava/util/List;)Lcom/jayway/jsonpath/internal/path/PathToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/jayway/jsonpath/internal/function/Parameter;",
            ">;)",
            "Lcom/jayway/jsonpath/internal/path/PathToken;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/path/FunctionPathToken;

    invoke-direct {v0, p0, p1}, Lcom/jayway/jsonpath/internal/path/FunctionPathToken;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public static createIndexArrayPathToken(Lcom/jayway/jsonpath/internal/path/ArrayIndexOperation;)Lcom/jayway/jsonpath/internal/path/PathToken;
    .locals 1

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;

    invoke-direct {v0, p0}, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;-><init>(Lcom/jayway/jsonpath/internal/path/ArrayIndexOperation;)V

    return-object v0
.end method

.method public static createPredicatePathToken(Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/internal/path/PathToken;
    .locals 1

    .line 2
    new-instance v0, Lcom/jayway/jsonpath/internal/path/PredicatePathToken;

    invoke-direct {v0, p0}, Lcom/jayway/jsonpath/internal/path/PredicatePathToken;-><init>(Lcom/jayway/jsonpath/Predicate;)V

    return-object v0
.end method

.method public static createPredicatePathToken(Ljava/util/Collection;)Lcom/jayway/jsonpath/internal/path/PathToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/jayway/jsonpath/Predicate;",
            ">;)",
            "Lcom/jayway/jsonpath/internal/path/PathToken;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/path/PredicatePathToken;

    invoke-direct {v0, p0}, Lcom/jayway/jsonpath/internal/path/PredicatePathToken;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static createPropertyPathToken(Ljava/util/List;C)Lcom/jayway/jsonpath/internal/path/PathToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;C)",
            "Lcom/jayway/jsonpath/internal/path/PathToken;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/path/PropertyPathToken;

    invoke-direct {v0, p0, p1}, Lcom/jayway/jsonpath/internal/path/PropertyPathToken;-><init>(Ljava/util/List;C)V

    return-object v0
.end method

.method public static createRootPathToken(C)Lcom/jayway/jsonpath/internal/path/RootPathToken;
    .locals 1

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/path/RootPathToken;

    invoke-direct {v0, p0}, Lcom/jayway/jsonpath/internal/path/RootPathToken;-><init>(C)V

    return-object v0
.end method

.method public static createSinglePropertyPathToken(Ljava/lang/String;C)Lcom/jayway/jsonpath/internal/path/PathToken;
    .locals 1

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/path/PropertyPathToken;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/jayway/jsonpath/internal/path/PropertyPathToken;-><init>(Ljava/util/List;C)V

    return-object v0
.end method

.method public static createSliceArrayPathToken(Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;)Lcom/jayway/jsonpath/internal/path/PathToken;
    .locals 1

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;

    invoke-direct {v0, p0}, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;-><init>(Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;)V

    return-object v0
.end method

.method public static createWildCardPathToken()Lcom/jayway/jsonpath/internal/path/PathToken;
    .locals 1

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/path/WildcardPathToken;

    invoke-direct {v0}, Lcom/jayway/jsonpath/internal/path/WildcardPathToken;-><init>()V

    return-object v0
.end method
