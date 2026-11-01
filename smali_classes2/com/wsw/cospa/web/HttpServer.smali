.class public Lcom/wsw/cospa/web/HttpServer;
.super Lfi/iki/elonen/NanoHTTPD;
.source "SourceFile"


# instance fields
.field private assetsWeb:Lcom/wsw/cospa/web/utils/AssetsWeb;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoHTTPD;-><init>(I)V

    .line 2
    new-instance p1, Lcom/wsw/cospa/web/utils/AssetsWeb;

    const-string v0, "web"

    invoke-direct {p1, v0}, Lcom/wsw/cospa/web/utils/AssetsWeb;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/wsw/cospa/web/HttpServer;->assetsWeb:Lcom/wsw/cospa/web/utils/AssetsWeb;

    return-void
.end method


# virtual methods
.method public serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 13

    .line 1
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v3, -0x1faded82

    const-string v4, "POST"

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0x11336

    if-eq v2, v3, :cond_1

    const v3, 0x2590a0

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const-string v2, "OPTIONS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v2, "origin"

    const-string v3, "Access-Control-Allow-Origin"

    const-string v9, "Access-Control-Allow-Methods"

    if-eqz v1, :cond_13

    const/4 v4, 0x3

    const/4 v10, 0x0

    if-eq v1, v8, :cond_b

    if-eq v1, v7, :cond_4

    goto/16 :goto_7

    .line 3
    :cond_4
    :try_start_2
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParameters()Ljava/util/Map;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/4 v12, 0x4

    sparse-switch v11, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v5, "/getChapterList"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x3

    goto :goto_3

    :sswitch_1
    const-string v5, "/getBookshelf"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x2

    goto :goto_3

    :sswitch_2
    const-string v5, "/getSources"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :sswitch_3
    const-string v11, "/getSource"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_3

    :sswitch_4
    const-string v5, "/getBookContent"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x4

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v5, -0x1

    :goto_3
    if-eqz v5, :cond_a

    if-eq v5, v8, :cond_9

    if-eq v5, v7, :cond_8

    if-eq v5, v4, :cond_7

    if-eq v5, v12, :cond_6

    goto/16 :goto_7

    .line 5
    :cond_6
    new-instance v4, Lcom/wsw/cospa/web/controller/BookshelfController;

    invoke-direct {v4}, Lcom/wsw/cospa/web/controller/BookshelfController;-><init>()V

    invoke-virtual {v4, v1}, Lcom/wsw/cospa/web/controller/BookshelfController;->getBookContent(Ljava/util/Map;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object v10

    goto/16 :goto_7

    .line 6
    :cond_7
    new-instance v4, Lcom/wsw/cospa/web/controller/BookshelfController;

    invoke-direct {v4}, Lcom/wsw/cospa/web/controller/BookshelfController;-><init>()V

    invoke-virtual {v4, v1}, Lcom/wsw/cospa/web/controller/BookshelfController;->getChapterList(Ljava/util/Map;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object v10

    goto/16 :goto_7

    .line 7
    :cond_8
    new-instance v1, Lcom/wsw/cospa/web/controller/BookshelfController;

    invoke-direct {v1}, Lcom/wsw/cospa/web/controller/BookshelfController;-><init>()V

    invoke-virtual {v1}, Lcom/wsw/cospa/web/controller/BookshelfController;->getBookshelf()Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object v10

    goto/16 :goto_7

    .line 8
    :cond_9
    new-instance v1, Lcom/wsw/cospa/web/controller/SourceController;

    invoke-direct {v1}, Lcom/wsw/cospa/web/controller/SourceController;-><init>()V

    invoke-virtual {v1}, Lcom/wsw/cospa/web/controller/SourceController;->getSources()Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object v10

    goto/16 :goto_7

    .line 9
    :cond_a
    new-instance v4, Lcom/wsw/cospa/web/controller/SourceController;

    invoke-direct {v4}, Lcom/wsw/cospa/web/controller/SourceController;-><init>()V

    invoke-virtual {v4, v1}, Lcom/wsw/cospa/web/controller/SourceController;->getSource(Ljava/util/Map;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object v10

    goto/16 :goto_7

    .line 10
    :cond_b
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-interface {p1, v1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->parseBody(Ljava/util/Map;)V

    const-string v11, "postData"

    .line 12
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_1

    goto :goto_4

    :sswitch_5
    const-string v5, "/saveSources"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    goto :goto_5

    :sswitch_6
    const-string v5, "/deleteSources"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x3

    goto :goto_5

    :sswitch_7
    const-string v5, "/saveBook"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x2

    goto :goto_5

    :sswitch_8
    const-string v11, "/saveSource"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v5, -0x1

    :goto_5
    if-eqz v5, :cond_10

    if-eq v5, v8, :cond_f

    if-eq v5, v7, :cond_e

    if-eq v5, v4, :cond_d

    goto :goto_7

    .line 14
    :cond_d
    new-instance v4, Lcom/wsw/cospa/web/controller/SourceController;

    invoke-direct {v4}, Lcom/wsw/cospa/web/controller/SourceController;-><init>()V

    invoke-virtual {v4, v1}, Lcom/wsw/cospa/web/controller/SourceController;->deleteSources(Ljava/lang/String;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object v1

    goto :goto_6

    .line 15
    :cond_e
    new-instance v4, Lcom/wsw/cospa/web/controller/BookshelfController;

    invoke-direct {v4}, Lcom/wsw/cospa/web/controller/BookshelfController;-><init>()V

    invoke-virtual {v4, v1}, Lcom/wsw/cospa/web/controller/BookshelfController;->saveBook(Ljava/lang/String;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object v1

    goto :goto_6

    .line 16
    :cond_f
    new-instance v4, Lcom/wsw/cospa/web/controller/SourceController;

    invoke-direct {v4}, Lcom/wsw/cospa/web/controller/SourceController;-><init>()V

    invoke-virtual {v4, v1}, Lcom/wsw/cospa/web/controller/SourceController;->saveSources(Ljava/lang/String;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object v1

    goto :goto_6

    .line 17
    :cond_10
    new-instance v4, Lcom/wsw/cospa/web/controller/SourceController;

    invoke-direct {v4}, Lcom/wsw/cospa/web/controller/SourceController;-><init>()V

    invoke-virtual {v4, v1}, Lcom/wsw/cospa/web/controller/SourceController;->saveSource(Ljava/lang/String;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object v1

    :goto_6
    move-object v10, v1

    :goto_7
    if-nez v10, :cond_12

    const-string p1, "/"

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "index.html"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    :cond_11
    iget-object p1, p0, Lcom/wsw/cospa/web/HttpServer;->assetsWeb:Lcom/wsw/cospa/web/utils/AssetsWeb;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/web/utils/AssetsWeb;->getResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 21
    :cond_12
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v10}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    const-string v1, "GET, POST"

    .line 22
    invoke-virtual {v0, v9, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Lfi/iki/elonen/NanoHTTPD$Response;->if(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_13
    const-string v0, ""

    .line 24
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v9, v4}, Lfi/iki/elonen/NanoHTTPD$Response;->if(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Access-Control-Allow-Headers"

    const-string v4, "content-type"

    .line 26
    invoke-virtual {v0, v1, v4}, Lfi/iki/elonen/NanoHTTPD$Response;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Lfi/iki/elonen/NanoHTTPD$Response;->if(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x6ac30df7 -> :sswitch_4
        0x9234fc2 -> :sswitch_3
        0x1b46a8f1 -> :sswitch_2
        0x43402fda -> :sswitch_1
        0x76ee7b44 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x6a81ea99 -> :sswitch_8
        -0x430134cb -> :sswitch_7
        -0xcfff442 -> :sswitch_6
        0x1a4497ec -> :sswitch_5
    .end sparse-switch
.end method
