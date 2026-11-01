.class abstract Lnet/lingala/zip4j/io/inputstream/if;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/lingala/zip4j/crypto/Decrypter;",
        ">",
        "Ljava/io/InputStream;"
    }
.end annotation


# instance fields
.field private do:Lnet/lingala/zip4j/io/inputstream/goto;

.field private for:[B

.field private if:Lnet/lingala/zip4j/crypto/Decrypter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private new:[B

.field private try:Landroid/support/v4/mu0;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/inputstream/goto;Landroid/support/v4/mu0;[C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/if;->new:[B

    .line 3
    iput-object p1, p0, Lnet/lingala/zip4j/io/inputstream/if;->do:Lnet/lingala/zip4j/io/inputstream/goto;

    .line 4
    invoke-virtual {p0, p2, p3}, Lnet/lingala/zip4j/io/inputstream/if;->goto(Landroid/support/v4/mu0;[C)Lnet/lingala/zip4j/crypto/Decrypter;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/io/inputstream/if;->if:Lnet/lingala/zip4j/crypto/Decrypter;

    .line 5
    iput-object p2, p0, Lnet/lingala/zip4j/io/inputstream/if;->try:Landroid/support/v4/mu0;

    .line 6
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/io/inputstream/if;->for(Landroid/support/v4/mu0;)Landroid/support/v4/hq;

    move-result-object p1

    sget-object p2, Landroid/support/v4/hq;->DEFLATE:Landroid/support/v4/hq;

    if-ne p1, p2, :cond_0

    const/16 p1, 0x200

    new-array p1, p1, [B

    .line 7
    iput-object p1, p0, Lnet/lingala/zip4j/io/inputstream/if;->for:[B

    :cond_0
    return-void
.end method

.method private do([BI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/if;->for:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method private for(Landroid/support/v4/mu0;)Landroid/support/v4/hq;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/transient;->try()Landroid/support/v4/hq;

    move-result-object v0

    sget-object v1, Landroid/support/v4/hq;->AES_INTERNAL_ONLY:Landroid/support/v4/hq;

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/transient;->try()Landroid/support/v4/hq;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/transient;->for()Landroid/support/v4/goto;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/support/v4/transient;->for()Landroid/support/v4/goto;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/goto;->try()Landroid/support/v4/hq;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "AesExtraDataRecord not present in localheader for aes encrypted data"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public case()Landroid/support/v4/mu0;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/if;->try:Landroid/support/v4/mu0;

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/if;->do:Lnet/lingala/zip4j/io/inputstream/goto;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/inputstream/goto;->close()V

    return-void
.end method

.method public else()J
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/if;->do:Lnet/lingala/zip4j/io/inputstream/goto;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/inputstream/goto;->do()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract goto(Landroid/support/v4/mu0;[C)Lnet/lingala/zip4j/crypto/Decrypter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/mu0;",
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

.method public if(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public new()Lnet/lingala/zip4j/crypto/Decrypter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/if;->if:Lnet/lingala/zip4j/crypto/Decrypter;

    return-object v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/if;->new:[B

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/if;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/if;->new:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

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

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/inputstream/if;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/if;->do:Lnet/lingala/zip4j/io/inputstream/goto;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lingala/zip4j/io/inputstream/goto;->read([BII)I

    move-result p3

    if-lez p3, :cond_0

    .line 5
    invoke-direct {p0, p1, p3}, Lnet/lingala/zip4j/io/inputstream/if;->do([BI)V

    .line 6
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/if;->if:Lnet/lingala/zip4j/crypto/Decrypter;

    invoke-interface {v0, p1, p2, p3}, Lnet/lingala/zip4j/crypto/Decrypter;->decryptData([BII)I

    :cond_0
    return p3
.end method

.method public this([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/if;->do:Lnet/lingala/zip4j/io/inputstream/goto;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/io/inputstream/goto;->if([B)I

    move-result p1

    return p1
.end method

.method public try()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/if;->for:[B

    return-object v0
.end method
