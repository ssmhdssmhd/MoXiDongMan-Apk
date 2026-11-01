.class public Lcom/jayway/jsonpath/spi/json/JsonSmartJsonProvider;
.super Lcom/jayway/jsonpath/spi/json/AbstractJsonProvider;
.source "SourceFile"


# instance fields
.field private final mapper:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "*>;"
        }
    .end annotation
.end field

.field private final parseMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    iget-object v0, v0, Lnet/minidev/json/writer/try;->for:Lnet/minidev/json/writer/case;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/jayway/jsonpath/spi/json/JsonSmartJsonProvider;-><init>(ILnet/minidev/json/writer/case;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    sget-object v0, Lnet/minidev/json/new;->for:Lnet/minidev/json/writer/try;

    iget-object v0, v0, Lnet/minidev/json/writer/try;->for:Lnet/minidev/json/writer/case;

    invoke-direct {p0, p1, v0}, Lcom/jayway/jsonpath/spi/json/JsonSmartJsonProvider;-><init>(ILnet/minidev/json/writer/case;)V

    return-void
.end method

.method public constructor <init>(ILnet/minidev/json/writer/case;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnet/minidev/json/writer/case<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/jayway/jsonpath/spi/json/AbstractJsonProvider;-><init>()V

    .line 4
    iput p1, p0, Lcom/jayway/jsonpath/spi/json/JsonSmartJsonProvider;->parseMode:I

    .line 5
    iput-object p2, p0, Lcom/jayway/jsonpath/spi/json/JsonSmartJsonProvider;->mapper:Lnet/minidev/json/writer/case;

    return-void
.end method

.method private createParser()Lnet/minidev/json/parser/do;
    .locals 2

    .line 1
    new-instance v0, Lnet/minidev/json/parser/do;

    iget v1, p0, Lcom/jayway/jsonpath/spi/json/JsonSmartJsonProvider;->parseMode:I

    invoke-direct {v0, v1}, Lnet/minidev/json/parser/do;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public createArray()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/json/JsonSmartJsonProvider;->mapper:Lnet/minidev/json/writer/case;

    invoke-virtual {v0}, Lnet/minidev/json/writer/case;->createArray()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createMap()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/json/JsonSmartJsonProvider;->mapper:Lnet/minidev/json/writer/case;

    invoke-virtual {v0}, Lnet/minidev/json/writer/case;->createObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jayway/jsonpath/InvalidJsonException;
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/jayway/jsonpath/spi/json/JsonSmartJsonProvider;->createParser()Lnet/minidev/json/parser/do;

    move-result-object v0

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/jayway/jsonpath/spi/json/JsonSmartJsonProvider;->mapper:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, v1, p1}, Lnet/minidev/json/parser/do;->break(Ljava/io/Reader;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/ic1; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Lcom/jayway/jsonpath/JsonPathException;

    invoke-direct {p2, p1}, Lcom/jayway/jsonpath/JsonPathException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 5
    new-instance p2, Lcom/jayway/jsonpath/InvalidJsonException;

    invoke-direct {p2, p1}, Lcom/jayway/jsonpath/InvalidJsonException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/jayway/jsonpath/spi/json/JsonSmartJsonProvider;->createParser()Lnet/minidev/json/parser/do;

    move-result-object v0

    iget-object v1, p0, Lcom/jayway/jsonpath/spi/json/JsonSmartJsonProvider;->mapper:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, p1, v1}, Lnet/minidev/json/parser/do;->const(Ljava/lang/String;Lnet/minidev/json/writer/case;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/ic1; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/jayway/jsonpath/InvalidJsonException;

    invoke-direct {v0, p1}, Lcom/jayway/jsonpath/InvalidJsonException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Map;

    sget-object v0, Lnet/minidev/json/for;->super:Lnet/minidev/json/for;

    invoke-static {p1, v0}, Lnet/minidev/json/if;->toJSONString(Ljava/util/Map;Lnet/minidev/json/for;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/util/List;

    sget-object v0, Lnet/minidev/json/for;->super:Lnet/minidev/json/for;

    invoke-static {p1, v0}, Lnet/minidev/json/do;->toJSONString(Ljava/util/List;Lnet/minidev/json/for;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can not be converted to JSON"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
