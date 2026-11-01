.class public Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jayway/jsonpath/spi/mapper/MappingProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$BooleanReader;,
        Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$DateReader;,
        Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$BigIntegerReader;,
        Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$BigDecimalReader;,
        Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$FloatReader;,
        Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$DoubleReader;,
        Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$LongReader;,
        Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$IntegerReader;,
        Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$StringReader;
    }
.end annotation


# static fields
.field private static DEFAULT:Lnet/minidev/json/writer/try;


# instance fields
.field private final factory:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Lnet/minidev/json/writer/try;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lnet/minidev/json/writer/try;

    invoke-direct {v0}, Lnet/minidev/json/writer/try;-><init>()V

    sput-object v0, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider;->DEFAULT:Lnet/minidev/json/writer/try;

    .line 2
    const-class v1, Ljava/lang/Long;

    new-instance v2, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$LongReader;

    invoke-direct {v2}, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$LongReader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lnet/minidev/json/writer/try;->new(Ljava/lang/Class;Lnet/minidev/json/writer/case;)V

    .line 3
    sget-object v0, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider;->DEFAULT:Lnet/minidev/json/writer/try;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$LongReader;

    invoke-direct {v2}, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$LongReader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lnet/minidev/json/writer/try;->new(Ljava/lang/Class;Lnet/minidev/json/writer/case;)V

    .line 4
    sget-object v0, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider;->DEFAULT:Lnet/minidev/json/writer/try;

    const-class v1, Ljava/lang/Integer;

    new-instance v2, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$IntegerReader;

    invoke-direct {v2}, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$IntegerReader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lnet/minidev/json/writer/try;->new(Ljava/lang/Class;Lnet/minidev/json/writer/case;)V

    .line 5
    sget-object v0, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider;->DEFAULT:Lnet/minidev/json/writer/try;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$IntegerReader;

    invoke-direct {v2}, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$IntegerReader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lnet/minidev/json/writer/try;->new(Ljava/lang/Class;Lnet/minidev/json/writer/case;)V

    .line 6
    sget-object v0, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider;->DEFAULT:Lnet/minidev/json/writer/try;

    const-class v1, Ljava/lang/Double;

    new-instance v2, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$DoubleReader;

    invoke-direct {v2}, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$DoubleReader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lnet/minidev/json/writer/try;->new(Ljava/lang/Class;Lnet/minidev/json/writer/case;)V

    .line 7
    sget-object v0, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider;->DEFAULT:Lnet/minidev/json/writer/try;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$DoubleReader;

    invoke-direct {v2}, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$DoubleReader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lnet/minidev/json/writer/try;->new(Ljava/lang/Class;Lnet/minidev/json/writer/case;)V

    .line 8
    sget-object v0, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider;->DEFAULT:Lnet/minidev/json/writer/try;

    const-class v1, Ljava/lang/Float;

    new-instance v2, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$FloatReader;

    invoke-direct {v2}, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$FloatReader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lnet/minidev/json/writer/try;->new(Ljava/lang/Class;Lnet/minidev/json/writer/case;)V

    .line 9
    sget-object v0, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider;->DEFAULT:Lnet/minidev/json/writer/try;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$FloatReader;

    invoke-direct {v2}, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$FloatReader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lnet/minidev/json/writer/try;->new(Ljava/lang/Class;Lnet/minidev/json/writer/case;)V

    .line 10
    sget-object v0, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider;->DEFAULT:Lnet/minidev/json/writer/try;

    const-class v1, Ljava/math/BigDecimal;

    new-instance v2, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$BigDecimalReader;

    invoke-direct {v2}, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$BigDecimalReader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lnet/minidev/json/writer/try;->new(Ljava/lang/Class;Lnet/minidev/json/writer/case;)V

    .line 11
    sget-object v0, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider;->DEFAULT:Lnet/minidev/json/writer/try;

    const-class v1, Ljava/lang/String;

    new-instance v2, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$StringReader;

    invoke-direct {v2}, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$StringReader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lnet/minidev/json/writer/try;->new(Ljava/lang/Class;Lnet/minidev/json/writer/case;)V

    .line 12
    sget-object v0, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider;->DEFAULT:Lnet/minidev/json/writer/try;

    const-class v1, Ljava/util/Date;

    new-instance v2, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$DateReader;

    invoke-direct {v2}, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$DateReader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lnet/minidev/json/writer/try;->new(Ljava/lang/Class;Lnet/minidev/json/writer/case;)V

    .line 13
    sget-object v0, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider;->DEFAULT:Lnet/minidev/json/writer/try;

    const-class v1, Ljava/math/BigInteger;

    new-instance v2, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$BigIntegerReader;

    invoke-direct {v2}, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$BigIntegerReader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lnet/minidev/json/writer/try;->new(Ljava/lang/Class;Lnet/minidev/json/writer/case;)V

    .line 14
    sget-object v0, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider;->DEFAULT:Lnet/minidev/json/writer/try;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$BooleanReader;

    invoke-direct {v2}, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$BooleanReader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lnet/minidev/json/writer/try;->new(Ljava/lang/Class;Lnet/minidev/json/writer/case;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 4
    sget-object v0, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider;->DEFAULT:Lnet/minidev/json/writer/try;

    invoke-direct {p0, v0}, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider;-><init>(Lnet/minidev/json/writer/try;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lnet/minidev/json/writer/try;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider;->factory:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public constructor <init>(Lnet/minidev/json/writer/try;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$1;

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$1;-><init>(Lnet/minidev/json/writer/try;)V

    invoke-direct {p0, v0}, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider;-><init>(Ljava/util/concurrent/Callable;)V

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

    .line 7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Json-smart provider does not support TypeRef! Use a Jackson or Gson based provider"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public map(Ljava/lang/Object;Ljava/lang/Class;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;
    .locals 1
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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 2
    :cond_1
    :try_start_0
    invoke-virtual {p3}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->isMap(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object p3, p0, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider;->factory:Ljava/util/concurrent/Callable;

    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/minidev/json/writer/try;

    invoke-virtual {p3, p2}, Lnet/minidev/json/writer/try;->do(Ljava/lang/Class;)Lnet/minidev/json/writer/case;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/minidev/json/writer/case;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    invoke-virtual {p3}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1, p2}, Lnet/minidev/json/new;->native(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Lcom/jayway/jsonpath/spi/mapper/MappingException;

    invoke-direct {p2, p1}, Lcom/jayway/jsonpath/spi/mapper/MappingException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
