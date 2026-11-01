.class public Lcom/wsw/cospa/utils/download/for;
.super Lokhttp3/ResponseBody;
.source "SourceFile"


# instance fields
.field private final do:Lokhttp3/ResponseBody;

.field private for:Lokio/BufferedSource;

.field private final if:Lcom/wsw/cospa/utils/download/ProgressResponseListener;


# direct methods
.method public constructor <init>(Lokhttp3/ResponseBody;Lcom/wsw/cospa/utils/download/ProgressResponseListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/download/for;->do:Lokhttp3/ResponseBody;

    .line 3
    iput-object p2, p0, Lcom/wsw/cospa/utils/download/for;->if:Lcom/wsw/cospa/utils/download/ProgressResponseListener;

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/utils/download/for;)Lcom/wsw/cospa/utils/download/ProgressResponseListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/download/for;->if:Lcom/wsw/cospa/utils/download/ProgressResponseListener;

    return-object p0
.end method

.method private for(Lokio/Source;)Lokio/Source;
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/utils/download/for$do;

    invoke-direct {v0, p0, p1}, Lcom/wsw/cospa/utils/download/for$do;-><init>(Lcom/wsw/cospa/utils/download/for;Lokio/Source;)V

    return-object v0
.end method

.method public static synthetic if(Lcom/wsw/cospa/utils/download/for;)Lokhttp3/ResponseBody;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/download/for;->do:Lokhttp3/ResponseBody;

    return-object p0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/download/for;->do:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/download/for;->do:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/download/for;->for:Lokio/BufferedSource;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/download/for;->do:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/download/for;->for(Lokio/Source;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/download/for;->for:Lokio/BufferedSource;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/download/for;->for:Lokio/BufferedSource;

    return-object v0
.end method
