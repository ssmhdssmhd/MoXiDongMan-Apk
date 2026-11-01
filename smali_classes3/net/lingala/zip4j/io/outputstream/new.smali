.class public Lnet/lingala/zip4j/io/outputstream/new;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private do:Ljava/io/OutputStream;

.field private if:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/new;->if:J

    .line 3
    iput-object p1, p0, Lnet/lingala/zip4j/io/outputstream/new;->do:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public case()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/outputstream/new;->else()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/new;->do:Ljava/io/OutputStream;

    check-cast v0, Lnet/lingala/zip4j/io/outputstream/else;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/else;->new()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/new;->do:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public do(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/outputstream/new;->else()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/new;->do:Ljava/io/OutputStream;

    check-cast v0, Lnet/lingala/zip4j/io/outputstream/else;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/io/outputstream/else;->do(I)Z

    move-result p1

    return p1
.end method

.method public else()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/new;->do:Ljava/io/OutputStream;

    instance-of v1, v0, Lnet/lingala/zip4j/io/outputstream/else;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/lingala/zip4j/io/outputstream/else;

    .line 2
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/else;->else()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public for()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/new;->do:Ljava/io/OutputStream;

    instance-of v1, v0, Lnet/lingala/zip4j/io/outputstream/else;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lnet/lingala/zip4j/io/outputstream/else;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/else;->for()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    iget-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/new;->if:J

    return-wide v0
.end method

.method public if()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/outputstream/new;->else()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/new;->do:Ljava/io/OutputStream;

    check-cast v0, Lnet/lingala/zip4j/io/outputstream/else;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/else;->if()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public new()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/new;->do:Ljava/io/OutputStream;

    instance-of v1, v0, Lnet/lingala/zip4j/io/outputstream/else;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lnet/lingala/zip4j/io/outputstream/else;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/else;->for()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    iget-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/new;->if:J

    return-wide v0
.end method

.method public try()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/new;->do:Ljava/io/OutputStream;

    instance-of v1, v0, Lnet/lingala/zip4j/io/outputstream/else;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lnet/lingala/zip4j/io/outputstream/else;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/else;->for()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    iget-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/new;->if:J

    return-wide v0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 1
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/outputstream/new;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/outputstream/new;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/new;->do:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    iget-wide p1, p0, Lnet/lingala/zip4j/io/outputstream/new;->if:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lnet/lingala/zip4j/io/outputstream/new;->if:J

    return-void
.end method
