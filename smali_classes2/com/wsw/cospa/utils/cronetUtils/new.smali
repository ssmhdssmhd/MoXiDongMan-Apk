.class public Lcom/wsw/cospa/utils/cronetUtils/new;
.super Lorg/chromium/net/return$if;
.source "SourceFile"


# static fields
.field private static final catch:Ljava/lang/String; = "Callback"

.field private static final class:I = 0x14


# instance fields
.field private break:Ljava/nio/channels/WritableByteChannel;

.field private case:Lokhttp3/Response;

.field private do:Lokhttp3/Request;

.field private else:Ljava/io/IOException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private for:Lokhttp3/EventListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private goto:Landroid/os/ConditionVariable;

.field private if:Lokhttp3/Call;

.field private new:Lokhttp3/Callback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private this:Ljava/io/ByteArrayOutputStream;

.field private try:I


# direct methods
.method public constructor <init>(Lokhttp3/Request;Lokhttp3/Call;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/wsw/cospa/utils/cronetUtils/new;-><init>(Lokhttp3/Request;Lokhttp3/Call;Lokhttp3/EventListener;Lokhttp3/Callback;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Request;Lokhttp3/Call;Lokhttp3/EventListener;Lokhttp3/Callback;)V
    .locals 2
    .param p3    # Lokhttp3/EventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lokhttp3/Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lorg/chromium/net/return$if;-><init>()V

    .line 3
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->goto:Landroid/os/ConditionVariable;

    .line 4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->this:Ljava/io/ByteArrayOutputStream;

    .line 5
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->break:Ljava/nio/channels/WritableByteChannel;

    .line 6
    iput-object p1, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->do:Lokhttp3/Request;

    .line 7
    iput-object p2, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->if:Lokhttp3/Call;

    .line 8
    new-instance p2, Lokhttp3/Response$Builder;

    invoke-direct {p2}, Lokhttp3/Response$Builder;-><init>()V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object p2

    .line 10
    invoke-virtual {p2, p1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object p1

    sget-object p2, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    .line 11
    invoke-virtual {p1, p2}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1, p2}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object p1

    const-string p2, ""

    .line 13
    invoke-virtual {p1, p2}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->case:Lokhttp3/Response;

    .line 15
    iput-object p4, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->new:Lokhttp3/Callback;

    .line 16
    iput-object p3, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->for:Lokhttp3/EventListener;

    return-void
.end method

.method private static else(Lorg/chromium/net/static;)Lokhttp3/Headers;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/chromium/net/static;->if()Ljava/util/List;

    move-result-object p0

    .line 2
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "content-encoding"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid HTTP header/value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object p0

    return-object p0
.end method

.method private static goto(Lorg/chromium/net/static;)Lokhttp3/Protocol;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/net/static;->try()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "quic"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p0, Lokhttp3/Protocol;->QUIC:Lokhttp3/Protocol;

    return-object p0

    :cond_0
    const-string v0, "spdy"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object p0, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    return-object p0

    :cond_1
    const-string v0, "h2"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    sget-object p0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    return-object p0

    :cond_2
    const-string v0, "1.1"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 9
    sget-object p0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    return-object p0

    .line 10
    :cond_3
    sget-object p0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    return-object p0
.end method

.method private static this(Lokhttp3/Response;Lorg/chromium/net/static;)Lokhttp3/Response;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/wsw/cospa/utils/cronetUtils/new;->goto(Lorg/chromium/net/static;)Lokhttp3/Protocol;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/cronetUtils/new;->else(Lorg/chromium/net/static;)Lokhttp3/Headers;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0, v0}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p1}, Lorg/chromium/net/static;->for()I

    move-result v0

    invoke-virtual {p0, v0}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p1}, Lorg/chromium/net/static;->new()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object p0

    .line 8
    invoke-virtual {p0, v1}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public break()Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->goto:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->else:Ljava/io/IOException;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->case:Lokhttp3/Response;

    return-object v0

    .line 4
    :cond_0
    throw v0
.end method

.method public case(Lorg/chromium/net/return;Lorg/chromium/net/static;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->for:Lokhttp3/EventListener;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->if:Lokhttp3/Call;

    invoke-virtual {p2}, Lorg/chromium/net/static;->else()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/EventListener;->responseBodyEnd(Lokhttp3/Call;J)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->case:Lokhttp3/Response;

    const-string v0, "content-type"

    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "text/plain; charset=\"utf-8\""

    .line 4
    :goto_0
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->this:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/ResponseBody;->create([BLokhttp3/MediaType;)Lokhttp3/ResponseBody;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->do:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/chromium/net/static;->goto()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->case:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->case:Lokhttp3/Response;

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->goto:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->for:Lokhttp3/EventListener;

    if-eqz p1, :cond_2

    .line 10
    iget-object p2, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->if:Lokhttp3/Call;

    invoke-virtual {p1, p2}, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->new:Lokhttp3/Callback;

    if-eqz p1, :cond_3

    .line 12
    :try_start_0
    iget-object p2, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->if:Lokhttp3/Call;

    iget-object v0, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->case:Lokhttp3/Response;

    invoke-interface {p1, p2, v0}, Lokhttp3/Callback;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public do(Lorg/chromium/net/return;Lorg/chromium/net/static;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->goto:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->for:Lokhttp3/EventListener;

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->if:Lokhttp3/Call;

    invoke-virtual {p1, p2}, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V

    :cond_0
    return-void
.end method

.method public for(Lorg/chromium/net/return;Lorg/chromium/net/static;Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->break:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {p2, p3}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    invoke-virtual {p1, p3}, Lorg/chromium/net/return;->try(Ljava/nio/ByteBuffer;)V

    return-void

    :catch_0
    move-exception p1

    .line 5
    throw p1
.end method

.method public if(Lorg/chromium/net/return;Lorg/chromium/net/static;Landroid/support/v4/rs;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cronet Exception Occurred"

    invoke-direct {p1, p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->else:Ljava/io/IOException;

    .line 3
    iget-object p2, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->goto:Landroid/os/ConditionVariable;

    invoke-virtual {p2}, Landroid/os/ConditionVariable;->open()V

    .line 4
    iget-object p2, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->for:Lokhttp3/EventListener;

    if-eqz p2, :cond_0

    .line 5
    iget-object p3, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->if:Lokhttp3/Call;

    invoke-virtual {p2, p3, p1}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->new:Lokhttp3/Callback;

    if-eqz p2, :cond_1

    .line 7
    iget-object p3, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->if:Lokhttp3/Call;

    invoke-interface {p2, p3, p1}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    :cond_1
    return-void
.end method

.method public new(Lorg/chromium/net/return;Lorg/chromium/net/static;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->try:I

    const/16 p3, 0x14

    if-le p2, p3, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/chromium/net/return;->do()V

    .line 3
    :cond_0
    iget p2, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->try:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->try:I

    .line 4
    invoke-virtual {p1}, Lorg/chromium/net/return;->if()V

    return-void
.end method

.method public try(Lorg/chromium/net/return;Lorg/chromium/net/static;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->case:Lokhttp3/Response;

    invoke-static {v0, p2}, Lcom/wsw/cospa/utils/cronetUtils/new;->this(Lokhttp3/Response;Lorg/chromium/net/static;)Lokhttp3/Response;

    move-result-object p2

    iput-object p2, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->case:Lokhttp3/Response;

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->for:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->if:Lokhttp3/Call;

    invoke-virtual {v0, v1, p2}, Lokhttp3/EventListener;->responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V

    .line 4
    iget-object p2, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->for:Lokhttp3/EventListener;

    iget-object v0, p0, Lcom/wsw/cospa/utils/cronetUtils/new;->if:Lokhttp3/Call;

    invoke-virtual {p2, v0}, Lokhttp3/EventListener;->responseBodyStart(Lokhttp3/Call;)V

    :cond_0
    const p2, 0x8000

    .line 5
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/chromium/net/return;->try(Ljava/nio/ByteBuffer;)V

    return-void
.end method
