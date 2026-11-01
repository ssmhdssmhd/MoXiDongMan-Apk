.class public Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;
.super Lcom/jayway/jsonpath/internal/filter/ValueNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/internal/filter/ValueNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathNode"
.end annotation


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final existsCheck:Z

.field private final path:Lcom/jayway/jsonpath/internal/Path;

.field private final shouldExist:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jayway/jsonpath/internal/Path;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;-><init>(Lcom/jayway/jsonpath/internal/Path;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/jayway/jsonpath/internal/Path;ZZ)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;->path:Lcom/jayway/jsonpath/internal/Path;

    .line 5
    iput-boolean p2, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;->existsCheck:Z

    .line 6
    iput-boolean p3, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;->shouldExist:Z

    .line 7
    sget-object p3, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;->logger:Lorg/slf4j/Logger;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "PathNode {} existsCheck: {}"

    invoke-interface {p3, v0, p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;ZZ)V
    .locals 1

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/jayway/jsonpath/Predicate;

    invoke-static {p1, v0}, Lcom/jayway/jsonpath/internal/path/PathCompiler;->compile(Ljava/lang/String;[Lcom/jayway/jsonpath/Predicate;)Lcom/jayway/jsonpath/internal/Path;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;-><init>(Lcom/jayway/jsonpath/internal/Path;ZZ)V

    return-void
.end method


# virtual methods
.method public asExistsCheck(Z)Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;
    .locals 3

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;->path:Lcom/jayway/jsonpath/internal/Path;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;-><init>(Lcom/jayway/jsonpath/internal/Path;ZZ)V

    return-object v0
.end method

.method public asPathNode()Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;
    .locals 0

    return-object p0
.end method

.method public evaluate(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Lcom/jayway/jsonpath/internal/filter/ValueNode;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;->isExistsCheck()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/jayway/jsonpath/Configuration;->builder()Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/jayway/jsonpath/Predicate$PredicateContext;->configuration()Lcom/jayway/jsonpath/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->jsonProvider(Lcom/jayway/jsonpath/spi/json/JsonProvider;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/jayway/jsonpath/Option;

    sget-object v3, Lcom/jayway/jsonpath/Option;->REQUIRE_PROPERTIES:Lcom/jayway/jsonpath/Option;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->options([Lcom/jayway/jsonpath/Option;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->build()Lcom/jayway/jsonpath/Configuration;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;->path:Lcom/jayway/jsonpath/internal/Path;

    invoke-interface {p1}, Lcom/jayway/jsonpath/Predicate$PredicateContext;->item()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Lcom/jayway/jsonpath/Predicate$PredicateContext;->root()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v2, v3, p1, v0}, Lcom/jayway/jsonpath/internal/Path;->evaluate(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Lcom/jayway/jsonpath/internal/EvaluationContext;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/jayway/jsonpath/internal/EvaluationContext;->getValue(Z)Ljava/lang/Object;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/jayway/jsonpath/spi/json/JsonProvider;->UNDEFINED:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/jayway/jsonpath/internal/filter/ValueNode;->FALSE:Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/jayway/jsonpath/internal/filter/ValueNode;->TRUE:Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;
    :try_end_0
    .catch Lcom/jayway/jsonpath/PathNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    .line 5
    :catch_0
    sget-object p1, Lcom/jayway/jsonpath/internal/filter/ValueNode;->FALSE:Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;

    return-object p1

    .line 6
    :cond_1
    :try_start_1
    instance-of v0, p1, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;

    if-eqz v0, :cond_2

    .line 7
    move-object v0, p1

    check-cast v0, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;

    .line 8
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;->path:Lcom/jayway/jsonpath/internal/Path;

    invoke-virtual {v0, v2}, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;->evaluate(Lcom/jayway/jsonpath/internal/Path;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;->path:Lcom/jayway/jsonpath/internal/Path;

    invoke-interface {v0}, Lcom/jayway/jsonpath/internal/Path;->isRootPath()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/jayway/jsonpath/Predicate$PredicateContext;->root()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/jayway/jsonpath/Predicate$PredicateContext;->item()Ljava/lang/Object;

    move-result-object v0

    .line 10
    :goto_1
    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;->path:Lcom/jayway/jsonpath/internal/Path;

    invoke-interface {p1}, Lcom/jayway/jsonpath/Predicate$PredicateContext;->root()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Lcom/jayway/jsonpath/Predicate$PredicateContext;->configuration()Lcom/jayway/jsonpath/Configuration;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/jayway/jsonpath/internal/Path;->evaluate(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Lcom/jayway/jsonpath/internal/EvaluationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/jayway/jsonpath/internal/EvaluationContext;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 11
    :goto_2
    invoke-interface {p1}, Lcom/jayway/jsonpath/Predicate$PredicateContext;->configuration()Lcom/jayway/jsonpath/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->createNumberNode(Ljava/lang/CharSequence;)Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;

    move-result-object p1

    return-object p1

    .line 13
    :cond_4
    instance-of v2, v0, Ljava/math/BigDecimal;

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->createNumberNode(Ljava/lang/CharSequence;)Lcom/jayway/jsonpath/internal/filter/ValueNode$NumberNode;

    move-result-object p1

    return-object p1

    .line 14
    :cond_5
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->createStringNode(Ljava/lang/CharSequence;Z)Lcom/jayway/jsonpath/internal/filter/ValueNode$StringNode;

    move-result-object p1

    return-object p1

    .line 15
    :cond_6
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->createBooleanNode(Ljava/lang/CharSequence;)Lcom/jayway/jsonpath/internal/filter/ValueNode$BooleanNode;

    move-result-object p1

    return-object p1

    :cond_7
    if-nez v0, :cond_8

    .line 16
    sget-object p1, Lcom/jayway/jsonpath/internal/filter/ValueNode;->NULL_NODE:Lcom/jayway/jsonpath/internal/filter/ValueNode$NullNode;

    return-object p1

    .line 17
    :cond_8
    invoke-interface {p1}, Lcom/jayway/jsonpath/Predicate$PredicateContext;->configuration()Lcom/jayway/jsonpath/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->isArray(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->createJsonNode(Ljava/lang/Object;)Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;

    move-result-object p1

    return-object p1

    .line 18
    :cond_9
    invoke-interface {p1}, Lcom/jayway/jsonpath/Predicate$PredicateContext;->configuration()Lcom/jayway/jsonpath/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->isMap(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {v0}, Lcom/jayway/jsonpath/internal/filter/ValueNode;->createJsonNode(Ljava/lang/Object;)Lcom/jayway/jsonpath/internal/filter/ValueNode$JsonNode;

    move-result-object p1

    return-object p1

    .line 19
    :cond_a
    new-instance p1, Lcom/jayway/jsonpath/JsonPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to a ValueNode"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jayway/jsonpath/JsonPathException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lcom/jayway/jsonpath/PathNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 20
    :catch_1
    sget-object p1, Lcom/jayway/jsonpath/internal/filter/ValueNode;->UNDEFINED:Lcom/jayway/jsonpath/internal/filter/ValueNode$UndefinedNode;

    return-object p1
.end method

.method public getPath()Lcom/jayway/jsonpath/internal/Path;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;->path:Lcom/jayway/jsonpath/internal/Path;

    return-object v0
.end method

.method public isExistsCheck()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;->existsCheck:Z

    return v0
.end method

.method public isPathNode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldExists()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;->shouldExist:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;->existsCheck:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;->shouldExist:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "!"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;->path:Lcom/jayway/jsonpath/internal/Path;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/jayway/jsonpath/internal/Utils;->concat([Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/filter/ValueNode$PathNode;->path:Lcom/jayway/jsonpath/internal/Path;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public type(Lcom/jayway/jsonpath/Predicate$PredicateContext;)Ljava/lang/Class;
    .locals 0
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
    const-class p1, Ljava/lang/Void;

    return-object p1
.end method
