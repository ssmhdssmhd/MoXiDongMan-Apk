.class public Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigurationBuilder"
.end annotation


# instance fields
.field private evaluationListener:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/jayway/jsonpath/EvaluationListener;",
            ">;"
        }
    .end annotation
.end field

.field private jsonProvider:Lcom/jayway/jsonpath/spi/json/JsonProvider;

.field private mappingProvider:Lcom/jayway/jsonpath/spi/mapper/MappingProvider;

.field private options:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/jayway/jsonpath/Option;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/jayway/jsonpath/Option;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->options:Ljava/util/EnumSet;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->evaluationListener:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public build()Lcom/jayway/jsonpath/Configuration;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->jsonProvider:Lcom/jayway/jsonpath/spi/json/JsonProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->mappingProvider:Lcom/jayway/jsonpath/spi/mapper/MappingProvider;

    if-nez v0, :cond_2

    .line 2
    :cond_0
    invoke-static {}, Lcom/jayway/jsonpath/Configuration;->access$000()Lcom/jayway/jsonpath/Configuration$Defaults;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->jsonProvider:Lcom/jayway/jsonpath/spi/json/JsonProvider;

    if-nez v1, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/jayway/jsonpath/Configuration$Defaults;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->jsonProvider:Lcom/jayway/jsonpath/spi/json/JsonProvider;

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->mappingProvider:Lcom/jayway/jsonpath/spi/mapper/MappingProvider;

    if-nez v1, :cond_2

    .line 6
    invoke-interface {v0}, Lcom/jayway/jsonpath/Configuration$Defaults;->mappingProvider()Lcom/jayway/jsonpath/spi/mapper/MappingProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->mappingProvider:Lcom/jayway/jsonpath/spi/mapper/MappingProvider;

    .line 7
    :cond_2
    new-instance v0, Lcom/jayway/jsonpath/Configuration;

    iget-object v2, p0, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->jsonProvider:Lcom/jayway/jsonpath/spi/json/JsonProvider;

    iget-object v3, p0, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->mappingProvider:Lcom/jayway/jsonpath/spi/mapper/MappingProvider;

    iget-object v4, p0, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->options:Ljava/util/EnumSet;

    iget-object v5, p0, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->evaluationListener:Ljava/util/Collection;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/jayway/jsonpath/Configuration;-><init>(Lcom/jayway/jsonpath/spi/json/JsonProvider;Lcom/jayway/jsonpath/spi/mapper/MappingProvider;Ljava/util/EnumSet;Ljava/util/Collection;Lcom/jayway/jsonpath/Configuration$1;)V

    return-object v0
.end method

.method public evaluationListener(Ljava/util/Collection;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/jayway/jsonpath/EvaluationListener;",
            ">;)",
            "Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->evaluationListener:Ljava/util/Collection;

    return-object p0
.end method

.method public varargs evaluationListener([Lcom/jayway/jsonpath/EvaluationListener;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->evaluationListener:Ljava/util/Collection;

    return-object p0
.end method

.method public jsonProvider(Lcom/jayway/jsonpath/spi/json/JsonProvider;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->jsonProvider:Lcom/jayway/jsonpath/spi/json/JsonProvider;

    return-object p0
.end method

.method public mappingProvider(Lcom/jayway/jsonpath/spi/mapper/MappingProvider;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->mappingProvider:Lcom/jayway/jsonpath/spi/mapper/MappingProvider;

    return-object p0
.end method

.method public options(Ljava/util/Set;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/jayway/jsonpath/Option;",
            ">;)",
            "Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->options:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs options([Lcom/jayway/jsonpath/Option;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;
    .locals 1

    .line 1
    array-length v0, p1

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->options:Ljava/util/EnumSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method
