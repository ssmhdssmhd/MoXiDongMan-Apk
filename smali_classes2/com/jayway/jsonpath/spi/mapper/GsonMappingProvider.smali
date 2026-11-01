.class public Lcom/jayway/jsonpath/spi/mapper/GsonMappingProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jayway/jsonpath/spi/mapper/MappingProvider;


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final factory:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/jayway/jsonpath/spi/mapper/GsonMappingProvider;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/jayway/jsonpath/spi/mapper/GsonMappingProvider;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "com.google.gson.Gson"

    .line 5
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    new-instance v0, Lcom/jayway/jsonpath/spi/mapper/GsonMappingProvider$2;

    invoke-direct {v0, p0}, Lcom/jayway/jsonpath/spi/mapper/GsonMappingProvider$2;-><init>(Lcom/jayway/jsonpath/spi/mapper/GsonMappingProvider;)V

    iput-object v0, p0, Lcom/jayway/jsonpath/spi/mapper/GsonMappingProvider;->factory:Ljava/util/concurrent/Callable;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7
    sget-object v1, Lcom/jayway/jsonpath/spi/mapper/GsonMappingProvider;->logger:Lorg/slf4j/Logger;

    const-string v2, "Gson not found on class path. No converters configured."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/jayway/jsonpath/JsonPathException;

    const-string v2, "Gson not found on path"

    invoke-direct {v1, v2, v0}, Lcom/jayway/jsonpath/JsonPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/spi/mapper/GsonMappingProvider$1;

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/spi/mapper/GsonMappingProvider$1;-><init>(Lcom/google/gson/Gson;)V

    invoke-direct {p0, v0}, Lcom/jayway/jsonpath/spi/mapper/GsonMappingProvider;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/google/gson/Gson;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jayway/jsonpath/spi/mapper/GsonMappingProvider;->factory:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public map(Ljava/lang/Object;Lcom/jayway/jsonpath/TypeRef;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/jayway/jsonpath/TypeRef<",
            "TT;>;",
            "Lcom/jayway/jsonpath/Configuration;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/jayway/jsonpath/spi/mapper/GsonMappingProvider;->factory:Ljava/util/concurrent/Callable;

    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/gson/Gson;

    invoke-virtual {p2}, Lcom/jayway/jsonpath/TypeRef;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p2

    check-cast p1, Lcom/google/gson/JsonElement;

    invoke-virtual {p2, p1}, Lcom/google/gson/TypeAdapter;->fromJsonTree(Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Lcom/jayway/jsonpath/spi/mapper/MappingException;

    invoke-direct {p2, p1}, Lcom/jayway/jsonpath/spi/mapper/MappingException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public map(Ljava/lang/Object;Ljava/lang/Class;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/jayway/jsonpath/Configuration;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/jayway/jsonpath/spi/mapper/GsonMappingProvider;->factory:Ljava/util/concurrent/Callable;

    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/gson/Gson;

    invoke-virtual {p3, p2}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object p2

    check-cast p1, Lcom/google/gson/JsonElement;

    invoke-virtual {p2, p1}, Lcom/google/gson/TypeAdapter;->fromJsonTree(Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Lcom/jayway/jsonpath/spi/mapper/MappingException;

    invoke-direct {p2, p1}, Lcom/jayway/jsonpath/spi/mapper/MappingException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
