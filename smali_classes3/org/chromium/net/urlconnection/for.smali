.class final Lorg/chromium/net/urlconnection/for;
.super Lorg/chromium/net/urlconnection/else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/urlconnection/for$if;
    }
.end annotation


# static fields
.field private static break:I = 0x4000
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final case:J

.field private final else:Ljava/nio/ByteBuffer;

.field private final goto:Lorg/chromium/net/public;

.field private final new:Lorg/chromium/net/urlconnection/new;

.field private this:J

.field private final try:Lorg/chromium/net/urlconnection/this;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/chromium/net/urlconnection/new;JLorg/chromium/net/urlconnection/this;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/else;-><init>()V

    .line 2
    new-instance v0, Lorg/chromium/net/urlconnection/for$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/net/urlconnection/for$if;-><init>(Lorg/chromium/net/urlconnection/for;Lorg/chromium/net/urlconnection/for$do;)V

    iput-object v0, p0, Lorg/chromium/net/urlconnection/for;->goto:Lorg/chromium/net/public;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 4
    iput-wide p2, p0, Lorg/chromium/net/urlconnection/for;->case:J

    .line 5
    sget v2, Lorg/chromium/net/urlconnection/for;->break:I

    int-to-long v2, v2

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p3, p2

    .line 6
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/net/urlconnection/for;->else:Ljava/nio/ByteBuffer;

    .line 7
    iput-object p1, p0, Lorg/chromium/net/urlconnection/for;->new:Lorg/chromium/net/urlconnection/new;

    .line 8
    iput-object p4, p0, Lorg/chromium/net/urlconnection/for;->try:Lorg/chromium/net/urlconnection/this;

    .line 9
    iput-wide v0, p0, Lorg/chromium/net/urlconnection/for;->this:J

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Content length must be larger than 0 for non-chunked upload."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private break(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lorg/chromium/net/urlconnection/for;->this:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lorg/chromium/net/urlconnection/for;->case:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/chromium/net/urlconnection/for;->case:J

    iget-wide v4, p0, Lorg/chromium/net/urlconnection/for;->this:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private catch()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/urlconnection/for;->else:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/for;->const()V

    :cond_0
    return-void
.end method

.method public static class(I)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sput p0, Lorg/chromium/net/urlconnection/for;->break:I

    return-void
.end method

.method private const()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/chromium/net/urlconnection/else;->if()V

    .line 2
    iget-object v0, p0, Lorg/chromium/net/urlconnection/for;->else:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 3
    iget-object v0, p0, Lorg/chromium/net/urlconnection/for;->try:Lorg/chromium/net/urlconnection/this;

    invoke-virtual {v0}, Lorg/chromium/net/urlconnection/this;->new()V

    .line 4
    invoke-virtual {p0}, Lorg/chromium/net/urlconnection/else;->do()V

    return-void
.end method

.method public static synthetic else(Lorg/chromium/net/urlconnection/for;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/net/urlconnection/for;->case:J

    return-wide v0
.end method

.method private final()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lorg/chromium/net/urlconnection/for;->this:J

    iget-wide v2, p0, Lorg/chromium/net/urlconnection/for;->case:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/for;->const()V

    :cond_0
    return-void
.end method

.method public static synthetic goto(Lorg/chromium/net/urlconnection/for;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/urlconnection/for;->else:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic this(Lorg/chromium/net/urlconnection/for;)Lorg/chromium/net/urlconnection/this;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/urlconnection/for;->try:Lorg/chromium/net/urlconnection/this;

    return-object p0
.end method


# virtual methods
.method public for()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lorg/chromium/net/urlconnection/for;->this:J

    iget-wide v2, p0, Lorg/chromium/net/urlconnection/for;->case:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Content received is less than Content-Length."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public new()Lorg/chromium/net/public;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/urlconnection/for;->goto:Lorg/chromium/net/public;

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/chromium/net/urlconnection/else;->if()V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lorg/chromium/net/urlconnection/for;->break(I)V

    .line 3
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/for;->catch()V

    .line 4
    iget-object v0, p0, Lorg/chromium/net/urlconnection/for;->else:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5
    iget-wide v0, p0, Lorg/chromium/net/urlconnection/for;->this:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/chromium/net/urlconnection/for;->this:J

    .line 6
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/for;->final()V

    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lorg/chromium/net/urlconnection/else;->if()V

    .line 8
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    .line 9
    invoke-direct {p0, p3}, Lorg/chromium/net/urlconnection/for;->break(I)V

    move v0, p3

    :goto_0
    if-lez v0, :cond_0

    .line 10
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/for;->catch()V

    .line 11
    iget-object v1, p0, Lorg/chromium/net/urlconnection/for;->else:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 12
    iget-object v2, p0, Lorg/chromium/net/urlconnection/for;->else:Ljava/nio/ByteBuffer;

    add-int v3, p2, p3

    sub-int/2addr v3, v0

    invoke-virtual {v2, p1, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v1

    goto :goto_0

    .line 13
    :cond_0
    iget-wide p1, p0, Lorg/chromium/net/urlconnection/for;->this:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/chromium/net/urlconnection/for;->this:J

    .line 14
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/for;->final()V

    return-void

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
