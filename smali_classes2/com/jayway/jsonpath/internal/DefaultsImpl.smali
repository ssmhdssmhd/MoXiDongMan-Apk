.class public final Lcom/jayway/jsonpath/internal/DefaultsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jayway/jsonpath/Configuration$Defaults;


# static fields
.field public static final INSTANCE:Lcom/jayway/jsonpath/internal/DefaultsImpl;


# instance fields
.field private final mappingProvider:Lcom/jayway/jsonpath/spi/mapper/MappingProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/DefaultsImpl;

    invoke-direct {v0}, Lcom/jayway/jsonpath/internal/DefaultsImpl;-><init>()V

    sput-object v0, Lcom/jayway/jsonpath/internal/DefaultsImpl;->INSTANCE:Lcom/jayway/jsonpath/internal/DefaultsImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider;

    invoke-direct {v0}, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider;-><init>()V

    iput-object v0, p0, Lcom/jayway/jsonpath/internal/DefaultsImpl;->mappingProvider:Lcom/jayway/jsonpath/spi/mapper/MappingProvider;

    return-void
.end method


# virtual methods
.method public jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;
    .locals 1

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/spi/json/JsonSmartJsonProvider;

    invoke-direct {v0}, Lcom/jayway/jsonpath/spi/json/JsonSmartJsonProvider;-><init>()V

    return-object v0
.end method

.method public mappingProvider()Lcom/jayway/jsonpath/spi/mapper/MappingProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/DefaultsImpl;->mappingProvider:Lcom/jayway/jsonpath/spi/mapper/MappingProvider;

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
    const-class v0, Lcom/jayway/jsonpath/Option;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method
