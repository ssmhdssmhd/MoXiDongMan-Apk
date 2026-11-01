.class Lnet/lingala/zip4j/io/outputstream/catch;
.super Lnet/lingala/zip4j/io/outputstream/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/io/outputstream/if<",
        "Lnet/lingala/zip4j/crypto/new;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/outputstream/this;Landroid/support/v4/sk2;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/outputstream/if;-><init>(Lnet/lingala/zip4j/io/outputstream/this;Landroid/support/v4/sk2;[C)V

    return-void
.end method

.method private case(Landroid/support/v4/sk2;)J
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/sk2;->throw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/sk2;->break()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/support/v4/mj2;->case(J)J

    move-result-wide v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    const/16 p1, 0x10

    shl-long/2addr v0, p1

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/sk2;->else()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public else(Ljava/io/OutputStream;Landroid/support/v4/sk2;[C)Lnet/lingala/zip4j/crypto/new;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/io/outputstream/catch;->case(Landroid/support/v4/sk2;)J

    move-result-wide p1

    .line 2
    new-instance v0, Lnet/lingala/zip4j/crypto/new;

    invoke-direct {v0, p3, p1, p2}, Lnet/lingala/zip4j/crypto/new;-><init>([CJ)V

    .line 3
    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/new;->for()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/io/outputstream/if;->try([B)V

    return-object v0
.end method

.method public bridge synthetic new(Ljava/io/OutputStream;Landroid/support/v4/sk2;[C)Lnet/lingala/zip4j/crypto/Encrypter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/outputstream/catch;->else(Ljava/io/OutputStream;Landroid/support/v4/sk2;[C)Lnet/lingala/zip4j/crypto/new;

    move-result-object p1

    return-object p1
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
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/outputstream/catch;->write([B)V

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

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/outputstream/catch;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/outputstream/if;->write([BII)V

    return-void
.end method
