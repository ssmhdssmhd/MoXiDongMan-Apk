.class Lcom/wsw/cospa/utils/download/do$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/utils/download/do;->do(Lcom/wsw/cospa/utils/download/ProgressRequestListener;)Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/utils/download/ProgressRequestListener;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/utils/download/ProgressRequestListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/download/do$if;->do:Lcom/wsw/cospa/utils/download/ProgressRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/wsw/cospa/utils/download/if;

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    iget-object v4, p0, Lcom/wsw/cospa/utils/download/do$if;->do:Lcom/wsw/cospa/utils/download/ProgressRequestListener;

    invoke-direct {v3, v0, v4}, Lcom/wsw/cospa/utils/download/if;-><init>(Lokhttp3/RequestBody;Lcom/wsw/cospa/utils/download/ProgressRequestListener;)V

    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
