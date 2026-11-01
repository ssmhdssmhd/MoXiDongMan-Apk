.class Lorg/chromium/net/urlconnection/case;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field private static final try:I = 0x8000


# instance fields
.field private final do:Lorg/chromium/net/urlconnection/new;

.field private for:Ljava/nio/ByteBuffer;

.field private if:Z

.field private new:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lorg/chromium/net/urlconnection/new;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/net/urlconnection/case;->do:Lorg/chromium/net/urlconnection/new;

    return-void
.end method

.method private do()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/case;->if:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/chromium/net/urlconnection/case;->new:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    throw v0

    .line 4
    :cond_1
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/case;->if()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5
    iget-object v0, p0, Lorg/chromium/net/urlconnection/case;->for:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    const v0, 0x8000

    .line 6
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/urlconnection/case;->for:Ljava/nio/ByteBuffer;

    .line 7
    :cond_2
    iget-object v0, p0, Lorg/chromium/net/urlconnection/case;->for:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 8
    iget-object v0, p0, Lorg/chromium/net/urlconnection/case;->do:Lorg/chromium/net/urlconnection/new;

    iget-object v1, p0, Lorg/chromium/net/urlconnection/case;->for:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lorg/chromium/net/urlconnection/new;->public(Ljava/nio/ByteBuffer;)V

    .line 9
    iget-object v0, p0, Lorg/chromium/net/urlconnection/case;->new:Ljava/io/IOException;

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lorg/chromium/net/urlconnection/case;->for:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0

    .line 12
    :cond_3
    throw v0

    :cond_4
    :goto_0
    return-void
.end method

.method private if()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/urlconnection/case;->for:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/case;->if:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/chromium/net/urlconnection/case;->new:Ljava/io/IOException;

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    throw v0

    .line 4
    :cond_1
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/case;->if()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lorg/chromium/net/urlconnection/case;->for:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public for(Ljava/io/IOException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/urlconnection/case;->new:Ljava/io/IOException;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lorg/chromium/net/urlconnection/case;->if:Z

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lorg/chromium/net/urlconnection/case;->for:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/case;->do()V

    .line 2
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/case;->if()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/chromium/net/urlconnection/case;->for:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 4
    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/case;->do()V

    .line 6
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/case;->if()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lorg/chromium/net/urlconnection/case;->for:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/net/urlconnection/case;->for:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 8
    iget-object v0, p0, Lorg/chromium/net/urlconnection/case;->for:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3

    :cond_1
    const/4 p1, -0x1

    return p1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
