.class final Lorg/chromium/net/urlconnection/if;
.super Lorg/chromium/net/urlconnection/else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/urlconnection/if$if;
    }
.end annotation


# instance fields
.field private final case:Ljava/nio/ByteBuffer;

.field private final else:Lorg/chromium/net/public;

.field private goto:Z

.field private final new:Lorg/chromium/net/urlconnection/new;

.field private final try:Lorg/chromium/net/urlconnection/this;


# direct methods
.method public constructor <init>(Lorg/chromium/net/urlconnection/new;ILorg/chromium/net/urlconnection/this;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/else;-><init>()V

    .line 2
    new-instance v0, Lorg/chromium/net/urlconnection/if$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/net/urlconnection/if$if;-><init>(Lorg/chromium/net/urlconnection/if;Lorg/chromium/net/urlconnection/if$do;)V

    iput-object v0, p0, Lorg/chromium/net/urlconnection/if;->else:Lorg/chromium/net/public;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-lez p2, :cond_0

    .line 4
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/net/urlconnection/if;->case:Ljava/nio/ByteBuffer;

    .line 5
    iput-object p1, p0, Lorg/chromium/net/urlconnection/if;->new:Lorg/chromium/net/urlconnection/new;

    .line 6
    iput-object p3, p0, Lorg/chromium/net/urlconnection/if;->try:Lorg/chromium/net/urlconnection/this;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "chunkLength should be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private break()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/urlconnection/if;->case:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/if;->catch()V

    :cond_0
    return-void
.end method

.method private catch()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/chromium/net/urlconnection/else;->if()V

    .line 2
    iget-object v0, p0, Lorg/chromium/net/urlconnection/if;->case:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 3
    iget-object v0, p0, Lorg/chromium/net/urlconnection/if;->try:Lorg/chromium/net/urlconnection/this;

    invoke-virtual {v0}, Lorg/chromium/net/urlconnection/this;->new()V

    .line 4
    invoke-virtual {p0}, Lorg/chromium/net/urlconnection/else;->do()V

    return-void
.end method

.method public static synthetic else(Lorg/chromium/net/urlconnection/if;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/urlconnection/if;->case:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic goto(Lorg/chromium/net/urlconnection/if;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/chromium/net/urlconnection/if;->goto:Z

    return p0
.end method

.method public static synthetic this(Lorg/chromium/net/urlconnection/if;)Lorg/chromium/net/urlconnection/this;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/urlconnection/if;->try:Lorg/chromium/net/urlconnection/this;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lorg/chromium/net/urlconnection/else;->close()V

    .line 2
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/if;->goto:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/chromium/net/urlconnection/if;->goto:Z

    .line 4
    iget-object v0, p0, Lorg/chromium/net/urlconnection/if;->case:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

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
    iget-object v0, p0, Lorg/chromium/net/urlconnection/if;->else:Lorg/chromium/net/public;

    return-object v0
.end method

.method public try()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/if;->break()V

    .line 2
    iget-object v0, p0, Lorg/chromium/net/urlconnection/if;->case:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lorg/chromium/net/urlconnection/else;->if()V

    .line 4
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    move v0, p3

    :goto_0
    if-lez v0, :cond_0

    .line 5
    iget-object v1, p0, Lorg/chromium/net/urlconnection/if;->case:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 6
    iget-object v2, p0, Lorg/chromium/net/urlconnection/if;->case:Ljava/nio/ByteBuffer;

    add-int v3, p2, p3

    sub-int/2addr v3, v0

    invoke-virtual {v2, p1, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v1

    .line 7
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/if;->break()V

    goto :goto_0

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
