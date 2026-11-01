.class public Landroid/support/v4/us;
.super Lokhttp3/ResponseBody;
.source "SourceFile"


# instance fields
.field private do:Lokhttp3/MediaType;

.field private for:Ljava/io/InputStream;

.field private if:J

.field private new:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Lorg/chromium/net/urlconnection/new;Lokhttp3/MediaType;JLjava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 2
    iput-object p2, p0, Landroid/support/v4/us;->do:Lokhttp3/MediaType;

    .line 3
    iput-wide p3, p0, Landroid/support/v4/us;->if:J

    .line 4
    iput-object p5, p0, Landroid/support/v4/us;->for:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1
    invoke-super {p0}, Lokhttp3/ResponseBody;->close()V

    return-void
.end method

.method public contentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/us;->if:J

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/us;->do:Lokhttp3/MediaType;

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/us;->for:Ljava/io/InputStream;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method
