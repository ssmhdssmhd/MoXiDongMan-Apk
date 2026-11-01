.class public abstract Lcom/jayway/jsonpath/Filter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jayway/jsonpath/Predicate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jayway/jsonpath/Filter$OrFilter;,
        Lcom/jayway/jsonpath/Filter$AndFilter;,
        Lcom/jayway/jsonpath/Filter$SingleFilter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filter(Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/Filter;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/Filter$SingleFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jayway/jsonpath/Filter$SingleFilter;-><init>(Lcom/jayway/jsonpath/Predicate;Lcom/jayway/jsonpath/Filter$1;)V

    return-object v0
.end method

.method public static filter(Ljava/util/Collection;)Lcom/jayway/jsonpath/Filter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/jayway/jsonpath/Predicate;",
            ">;)",
            "Lcom/jayway/jsonpath/Filter;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/jayway/jsonpath/Filter$AndFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jayway/jsonpath/Filter$AndFilter;-><init>(Ljava/util/Collection;Lcom/jayway/jsonpath/Filter$1;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/jayway/jsonpath/Filter;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jayway/jsonpath/internal/filter/FilterCompiler;->compile(Ljava/lang/String;)Lcom/jayway/jsonpath/Filter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public and(Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/Filter;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/Filter$AndFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/jayway/jsonpath/Filter$AndFilter;-><init>(Lcom/jayway/jsonpath/Predicate;Lcom/jayway/jsonpath/Predicate;Lcom/jayway/jsonpath/Filter$1;)V

    return-object v0
.end method

.method public abstract apply(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z
.end method

.method public or(Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/Filter;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/Filter$OrFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/jayway/jsonpath/Filter$OrFilter;-><init>(Lcom/jayway/jsonpath/Predicate;Lcom/jayway/jsonpath/Predicate;Lcom/jayway/jsonpath/Filter$1;)V

    return-object v0
.end method
