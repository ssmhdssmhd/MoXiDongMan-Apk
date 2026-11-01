.class Lnet/lingala/zip4j/io/inputstream/goto;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private do:Ljava/io/InputStream;

.field private for:[B

.field private if:J

.field private new:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lnet/lingala/zip4j/io/inputstream/goto;->if:J

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/goto;->for:[B

    .line 4
    iput-object p1, p0, Lnet/lingala/zip4j/io/inputstream/goto;->do:Ljava/io/InputStream;

    .line 5
    iput-wide p2, p0, Lnet/lingala/zip4j/io/inputstream/goto;->new:J

    return-void
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
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/goto;->do:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public do()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/io/inputstream/goto;->if:J

    return-wide v0
.end method

.method public if([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/goto;->do:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/goto;->for:[B

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/goto;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/goto;->for:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/inputstream/goto;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-wide v0, p0, Lnet/lingala/zip4j/io/inputstream/goto;->new:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 5
    iget-wide v2, p0, Lnet/lingala/zip4j/io/inputstream/goto;->if:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    int-to-long v4, p3

    sub-long v6, v0, v2

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    sub-long/2addr v0, v2

    long-to-int p3, v0

    .line 6
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/goto;->do:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_2

    .line 7
    iget-wide p2, p0, Lnet/lingala/zip4j/io/inputstream/goto;->if:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lnet/lingala/zip4j/io/inputstream/goto;->if:J

    :cond_2
    return p1
.end method
