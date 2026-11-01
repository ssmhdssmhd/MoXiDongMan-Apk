.class public Lcom/wsw/cospa/web/controller/SourceDebugWebSocket;
.super Lfi/iki/elonen/do$for;
.source "SourceFile"


# static fields
.field public static MAP_STRING:Ljava/lang/reflect/Type;


# instance fields
.field private compositeDisposable:Landroid/support/v4/cq;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/web/controller/SourceDebugWebSocket$1;

    invoke-direct {v0}, Lcom/wsw/cospa/web/controller/SourceDebugWebSocket$1;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/web/controller/SourceDebugWebSocket;->MAP_STRING:Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfi/iki/elonen/do$for;-><init>(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/wsw/cospa/web/controller/SourceDebugWebSocket;)Landroid/support/v4/cq;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/web/controller/SourceDebugWebSocket;->compositeDisposable:Landroid/support/v4/cq;

    return-object p0
.end method


# virtual methods
.method public onClose(Lfi/iki/elonen/do$try$do;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/hwangjr/rxbus/RxBus;->get()Lcom/hwangjr/rxbus/Bus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/hwangjr/rxbus/Bus;->unregister(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/web/controller/SourceDebugWebSocket;->compositeDisposable:Landroid/support/v4/cq;

    invoke-virtual {p1}, Landroid/support/v4/cq;->dispose()V

    const/4 p1, 0x0

    .line 3
    sput-object p1, Lcom/wsw/cospa/model/Debug;->for:Ljava/lang/String;

    return-void
.end method

.method public onException(Ljava/io/IOException;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    sput-object p1, Lcom/wsw/cospa/model/Debug;->for:Ljava/lang/String;

    return-void
.end method

.method public onMessage(Lfi/iki/elonen/do$try;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lfi/iki/elonen/do$try;->else()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/l22;->public(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lfi/iki/elonen/do$try;->else()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/wsw/cospa/web/controller/SourceDebugWebSocket;->MAP_STRING:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "tag"

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "key"

    .line 4
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/wsw/cospa/web/controller/SourceDebugWebSocket;->compositeDisposable:Landroid/support/v4/cq;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/wsw/cospa/model/Debug;->final(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/cq;Lcom/wsw/cospa/model/Debug$CallBack;)V

    return-void

    .line 7
    :cond_2
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->try()Lcom/wsw/cospa/CartoonApplication;

    move-result-object p1

    const v0, 0x7f11003a

    invoke-virtual {p1, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfi/iki/elonen/do$for;->send(Ljava/lang/String;)V

    .line 8
    sget-object p1, Lfi/iki/elonen/do$try$do;->NormalClosure:Lfi/iki/elonen/do$try$do;

    const-string v0, "\u8c03\u8bd5\u7ed3\u675f"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lfi/iki/elonen/do$for;->close(Lfi/iki/elonen/do$try$do;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onOpen()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hwangjr/rxbus/RxBus;->get()Lcom/hwangjr/rxbus/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hwangjr/rxbus/Bus;->register(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Landroid/support/v4/cq;

    invoke-direct {v0}, Landroid/support/v4/cq;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/web/controller/SourceDebugWebSocket;->compositeDisposable:Landroid/support/v4/cq;

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-static {v1, v2, v1, v2, v0}, Lio/reactivex/new;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/new;

    move-result-object v0

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/do;->new()Lio/reactivex/try;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->observeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/web/controller/SourceDebugWebSocket$2;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/web/controller/SourceDebugWebSocket$2;-><init>(Lcom/wsw/cospa/web/controller/SourceDebugWebSocket;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public onPong(Lfi/iki/elonen/do$try;)V
    .locals 0

    return-void
.end method

.method public printDebugLog(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/hwangjr/rxbus/annotation/Subscribe;
        tags = {
            .subannotation Lcom/hwangjr/rxbus/annotation/Tag;
                value = "printDebugLog"
            .end subannotation
        }
        thread = .enum Lcom/hwangjr/rxbus/thread/EventThread;->EXECUTOR:Lcom/hwangjr/rxbus/thread/EventThread;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lfi/iki/elonen/do$for;->send(Ljava/lang/String;)V

    const-string v1, "finish"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lfi/iki/elonen/do$try$do;->NormalClosure:Lfi/iki/elonen/do$try$do;

    const-string v1, "\u8c03\u8bd5\u7ed3\u675f"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lfi/iki/elonen/do$for;->close(Lfi/iki/elonen/do$try$do;Ljava/lang/String;Z)V

    .line 4
    sput-object v0, Lcom/wsw/cospa/model/Debug;->for:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    sput-object v0, Lcom/wsw/cospa/model/Debug;->for:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method
