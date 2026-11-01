.class public Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jayway/jsonpath/internal/EvaluationContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl$FoundResultImpl;
    }
.end annotation


# static fields
.field private static final ABORT_EVALUATION:Lcom/jayway/jsonpath/internal/EvaluationAbortException;


# instance fields
.field private final configuration:Lcom/jayway/jsonpath/Configuration;

.field private final documentEvalCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/jayway/jsonpath/internal/Path;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final forUpdate:Z

.field private final path:Lcom/jayway/jsonpath/internal/Path;

.field private final pathResult:Ljava/lang/Object;

.field private resultIndex:I

.field private final rootDocument:Ljava/lang/Object;

.field private final updateOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jayway/jsonpath/internal/PathRef;",
            ">;"
        }
    .end annotation
.end field

.field private final valueResult:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/EvaluationAbortException;

    invoke-direct {v0}, Lcom/jayway/jsonpath/internal/EvaluationAbortException;-><init>()V

    sput-object v0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->ABORT_EVALUATION:Lcom/jayway/jsonpath/internal/EvaluationAbortException;

    return-void
.end method

.method public constructor <init>(Lcom/jayway/jsonpath/internal/Path;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->documentEvalCache:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->resultIndex:I

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "path can not be null"

    .line 4
    invoke-static {p1, v2, v1}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "root can not be null"

    .line 5
    invoke-static {p2, v2, v1}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "configuration can not be null"

    .line 6
    invoke-static {p3, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-boolean p4, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->forUpdate:Z

    .line 8
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->path:Lcom/jayway/jsonpath/internal/Path;

    .line 9
    iput-object p2, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->rootDocument:Ljava/lang/Object;

    .line 10
    iput-object p3, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->configuration:Lcom/jayway/jsonpath/Configuration;

    .line 11
    invoke-virtual {p3}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->createArray()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->valueResult:Ljava/lang/Object;

    .line 12
    invoke-virtual {p3}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->createArray()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->pathResult:Ljava/lang/Object;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->updateOperations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addResult(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->forUpdate:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->updateOperations:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->configuration:Lcom/jayway/jsonpath/Configuration;

    invoke-virtual {p2}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p2

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->valueResult:Ljava/lang/Object;

    iget v1, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->resultIndex:I

    invoke-interface {p2, v0, v1, p3}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->setArrayIndex(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->configuration:Lcom/jayway/jsonpath/Configuration;

    invoke-virtual {p2}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p2

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->pathResult:Ljava/lang/Object;

    iget v1, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->resultIndex:I

    invoke-interface {p2, v0, v1, p1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->setArrayIndex(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 5
    iget p2, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->resultIndex:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->resultIndex:I

    .line 6
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->configuration()Lcom/jayway/jsonpath/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jayway/jsonpath/Configuration;->getEvaluationListeners()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 7
    iget p2, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->resultIndex:I

    add-int/lit8 p2, p2, -0x1

    .line 8
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->configuration()Lcom/jayway/jsonpath/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jayway/jsonpath/Configuration;->getEvaluationListeners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jayway/jsonpath/EvaluationListener;

    .line 9
    new-instance v2, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl$FoundResultImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p2, p1, p3, v3}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl$FoundResultImpl;-><init>(ILjava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl$1;)V

    invoke-interface {v1, v2}, Lcom/jayway/jsonpath/EvaluationListener;->resultFound(Lcom/jayway/jsonpath/EvaluationListener$FoundResult;)Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;

    move-result-object v1

    .line 10
    sget-object v2, Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;->ABORT:Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;

    if-eq v2, v1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    sget-object p1, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->ABORT_EVALUATION:Lcom/jayway/jsonpath/internal/EvaluationAbortException;

    throw p1

    :cond_2
    return-void
.end method

.method public configuration()Lcom/jayway/jsonpath/Configuration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->configuration:Lcom/jayway/jsonpath/Configuration;

    return-object v0
.end method

.method public documentEvalCache()Ljava/util/HashMap;
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
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->documentEvalCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public forUpdate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->forUpdate:Z

    return v0
.end method

.method public getPath()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->resultIndex:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->pathResult:Ljava/lang/Object;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/jayway/jsonpath/PathNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No results for path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->path:Lcom/jayway/jsonpath/internal/Path;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/PathNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPathList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget v1, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->resultIndex:I

    if-lez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->configuration:Lcom/jayway/jsonpath/Configuration;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->pathResult:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->toIterable(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->path:Lcom/jayway/jsonpath/internal/Path;

    invoke-interface {v0}, Lcom/jayway/jsonpath/internal/Path;->isDefinite()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget v0, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->resultIndex:I

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->valueResult:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->length(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->valueResult:Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v2, v0}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->getArrayIndex(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0

    .line 7
    :cond_2
    new-instance p1, Lcom/jayway/jsonpath/PathNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No results for path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->path:Lcom/jayway/jsonpath/internal/Path;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jayway/jsonpath/PathNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->valueResult:Ljava/lang/Object;

    return-object p1
.end method

.method public jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->configuration:Lcom/jayway/jsonpath/Configuration;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    return-object v0
.end method

.method public options()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/jayway/jsonpath/Option;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->configuration:Lcom/jayway/jsonpath/Configuration;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/Configuration;->getOptions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public rootDocument()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->rootDocument:Ljava/lang/Object;

    return-object v0
.end method

.method public updateOperations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/jayway/jsonpath/internal/PathRef;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->updateOperations:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->updateOperations:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
