.class final Lorg/chromium/net/urlconnection/do;
.super Lorg/chromium/net/urlconnection/else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/urlconnection/do$if;
    }
.end annotation


# static fields
.field private static final this:I = 0x4000


# instance fields
.field private final case:Lorg/chromium/net/public;

.field private else:Ljava/nio/ByteBuffer;

.field private goto:Z

.field private final new:I

.field private final try:Lorg/chromium/net/urlconnection/new;


# direct methods
.method public constructor <init>(Lorg/chromium/net/urlconnection/new;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/else;-><init>()V

    .line 10
    new-instance v0, Lorg/chromium/net/urlconnection/do$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/net/urlconnection/do$if;-><init>(Lorg/chromium/net/urlconnection/do;Lorg/chromium/net/urlconnection/do$do;)V

    iput-object v0, p0, Lorg/chromium/net/urlconnection/do;->case:Lorg/chromium/net/public;

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lorg/chromium/net/urlconnection/do;->try:Lorg/chromium/net/urlconnection/new;

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lorg/chromium/net/urlconnection/do;->new:I

    const/16 p1, 0x4000

    .line 14
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/urlconnection/do;->else:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/net/urlconnection/new;J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/else;-><init>()V

    .line 2
    new-instance v0, Lorg/chromium/net/urlconnection/do$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/net/urlconnection/do$if;-><init>(Lorg/chromium/net/urlconnection/do;Lorg/chromium/net/urlconnection/do$do;)V

    iput-object v0, p0, Lorg/chromium/net/urlconnection/do;->case:Lorg/chromium/net/public;

    const-string v0, "Argument connection cannot be null."

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p2, v0

    if-gtz v2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 4
    iput-object p1, p0, Lorg/chromium/net/urlconnection/do;->try:Lorg/chromium/net/urlconnection/new;

    long-to-int p1, p2

    .line 5
    iput p1, p0, Lorg/chromium/net/urlconnection/do;->new:I

    .line 6
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/urlconnection/do;->else:Ljava/nio/ByteBuffer;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Content length < 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2GB."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private break(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/chromium/net/urlconnection/do;->new:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/chromium/net/urlconnection/do;->else:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    iget v2, p0, Lorg/chromium/net/urlconnection/do;->new:I

    if-gt v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exceeded content-length limit of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/chromium/net/urlconnection/do;->new:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/do;->goto:Z

    if-nez v0, :cond_4

    .line 5
    iget v0, p0, Lorg/chromium/net/urlconnection/do;->new:I

    if-eq v0, v1, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lorg/chromium/net/urlconnection/do;->else:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/net/urlconnection/do;->else:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    if-le v0, p1, :cond_3

    return-void

    .line 7
    :cond_3
    iget-object v0, p0, Lorg/chromium/net/urlconnection/do;->else:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/chromium/net/urlconnection/do;->else:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 8
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lorg/chromium/net/urlconnection/do;->else:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 10
    iget-object v0, p0, Lorg/chromium/net/urlconnection/do;->else:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 11
    iput-object p1, p0, Lorg/chromium/net/urlconnection/do;->else:Ljava/nio/ByteBuffer;

    return-void

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for writing after connect"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic else(Lorg/chromium/net/urlconnection/do;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/chromium/net/urlconnection/do;->new:I

    return p0
.end method

.method public static synthetic goto(Lorg/chromium/net/urlconnection/do;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/chromium/net/urlconnection/do;->goto:Z

    return p0
.end method

.method public static synthetic this(Lorg/chromium/net/urlconnection/do;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/urlconnection/do;->else:Ljava/nio/ByteBuffer;

    return-object p0
.end method


# virtual methods
.method public for()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public new()Lorg/chromium/net/public;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/urlconnection/do;->case:Lorg/chromium/net/public;

    return-object v0
.end method

.method public try()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/chromium/net/urlconnection/do;->goto:Z

    .line 2
    iget-object v0, p0, Lorg/chromium/net/urlconnection/do;->else:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lorg/chromium/net/urlconnection/do;->new:I

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/chromium/net/urlconnection/do;->else:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Content received is less than Content-Length"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/chromium/net/urlconnection/else;->if()V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lorg/chromium/net/urlconnection/do;->break(I)V

    .line 3
    iget-object v0, p0, Lorg/chromium/net/urlconnection/do;->else:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lorg/chromium/net/urlconnection/else;->if()V

    .line 5
    invoke-direct {p0, p3}, Lorg/chromium/net/urlconnection/do;->break(I)V

    .line 6
    iget-object v0, p0, Lorg/chromium/net/urlconnection/do;->else:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method
