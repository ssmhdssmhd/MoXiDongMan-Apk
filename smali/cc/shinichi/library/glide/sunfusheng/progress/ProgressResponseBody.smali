.class public Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;
.super Lokhttp3/ResponseBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$InternalProgressListener;
    }
.end annotation


# static fields
.field private static final try:Landroid/os/Handler;


# instance fields
.field private do:Ljava/lang/String;

.field private for:Lokhttp3/ResponseBody;

.field private if:Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$InternalProgressListener;

.field private new:Lokio/BufferedSource;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;->try:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$InternalProgressListener;Lokhttp3/ResponseBody;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 2
    iput-object p1, p0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;->do:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;->if:Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$InternalProgressListener;

    .line 4
    iput-object p3, p0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;->for:Lokhttp3/ResponseBody;

    return-void
.end method

.method public static synthetic do(Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;)Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$InternalProgressListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;->if:Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$InternalProgressListener;

    return-object p0
.end method

.method public static synthetic for()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;->try:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic if(Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;->do:Ljava/lang/String;

    return-object p0
.end method

.method private new(Lokio/Source;)Lokio/Source;
    .locals 1

    .line 1
    new-instance v0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do;

    invoke-direct {v0, p0, p1}, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$do;-><init>(Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;Lokio/Source;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;->for:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;->for:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;->new:Lokio/BufferedSource;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;->for:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;->new(Lokio/Source;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;->new:Lokio/BufferedSource;

    .line 3
    :cond_0
    iget-object v0, p0, Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody;->new:Lokio/BufferedSource;

    return-object v0
.end method
