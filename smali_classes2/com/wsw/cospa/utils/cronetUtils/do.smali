.class public Lcom/wsw/cospa/utils/cronetUtils/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private do(Lokhttp3/Request;Lokhttp3/Call;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/wsw/cospa/utils/cronetUtils/new;

    invoke-direct {v0, p1, p2}, Lcom/wsw/cospa/utils/cronetUtils/new;-><init>(Lokhttp3/Request;Lokhttp3/Call;)V

    .line 2
    invoke-static {}, Lcom/wsw/cospa/utils/cronetUtils/if;->try()Lcom/wsw/cospa/utils/cronetUtils/if;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/wsw/cospa/utils/cronetUtils/if;->for(Lokhttp3/Request;Lorg/chromium/net/return$if;)Lorg/chromium/net/return;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lorg/chromium/net/return;->case()V

    .line 4
    invoke-virtual {v0}, Lcom/wsw/cospa/utils/cronetUtils/new;->break()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/cronetUtils/if;->try()Lcom/wsw/cospa/utils/cronetUtils/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/cronetUtils/if;->else()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "CronetTip"

    const-string v1, "Cronet Cannel"

    .line 2
    invoke-static {v0, v1}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->call()Lokhttp3/Call;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/wsw/cospa/utils/cronetUtils/do;->do(Lokhttp3/Request;Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CronetError"

    invoke-static {v1, v0}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
