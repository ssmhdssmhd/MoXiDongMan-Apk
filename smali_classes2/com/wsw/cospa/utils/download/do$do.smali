.class Lcom/wsw/cospa/utils/download/do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/utils/download/do;->if(Lcom/wsw/cospa/utils/download/ProgressResponseListener;)Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/utils/download/ProgressResponseListener;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/utils/download/ProgressResponseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/download/do$do;->do:Lcom/wsw/cospa/utils/download/ProgressResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/utils/download/for;

    .line 3
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    iget-object v2, p0, Lcom/wsw/cospa/utils/download/do$do;->do:Lcom/wsw/cospa/utils/download/ProgressResponseListener;

    invoke-direct {v1, p1, v2}, Lcom/wsw/cospa/utils/download/for;-><init>(Lokhttp3/ResponseBody;Lcom/wsw/cospa/utils/download/ProgressResponseListener;)V

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
