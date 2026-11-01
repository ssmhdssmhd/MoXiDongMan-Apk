.class public Lcom/jayway/jsonpath/internal/function/latebinding/JsonLateBindingValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jayway/jsonpath/internal/function/latebinding/ILateBindingValue;


# instance fields
.field private final jsonParameter:Lcom/jayway/jsonpath/internal/function/Parameter;

.field private final jsonProvider:Lcom/jayway/jsonpath/spi/json/JsonProvider;


# direct methods
.method public constructor <init>(Lcom/jayway/jsonpath/spi/json/JsonProvider;Lcom/jayway/jsonpath/internal/function/Parameter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/function/latebinding/JsonLateBindingValue;->jsonProvider:Lcom/jayway/jsonpath/spi/json/JsonProvider;

    .line 3
    iput-object p2, p0, Lcom/jayway/jsonpath/internal/function/latebinding/JsonLateBindingValue;->jsonParameter:Lcom/jayway/jsonpath/internal/function/Parameter;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/function/latebinding/JsonLateBindingValue;->jsonProvider:Lcom/jayway/jsonpath/spi/json/JsonProvider;

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/function/latebinding/JsonLateBindingValue;->jsonParameter:Lcom/jayway/jsonpath/internal/function/Parameter;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/function/Parameter;->getJson()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
