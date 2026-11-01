.class Lcom/jayway/jsonpath/internal/path/PropertyPathToken;
.super Lcom/jayway/jsonpath/internal/path/PathToken;
.source "SourceFile"


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private final properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final stringDelimiter:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;C)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;C)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/PropertyPathToken;->properties:Ljava/util/List;

    .line 4
    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/PropertyPathToken;->stringDelimiter:Ljava/lang/String;

    return-void

    .line 5
    :cond_0
    new-instance p1, Lcom/jayway/jsonpath/InvalidPathException;

    const-string p2, "Empty properties"

    invoke-direct {p1, p2}, Lcom/jayway/jsonpath/InvalidPathException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V
    .locals 4

    .line 1
    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->isMap(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isUpstreamDefinite()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    const-string p2, "null"

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 4
    :goto_0
    new-instance p3, Lcom/jayway/jsonpath/PathNotFoundException;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PropertyPathToken;->getPathFragment()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    aput-object p1, v2, v1

    const/4 p1, 0x2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    invoke-virtual {p4}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->configuration()Lcom/jayway/jsonpath/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "Expected to find an object with property %s in path %s but found \'%s\'. This is not a json object according to the JsonProvider: \'%s\'."

    .line 6
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/jayway/jsonpath/PathNotFoundException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PropertyPathToken;->singlePropertyCase()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PropertyPathToken;->multiPropertyMergeCase()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 9
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/PropertyPathToken;->properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 11
    invoke-interface {p2, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/jayway/jsonpath/internal/path/PathToken;->handleObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;Ljava/util/List;)V

    goto :goto_1

    :cond_4
    return-void

    .line 13
    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/jayway/jsonpath/internal/path/PropertyPathToken;->properties:Ljava/util/List;

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/jayway/jsonpath/internal/path/PathToken;->handleObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;Ljava/util/List;)V

    return-void
.end method

.method public getPathFragment()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/PropertyPathToken;->stringDelimiter:Ljava/lang/String;

    iget-object v2, p0, Lcom/jayway/jsonpath/internal/path/PropertyPathToken;->properties:Ljava/util/List;

    const-string v3, ","

    .line 3
    invoke-static {v3, v1, v2}, Lcom/jayway/jsonpath/internal/Utils;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PropertyPathToken;->properties:Ljava/util/List;

    return-object v0
.end method

.method public isTokenDefinite()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PropertyPathToken;->singlePropertyCase()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PropertyPathToken;->multiPropertyMergeCase()Z

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
    return v0
.end method

.method public multiPropertyIterationCase()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isLeaf()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PropertyPathToken;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public multiPropertyMergeCase()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isLeaf()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PropertyPathToken;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public singlePropertyCase()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/PropertyPathToken;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
