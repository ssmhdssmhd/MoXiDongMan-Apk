.class Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider;-><init>(Lnet/minidev/json/writer/try;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lnet/minidev/json/writer/try;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$jsonReader:Lnet/minidev/json/writer/try;


# direct methods
.method public constructor <init>(Lnet/minidev/json/writer/try;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$1;->val$jsonReader:Lnet/minidev/json/writer/try;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$1;->call()Lnet/minidev/json/writer/try;

    move-result-object v0

    return-object v0
.end method

.method public call()Lnet/minidev/json/writer/try;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/mapper/JsonSmartMappingProvider$1;->val$jsonReader:Lnet/minidev/json/writer/try;

    return-object v0
.end method
