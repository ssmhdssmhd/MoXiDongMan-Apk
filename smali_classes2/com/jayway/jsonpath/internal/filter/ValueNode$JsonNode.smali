.class public Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;
.super Lcom/jayway/jsonpath/internal/filter/ValueNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/internal/filter/ValueNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsonNode"
.end annotation


# instance fields
.field private final json:Ljava/lang/Object;

.field private final parsed:Z


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->json:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->parsed:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;Lcom/jayway/jsonpath/internal/filter/ValueNode$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->json:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->parsed:Z

    return-void
.end method


# virtual methods
.method public asJsonNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;
    .locals 0

    return-object p0
.end method

.method public asValueListNode(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Lcom/jayway/jsonpath/internal/filter/ValueNode;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->isArray(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/jayway/jsonpath/internal/filter/ValueNode;->UNDEFINED:Lcom/jayway/jsonpath/internal/filter/ValueNode$UndefinedNode;

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$ValueListNode;

    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->parse(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$ValueListNode;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public equals(Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->json:Ljava/lang/Object;

    if-eqz v1, :cond_1

    invoke-virtual {p1, p2}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->parse(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->json:Ljava/lang/Object;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :cond_3
    :goto_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 2
    :cond_0
    instance-of v1, p1, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 3
    :cond_1
    check-cast p1, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;

    .line 4
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->json:Ljava/lang/Object;

    iget-object p1, p1, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->json:Ljava/lang/Object;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :cond_4
    :goto_1
    return v0
.end method

.method public getJson()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->json:Ljava/lang/Object;

    return-object v0
.end method

.method public isArray(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/jayway/jsonpath/Predicate$PredicateContext;->configuration()Lcom/jayway/jsonpath/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->parse(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->isArray(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->isArray(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->isMap(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->parse(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->parse(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v2

    .line 3
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/jayway/jsonpath/Predicate$PredicateContext;->configuration()Lcom/jayway/jsonpath/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->parse(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->length(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public isJsonNode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isMap(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/jayway/jsonpath/Predicate$PredicateContext;->configuration()Lcom/jayway/jsonpath/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->parse(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->isMap(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isParsed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->parsed:Z

    return v0
.end method

.method public length(Lcom/jayway/jsonpath/Predicate$PredicateContext;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->isArray(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/jayway/jsonpath/Predicate$PredicateContext;->configuration()Lcom/jayway/jsonpath/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->parse(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->length(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public parse(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    iget-boolean p1, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->parsed:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->json:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/minidev/json/parser/do;

    const/4 v0, -0x1

    invoke-direct {p1, v0}, Lnet/minidev/json/parser/do;-><init>(I)V

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->json:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/minidev/json/parser/do;->catch(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/ic1; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->json:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jayway/jsonpath/Predicate$PredicateContext;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->isArray(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class p1, Ljava/util/List;

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->isMap(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p1, Ljava/util/Map;

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->parse(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    const-class p1, Ljava/lang/Number;

    return-object p1

    .line 4
    :cond_2
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->parse(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    const-class p1, Ljava/lang/String;

    return-object p1

    .line 5
    :cond_3
    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;->parse(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    const-class p1, Ljava/lang/Boolean;

    return-object p1

    .line 6
    :cond_4
    const-class p1, Ljava/lang/Void;

    return-object p1
.end method
