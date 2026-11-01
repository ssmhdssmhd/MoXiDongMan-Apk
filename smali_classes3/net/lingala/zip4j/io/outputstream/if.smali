.class abstract Lnet/lingala/zip4j/io/outputstream/if;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/lingala/zip4j/crypto/Encrypter;",
        ">",
        "Ljava/io/OutputStream;"
    }
.end annotation


# instance fields
.field private do:Lnet/lingala/zip4j/io/outputstream/this;

.field private if:Lnet/lingala/zip4j/crypto/Encrypter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


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
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    iput-object p1, p0, Lnet/lingala/zip4j/io/outputstream/if;->do:Lnet/lingala/zip4j/io/outputstream/this;

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/outputstream/if;->new(Ljava/io/OutputStream;Landroid/support/v4/sk2;[C)Lnet/lingala/zip4j/crypto/Encrypter;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/io/outputstream/if;->if:Lnet/lingala/zip4j/crypto/Encrypter;

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
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/if;->do:Lnet/lingala/zip4j/io/outputstream/this;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/this;->close()V

    return-void
.end method

.method public do()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/if;->do:Lnet/lingala/zip4j/io/outputstream/this;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/this;->do()V

    return-void
.end method

.method public for()J
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/if;->do:Lnet/lingala/zip4j/io/outputstream/this;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/this;->if()J

    move-result-wide v0

    return-wide v0
.end method

.method public if()Lnet/lingala/zip4j/crypto/Encrypter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/if;->if:Lnet/lingala/zip4j/crypto/Encrypter;

    return-object v0
.end method

.method public abstract new(Ljava/io/OutputStream;Landroid/support/v4/sk2;[C)Lnet/lingala/zip4j/crypto/Encrypter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Landroid/support/v4/sk2;",
            "[C)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/rj2;
        }
    .end annotation
.end method

.method public try([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/if;->do:Lnet/lingala/zip4j/io/outputstream/this;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/io/outputstream/this;->write([B)V

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
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/if;->do:Lnet/lingala/zip4j/io/outputstream/this;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/io/outputstream/this;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/if;->do:Lnet/lingala/zip4j/io/outputstream/this;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/io/outputstream/this;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/if;->if:Lnet/lingala/zip4j/crypto/Encrypter;

    invoke-interface {v0, p1, p2, p3}, Lnet/lingala/zip4j/crypto/Encrypter;->encryptData([BII)I

    .line 4
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/if;->do:Lnet/lingala/zip4j/io/outputstream/this;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lingala/zip4j/io/outputstream/this;->write([BII)V

    return-void
.end method
