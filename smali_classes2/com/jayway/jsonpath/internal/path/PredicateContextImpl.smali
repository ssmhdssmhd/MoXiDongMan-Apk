.class public Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jayway/jsonpath/Predicate$PredicateContext;


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final configuration:Lcom/jayway/jsonpath/Configuration;

.field private final contextDocument:Ljava/lang/Object;

.field private final documentPathCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/jayway/jsonpath/internal/Path;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final rootDocument:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/jayway/jsonpath/Configuration;",
            "Ljava/util/HashMap<",
            "Lcom/jayway/jsonpath/internal/Path;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;->contextDocument:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;->rootDocument:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;->configuration:Lcom/jayway/jsonpath/Configuration;

    .line 5
    iput-object p4, p0, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;->documentPathCache:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public configuration()Lcom/jayway/jsonpath/Configuration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;->configuration:Lcom/jayway/jsonpath/Configuration;

    return-object v0
.end method

.method public documentPathCache()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/jayway/jsonpath/internal/Path;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;->documentPathCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public evaluate(Lcom/jayway/jsonpath/internal/Path;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/jayway/jsonpath/internal/Path;->isRootPath()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;->documentPathCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using cached result for root path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;->documentPathCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;->rootDocument:Ljava/lang/Object;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;->configuration:Lcom/jayway/jsonpath/Configuration;

    invoke-interface {p1, v0, v0, v1}, Lcom/jayway/jsonpath/internal/Path;->evaluate(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Lcom/jayway/jsonpath/internal/EvaluationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/jayway/jsonpath/internal/EvaluationContext;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;->documentPathCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;->contextDocument:Ljava/lang/Object;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;->rootDocument:Ljava/lang/Object;

    iget-object v2, p0, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;->configuration:Lcom/jayway/jsonpath/Configuration;

    invoke-interface {p1, v0, v1, v2}, Lcom/jayway/jsonpath/internal/Path;->evaluate(Ljava/lang/Object;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Lcom/jayway/jsonpath/internal/EvaluationContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/jayway/jsonpath/internal/EvaluationContext;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public item()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;->contextDocument:Ljava/lang/Object;

    return-object v0
.end method

.method public item(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jayway/jsonpath/spi/mapper/MappingException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;->configuration()Lcom/jayway/jsonpath/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jayway/jsonpath/Configuration;->mappingProvider()Lcom/jayway/jsonpath/spi/mapper/MappingProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;->contextDocument:Ljava/lang/Object;

    iget-object v2, p0, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;->configuration:Lcom/jayway/jsonpath/Configuration;

    invoke-interface {v0, v1, p1, v2}, Lcom/jayway/jsonpath/spi/mapper/MappingProvider;->map(Ljava/lang/Object;Ljava/lang/Class;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public root()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PredicateContextImpl;->rootDocument:Ljava/lang/Object;

    return-object v0
.end method
