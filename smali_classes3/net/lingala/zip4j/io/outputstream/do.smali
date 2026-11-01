.class Lnet/lingala/zip4j/io/outputstream/do;
.super Lnet/lingala/zip4j/io/outputstream/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/io/outputstream/if<",
        "Lnet/lingala/zip4j/crypto/if;",
        ">;"
    }
.end annotation


# instance fields
.field private for:[B

.field private new:I


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

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 2
    iput-object p1, p0, Lnet/lingala/zip4j/io/outputstream/do;->for:[B

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lnet/lingala/zip4j/io/outputstream/do;->new:I

    return-void
.end method

.method private else(Lnet/lingala/zip4j/crypto/if;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/crypto/if;->try()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/outputstream/if;->try([B)V

    .line 2
    invoke-virtual {p1}, Lnet/lingala/zip4j/crypto/if;->for()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/io/outputstream/if;->try([B)V

    return-void
.end method


# virtual methods
.method public case(Ljava/io/OutputStream;Landroid/support/v4/sk2;[C)Lnet/lingala/zip4j/crypto/if;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    new-instance p1, Lnet/lingala/zip4j/crypto/if;

    invoke-virtual {p2}, Landroid/support/v4/sk2;->do()Landroid/support/v4/w0;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lnet/lingala/zip4j/crypto/if;-><init>([CLandroid/support/v4/w0;)V

    .line 2
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/outputstream/do;->else(Lnet/lingala/zip4j/crypto/if;)V

    return-object p1
.end method

.method public do()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/io/outputstream/do;->new:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/do;->for:[B

    const/4 v2, 0x0

    invoke-super {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/outputstream/if;->write([BII)V

    .line 3
    iput v2, p0, Lnet/lingala/zip4j/io/outputstream/do;->new:I

    .line 4
    :cond_0
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/outputstream/if;->if()Lnet/lingala/zip4j/crypto/Encrypter;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/crypto/if;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/if;->new()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/outputstream/if;->try([B)V

    .line 5
    invoke-super {p0}, Lnet/lingala/zip4j/io/outputstream/if;->do()V

    return-void
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
    invoke-virtual {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/outputstream/do;->case(Ljava/io/OutputStream;Landroid/support/v4/sk2;[C)Lnet/lingala/zip4j/crypto/if;

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
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/outputstream/do;->write([B)V

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

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/outputstream/do;->write([BII)V

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
    iget v0, p0, Lnet/lingala/zip4j/io/outputstream/do;->new:I

    rsub-int/lit8 v1, v0, 0x10

    if-lt p3, v1, :cond_1

    .line 4
    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/do;->for:[B

    rsub-int/lit8 v2, v0, 0x10

    invoke-static {p1, p2, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object p2, p0, Lnet/lingala/zip4j/io/outputstream/do;->for:[B

    array-length v0, p2

    const/4 v1, 0x0

    invoke-super {p0, p2, v1, v0}, Lnet/lingala/zip4j/io/outputstream/if;->write([BII)V

    .line 6
    iget p2, p0, Lnet/lingala/zip4j/io/outputstream/do;->new:I

    rsub-int/lit8 p2, p2, 0x10

    sub-int/2addr p3, p2

    .line 7
    iput v1, p0, Lnet/lingala/zip4j/io/outputstream/do;->new:I

    if-eqz p3, :cond_0

    .line 8
    rem-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_0

    add-int v2, p3, p2

    sub-int/2addr v2, v0

    .line 9
    iget-object v3, p0, Lnet/lingala/zip4j/io/outputstream/do;->for:[B

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iput v0, p0, Lnet/lingala/zip4j/io/outputstream/do;->new:I

    sub-int/2addr p3, v0

    .line 11
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/outputstream/if;->write([BII)V

    return-void

    .line 12
    :cond_1
    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/do;->for:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget p1, p0, Lnet/lingala/zip4j/io/outputstream/do;->new:I

    add-int/2addr p1, p3

    iput p1, p0, Lnet/lingala/zip4j/io/outputstream/do;->new:I

    return-void
.end method
