.class final Lcom/jayway/jsonpath/Filter$AndFilter;
.super Lcom/jayway/jsonpath/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndFilter"
.end annotation


# instance fields
.field private final predicates:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/jayway/jsonpath/Predicate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/jayway/jsonpath/Predicate;Lcom/jayway/jsonpath/Predicate;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/jayway/jsonpath/Predicate;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/Filter$AndFilter;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jayway/jsonpath/Predicate;Lcom/jayway/jsonpath/Predicate;Lcom/jayway/jsonpath/Filter$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/jayway/jsonpath/Filter$AndFilter;-><init>(Lcom/jayway/jsonpath/Predicate;Lcom/jayway/jsonpath/Predicate;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/jayway/jsonpath/Predicate;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/jayway/jsonpath/Filter;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/jayway/jsonpath/Filter$AndFilter;->predicates:Ljava/util/Collection;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Collection;Lcom/jayway/jsonpath/Filter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/Filter$AndFilter;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public and(Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/Filter;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jayway/jsonpath/Filter$AndFilter;->predicates:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance p1, Lcom/jayway/jsonpath/Filter$AndFilter;

    invoke-direct {p1, v0}, Lcom/jayway/jsonpath/Filter$AndFilter;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public apply(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/Filter$AndFilter;->predicates:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jayway/jsonpath/Predicate;

    .line 2
    invoke-interface {v1, p1}, Lcom/jayway/jsonpath/Predicate;->apply(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/Filter$AndFilter;->predicates:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[?("

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jayway/jsonpath/Predicate;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    .line 7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 8
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, " && "

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v0, ")]"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
