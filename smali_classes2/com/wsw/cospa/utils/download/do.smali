.class public Lcom/wsw/cospa/utils/download/do;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Lcom/wsw/cospa/utils/download/ProgressRequestListener;)Lokhttp3/OkHttpClient;
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/volatile;->else()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/wsw/cospa/utils/download/do$if;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/utils/download/do$if;-><init>(Lcom/wsw/cospa/utils/download/ProgressRequestListener;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 3
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static if(Lcom/wsw/cospa/utils/download/ProgressResponseListener;)Lokhttp3/OkHttpClient;
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/volatile;->else()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/wsw/cospa/utils/download/do$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/utils/download/do$do;-><init>(Lcom/wsw/cospa/utils/download/ProgressResponseListener;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 3
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method
