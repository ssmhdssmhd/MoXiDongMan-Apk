.class public Lcom/wsw/cospa/utils/download/if;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# instance fields
.field private do:Lokhttp3/RequestBody;

.field private for:Lokio/BufferedSink;

.field private if:Lcom/wsw/cospa/utils/download/ProgressRequestListener;


# direct methods
.method public constructor <init>(Lokhttp3/RequestBody;Lcom/wsw/cospa/utils/download/ProgressRequestListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/download/if;->do:Lokhttp3/RequestBody;

    .line 3
    iput-object p2, p0, Lcom/wsw/cospa/utils/download/if;->if:Lcom/wsw/cospa/utils/download/ProgressRequestListener;

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/utils/download/if;)Lcom/wsw/cospa/utils/download/ProgressRequestListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/download/if;->if:Lcom/wsw/cospa/utils/download/ProgressRequestListener;

    return-object p0
.end method

.method private if(Lokio/Sink;)Lokio/Sink;
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/utils/download/if$do;

    invoke-direct {v0, p0, p1}, Lcom/wsw/cospa/utils/download/if$do;-><init>(Lcom/wsw/cospa/utils/download/if;Lokio/Sink;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/download/if;->do:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/download/if;->do:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/download/if;->for:Lokio/BufferedSink;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/download/if;->if(Lokio/Sink;)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/download/if;->for:Lokio/BufferedSink;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/utils/download/if;->do:Lokhttp3/RequestBody;

    iget-object v0, p0, Lcom/wsw/cospa/utils/download/if;->for:Lokio/BufferedSink;

    invoke-virtual {p1, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/utils/download/if;->for:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    return-void
.end method
