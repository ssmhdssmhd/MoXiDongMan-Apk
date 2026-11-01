.class public Lcom/jayway/jsonpath/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jayway/jsonpath/Configuration$Defaults;,
        Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;
    }
.end annotation


# static fields
.field private static DEFAULTS:Lcom/jayway/jsonpath/Configuration$Defaults;


# instance fields
.field private final evaluationListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/jayway/jsonpath/EvaluationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final jsonProvider:Lcom/jayway/jsonpath/spi/json/JsonProvider;

.field private final mappingProvider:Lcom/jayway/jsonpath/spi/mapper/MappingProvider;

.field private final options:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/jayway/jsonpath/Option;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/jayway/jsonpath/spi/json/JsonProvider;Lcom/jayway/jsonpath/spi/mapper/MappingProvider;Ljava/util/EnumSet;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jayway/jsonpath/spi/json/JsonProvider;",
            "Lcom/jayway/jsonpath/spi/mapper/MappingProvider;",
            "Ljava/util/EnumSet<",
            "Lcom/jayway/jsonpath/Option;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/jayway/jsonpath/EvaluationListener;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "jsonProvider can not be null"

    .line 3
    invoke-static {p1, v2, v1}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "mappingProvider can not be null"

    .line 4
    invoke-static {p2, v2, v1}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "setOptions can not be null"

    .line 5
    invoke-static {p3, v2, v1}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "evaluationListeners can not be null"

    .line 6
    invoke-static {p4, v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lcom/jayway/jsonpath/Configuration;->jsonProvider:Lcom/jayway/jsonpath/spi/json/JsonProvider;

    .line 8
    iput-object p2, p0, Lcom/jayway/jsonpath/Configuration;->mappingProvider:Lcom/jayway/jsonpath/spi/mapper/MappingProvider;

    .line 9
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/Configuration;->options:Ljava/util/Set;

    .line 10
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/Configuration;->evaluationListeners:Ljava/util/Collection;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jayway/jsonpath/spi/json/JsonProvider;Lcom/jayway/jsonpath/spi/mapper/MappingProvider;Ljava/util/EnumSet;Ljava/util/Collection;Lcom/jayway/jsonpath/Configuration$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jayway/jsonpath/Configuration;-><init>(Lcom/jayway/jsonpath/spi/json/JsonProvider;Lcom/jayway/jsonpath/spi/mapper/MappingProvider;Ljava/util/EnumSet;Ljava/util/Collection;)V

    return-void
.end method

.method public static synthetic access$000()Lcom/jayway/jsonpath/Configuration$Defaults;
    .locals 1

    .line 1
    invoke-static {}, Lcom/jayway/jsonpath/Configuration;->getEffectiveDefaults()Lcom/jayway/jsonpath/Configuration$Defaults;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;
    .locals 1

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    invoke-direct {v0}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;-><init>()V

    return-object v0
.end method

.method public static defaultConfiguration()Lcom/jayway/jsonpath/Configuration;
    .locals 3

    .line 1
    invoke-static {}, Lcom/jayway/jsonpath/Configuration;->getEffectiveDefaults()Lcom/jayway/jsonpath/Configuration$Defaults;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/jayway/jsonpath/Configuration;->builder()Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/jayway/jsonpath/Configuration$Defaults;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->jsonProvider(Lcom/jayway/jsonpath/spi/json/JsonProvider;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/jayway/jsonpath/Configuration$Defaults;->options()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->options(Ljava/util/Set;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->build()Lcom/jayway/jsonpath/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private static getEffectiveDefaults()Lcom/jayway/jsonpath/Configuration$Defaults;
    .locals 1

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/Configuration;->DEFAULTS:Lcom/jayway/jsonpath/Configuration$Defaults;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/jayway/jsonpath/internal/DefaultsImpl;->INSTANCE:Lcom/jayway/jsonpath/internal/DefaultsImpl;

    :cond_0
    return-object v0
.end method

.method public static declared-synchronized setDefaults(Lcom/jayway/jsonpath/Configuration$Defaults;)V
    .locals 1

    const-class v0, Lcom/jayway/jsonpath/Configuration;

    monitor-enter v0

    .line 1
    :try_start_0
    sput-object p0, Lcom/jayway/jsonpath/Configuration;->DEFAULTS:Lcom/jayway/jsonpath/Configuration$Defaults;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public varargs addEvaluationListeners([Lcom/jayway/jsonpath/EvaluationListener;)Lcom/jayway/jsonpath/Configuration;
    .locals 2

    .line 1
    invoke-static {}, Lcom/jayway/jsonpath/Configuration;->builder()Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jayway/jsonpath/Configuration;->jsonProvider:Lcom/jayway/jsonpath/spi/json/JsonProvider;

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->jsonProvider(Lcom/jayway/jsonpath/spi/json/JsonProvider;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jayway/jsonpath/Configuration;->mappingProvider:Lcom/jayway/jsonpath/spi/mapper/MappingProvider;

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->mappingProvider(Lcom/jayway/jsonpath/spi/mapper/MappingProvider;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jayway/jsonpath/Configuration;->options:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->options(Ljava/util/Set;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->evaluationListener([Lcom/jayway/jsonpath/EvaluationListener;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->build()Lcom/jayway/jsonpath/Configuration;

    move-result-object p1

    return-object p1
.end method

.method public varargs addOptions([Lcom/jayway/jsonpath/Option;)Lcom/jayway/jsonpath/Configuration;
    .locals 2

    .line 1
    const-class v0, Lcom/jayway/jsonpath/Option;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/jayway/jsonpath/Configuration;->options:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-static {}, Lcom/jayway/jsonpath/Configuration;->builder()Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/jayway/jsonpath/Configuration;->jsonProvider:Lcom/jayway/jsonpath/spi/json/JsonProvider;

    invoke-virtual {p1, v1}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->jsonProvider(Lcom/jayway/jsonpath/spi/json/JsonProvider;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/jayway/jsonpath/Configuration;->mappingProvider:Lcom/jayway/jsonpath/spi/mapper/MappingProvider;

    invoke-virtual {p1, v1}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->mappingProvider(Lcom/jayway/jsonpath/spi/mapper/MappingProvider;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->options(Ljava/util/Set;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/jayway/jsonpath/Configuration;->evaluationListeners:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->evaluationListener(Ljava/util/Collection;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->build()Lcom/jayway/jsonpath/Configuration;

    move-result-object p1

    return-object p1
.end method

.method public containsOption(Lcom/jayway/jsonpath/Option;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/Configuration;->options:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getEvaluationListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/jayway/jsonpath/EvaluationListener;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/Configuration;->evaluationListeners:Ljava/util/Collection;

    return-object v0
.end method

.method public getOptions()Ljava/util/Set;
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
    iget-object v0, p0, Lcom/jayway/jsonpath/Configuration;->options:Ljava/util/Set;

    return-object v0
.end method

.method public jsonProvider(Lcom/jayway/jsonpath/spi/json/JsonProvider;)Lcom/jayway/jsonpath/Configuration;
    .locals 1

    .line 1
    invoke-static {}, Lcom/jayway/jsonpath/Configuration;->builder()Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->jsonProvider(Lcom/jayway/jsonpath/spi/json/JsonProvider;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/jayway/jsonpath/Configuration;->mappingProvider:Lcom/jayway/jsonpath/spi/mapper/MappingProvider;

    invoke-virtual {p1, v0}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->mappingProvider(Lcom/jayway/jsonpath/spi/mapper/MappingProvider;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/jayway/jsonpath/Configuration;->options:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->options(Ljava/util/Set;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/jayway/jsonpath/Configuration;->evaluationListeners:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->evaluationListener(Ljava/util/Collection;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->build()Lcom/jayway/jsonpath/Configuration;

    move-result-object p1

    return-object p1
.end method

.method public jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jayway/jsonpath/Configuration;->jsonProvider:Lcom/jayway/jsonpath/spi/json/JsonProvider;

    return-object v0
.end method

.method public mappingProvider(Lcom/jayway/jsonpath/spi/mapper/MappingProvider;)Lcom/jayway/jsonpath/Configuration;
    .locals 2

    .line 1
    invoke-static {}, Lcom/jayway/jsonpath/Configuration;->builder()Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jayway/jsonpath/Configuration;->jsonProvider:Lcom/jayway/jsonpath/spi/json/JsonProvider;

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->jsonProvider(Lcom/jayway/jsonpath/spi/json/JsonProvider;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->mappingProvider(Lcom/jayway/jsonpath/spi/mapper/MappingProvider;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/jayway/jsonpath/Configuration;->options:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->options(Ljava/util/Set;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/jayway/jsonpath/Configuration;->evaluationListeners:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->evaluationListener(Ljava/util/Collection;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->build()Lcom/jayway/jsonpath/Configuration;

    move-result-object p1

    return-object p1
.end method

.method public mappingProvider()Lcom/jayway/jsonpath/spi/mapper/MappingProvider;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jayway/jsonpath/Configuration;->mappingProvider:Lcom/jayway/jsonpath/spi/mapper/MappingProvider;

    return-object v0
.end method

.method public varargs setEvaluationListeners([Lcom/jayway/jsonpath/EvaluationListener;)Lcom/jayway/jsonpath/Configuration;
    .locals 2

    .line 1
    invoke-static {}, Lcom/jayway/jsonpath/Configuration;->builder()Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jayway/jsonpath/Configuration;->jsonProvider:Lcom/jayway/jsonpath/spi/json/JsonProvider;

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->jsonProvider(Lcom/jayway/jsonpath/spi/json/JsonProvider;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jayway/jsonpath/Configuration;->mappingProvider:Lcom/jayway/jsonpath/spi/mapper/MappingProvider;

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->mappingProvider(Lcom/jayway/jsonpath/spi/mapper/MappingProvider;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jayway/jsonpath/Configuration;->options:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->options(Ljava/util/Set;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->evaluationListener([Lcom/jayway/jsonpath/EvaluationListener;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->build()Lcom/jayway/jsonpath/Configuration;

    move-result-object p1

    return-object p1
.end method

.method public varargs setOptions([Lcom/jayway/jsonpath/Option;)Lcom/jayway/jsonpath/Configuration;
    .locals 2

    .line 1
    invoke-static {}, Lcom/jayway/jsonpath/Configuration;->builder()Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jayway/jsonpath/Configuration;->jsonProvider:Lcom/jayway/jsonpath/spi/json/JsonProvider;

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->jsonProvider(Lcom/jayway/jsonpath/spi/json/JsonProvider;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jayway/jsonpath/Configuration;->mappingProvider:Lcom/jayway/jsonpath/spi/mapper/MappingProvider;

    invoke-virtual {v0, v1}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->mappingProvider(Lcom/jayway/jsonpath/spi/mapper/MappingProvider;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->options([Lcom/jayway/jsonpath/Option;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/jayway/jsonpath/Configuration;->evaluationListeners:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->evaluationListener(Ljava/util/Collection;)Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jayway/jsonpath/Configuration$ConfigurationBuilder;->build()Lcom/jayway/jsonpath/Configuration;

    move-result-object p1

    return-object p1
.end method
