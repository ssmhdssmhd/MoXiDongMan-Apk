.class public Lnet/lingala/zip4j/io/inputstream/this;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private case:Ljava/util/zip/CRC32;

.field private do:Ljava/io/PushbackInputStream;

.field private else:Z

.field private for:Landroid/support/v4/dj0;

.field private goto:[B

.field private if:Lnet/lingala/zip4j/io/inputstream/for;

.field private new:[C

.field private try:Landroid/support/v4/mu0;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/io/inputstream/this;-><init>(Ljava/io/InputStream;[C)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[C)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 3
    new-instance v0, Landroid/support/v4/dj0;

    invoke-direct {v0}, Landroid/support/v4/dj0;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->for:Landroid/support/v4/dj0;

    .line 4
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->case:Ljava/util/zip/CRC32;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->else:Z

    .line 6
    new-instance v0, Ljava/io/PushbackInputStream;

    const/16 v1, 0x200

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->do:Ljava/io/PushbackInputStream;

    .line 7
    iput-object p2, p0, Lnet/lingala/zip4j/io/inputstream/this;->new:[C

    return-void
.end method

.method private break(Landroid/support/v4/mu0;)Lnet/lingala/zip4j/io/inputstream/for;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/lingala/zip4j/io/inputstream/goto;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/this;->do:Ljava/io/PushbackInputStream;

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/inputstream/this;->new(Landroid/support/v4/mu0;)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lnet/lingala/zip4j/io/inputstream/goto;-><init>(Ljava/io/InputStream;J)V

    .line 2
    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/io/inputstream/this;->goto(Lnet/lingala/zip4j/io/inputstream/goto;Landroid/support/v4/mu0;)Lnet/lingala/zip4j/io/inputstream/if;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/io/inputstream/this;->this(Lnet/lingala/zip4j/io/inputstream/if;Landroid/support/v4/mu0;)Lnet/lingala/zip4j/io/inputstream/for;

    move-result-object p1

    return-object p1
.end method

.method private catch(Landroid/support/v4/mu0;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/transient;->public()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/v4/t70;->ZIP_STANDARD:Landroid/support/v4/t70;

    invoke-virtual {p1}, Landroid/support/v4/transient;->goto()Landroid/support/v4/t70;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private class(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "/"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private const(Landroid/support/v4/mu0;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/transient;->const()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    aget-byte p1, p1, v0

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/support/v4/b9;->do(BI)Z

    move-result p1

    return p1
.end method

.method private do(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/aa0;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/aa0;

    .line 2
    invoke-virtual {v1}, Landroid/support/v4/aa0;->new()J

    move-result-wide v1

    sget-object v3, Landroid/support/v4/ej0;->ZIP64_EXTRA_FIELD_SIGNATURE:Landroid/support/v4/ej0;

    invoke-virtual {v3}, Landroid/support/v4/ej0;->getValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method private final()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->try:Landroid/support/v4/mu0;

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/inputstream/this;->const(Landroid/support/v4/mu0;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->for:Landroid/support/v4/dj0;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/this;->do:Ljava/io/PushbackInputStream;

    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/this;->try:Landroid/support/v4/mu0;

    .line 3
    invoke-virtual {v2}, Landroid/support/v4/transient;->this()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/lingala/zip4j/io/inputstream/this;->do(Ljava/util/List;)Z

    move-result v2

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/dj0;->this(Ljava/io/InputStream;Z)Landroid/support/v4/rw;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/this;->try:Landroid/support/v4/mu0;

    invoke-virtual {v0}, Landroid/support/v4/rw;->for()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/transient;->switch(J)V

    .line 6
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/this;->try:Landroid/support/v4/mu0;

    invoke-virtual {v0}, Landroid/support/v4/rw;->try()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/transient;->instanceof(J)V

    .line 7
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/this;->try:Landroid/support/v4/mu0;

    invoke-virtual {v0}, Landroid/support/v4/rw;->new()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/transient;->default(J)V

    return-void
.end method

.method private goto(Lnet/lingala/zip4j/io/inputstream/goto;Landroid/support/v4/mu0;)Lnet/lingala/zip4j/io/inputstream/if;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/support/v4/transient;->public()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lnet/lingala/zip4j/io/inputstream/try;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/this;->new:[C

    invoke-direct {v0, p1, p2, v1}, Lnet/lingala/zip4j/io/inputstream/try;-><init>(Lnet/lingala/zip4j/io/inputstream/goto;Landroid/support/v4/mu0;[C)V

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/transient;->goto()Landroid/support/v4/t70;

    move-result-object v0

    sget-object v1, Landroid/support/v4/t70;->AES:Landroid/support/v4/t70;

    if-ne v0, v1, :cond_1

    .line 4
    new-instance v0, Lnet/lingala/zip4j/io/inputstream/do;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/this;->new:[C

    invoke-direct {v0, p1, p2, v1}, Lnet/lingala/zip4j/io/inputstream/do;-><init>(Lnet/lingala/zip4j/io/inputstream/goto;Landroid/support/v4/mu0;[C)V

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/io/inputstream/break;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/this;->new:[C

    invoke-direct {v0, p1, p2, v1}, Lnet/lingala/zip4j/io/inputstream/break;-><init>(Lnet/lingala/zip4j/io/inputstream/goto;Landroid/support/v4/mu0;[C)V

    return-object v0
.end method

.method private if()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->if:Lnet/lingala/zip4j/io/inputstream/for;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/this;->do:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/inputstream/for;->for(Ljava/io/PushbackInputStream;)V

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->if:Lnet/lingala/zip4j/io/inputstream/for;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/this;->do:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/inputstream/for;->do(Ljava/io/InputStream;)V

    .line 3
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/this;->final()V

    .line 4
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/this;->while()V

    .line 5
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/this;->throw()V

    return-void
.end method

.method private import(Landroid/support/v4/mu0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/transient;->catch()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/inputstream/this;->class(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/transient;->try()Landroid/support/v4/hq;

    move-result-object v0

    sget-object v1, Landroid/support/v4/hq;->STORE:Landroid/support/v4/hq;

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/transient;->super()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid local file header for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/transient;->catch()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Uncompressed size has to be set for entry of compression type store which is not a directory"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private new(Landroid/support/v4/mu0;)J
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/support/v4/mj2;->new(Landroid/support/v4/mu0;)Landroid/support/v4/hq;

    move-result-object v0

    sget-object v1, Landroid/support/v4/hq;->STORE:Landroid/support/v4/hq;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/transient;->super()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/transient;->import()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    return-wide v0

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/transient;->new()J

    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Landroid/support/v4/transient;->while()Landroid/support/v4/pj2;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/support/v4/transient;->while()Landroid/support/v4/pj2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/pj2;->for()J

    move-result-wide v0

    .line 7
    :cond_2
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/inputstream/this;->try(Landroid/support/v4/mu0;)I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private super()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->goto:[B

    if-nez v0, :cond_0

    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->goto:[B

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->goto:[B

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/this;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private this(Lnet/lingala/zip4j/io/inputstream/if;Landroid/support/v4/mu0;)Lnet/lingala/zip4j/io/inputstream/for;
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/support/v4/mj2;->new(Landroid/support/v4/mu0;)Landroid/support/v4/hq;

    move-result-object p2

    .line 2
    sget-object v0, Landroid/support/v4/hq;->DEFLATE:Landroid/support/v4/hq;

    if-ne p2, v0, :cond_0

    .line 3
    new-instance p2, Lnet/lingala/zip4j/io/inputstream/new;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/io/inputstream/new;-><init>(Lnet/lingala/zip4j/io/inputstream/if;)V

    return-object p2

    .line 4
    :cond_0
    new-instance p2, Lnet/lingala/zip4j/io/inputstream/else;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/io/inputstream/else;-><init>(Lnet/lingala/zip4j/io/inputstream/if;)V

    return-object p2
.end method

.method private throw()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->try:Landroid/support/v4/mu0;

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->case:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    return-void
.end method

.method private try(Landroid/support/v4/mu0;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/transient;->public()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/transient;->goto()Landroid/support/v4/t70;

    move-result-object v0

    sget-object v2, Landroid/support/v4/t70;->AES:Landroid/support/v4/t70;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0xc

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/transient;->for()Landroid/support/v4/goto;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/goto;->for()Landroid/support/v4/w0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/w0;->getSaltLength()I

    move-result p1

    add-int/2addr p1, v2

    return p1

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/transient;->goto()Landroid/support/v4/t70;

    move-result-object p1

    sget-object v0, Landroid/support/v4/t70;->ZIP_STANDARD:Landroid/support/v4/t70;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private while()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->try:Landroid/support/v4/mu0;

    invoke-virtual {v0}, Landroid/support/v4/transient;->goto()Landroid/support/v4/t70;

    move-result-object v0

    sget-object v1, Landroid/support/v4/t70;->AES:Landroid/support/v4/t70;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->try:Landroid/support/v4/mu0;

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/transient;->for()Landroid/support/v4/goto;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/goto;->new()Landroid/support/v4/x0;

    move-result-object v0

    sget-object v1, Landroid/support/v4/x0;->TWO:Landroid/support/v4/x0;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->try:Landroid/support/v4/mu0;

    invoke-virtual {v0}, Landroid/support/v4/transient;->case()J

    move-result-wide v0

    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/this;->case:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 4
    sget-object v0, Landroid/support/v4/rj2$do;->UNKNOWN:Landroid/support/v4/rj2$do;

    .line 5
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/this;->try:Landroid/support/v4/mu0;

    invoke-direct {p0, v1}, Lnet/lingala/zip4j/io/inputstream/this;->catch(Landroid/support/v4/mu0;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    sget-object v0, Landroid/support/v4/rj2$do;->WRONG_PASSWORD:Landroid/support/v4/rj2$do;

    .line 7
    :cond_1
    new-instance v1, Landroid/support/v4/rj2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reached end of entry, but crc verification failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/lingala/zip4j/io/inputstream/this;->try:Landroid/support/v4/mu0;

    invoke-virtual {v3}, Landroid/support/v4/transient;->catch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;Landroid/support/v4/rj2$do;)V

    throw v1

    :cond_2
    return-void
.end method


# virtual methods
.method public case()Landroid/support/v4/mu0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/this;->else(Landroid/support/v4/oa0;)Landroid/support/v4/mu0;

    move-result-object v0

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
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->if:Lnet/lingala/zip4j/io/inputstream/for;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/inputstream/for;->close()V

    :cond_0
    return-void
.end method

.method public else(Landroid/support/v4/oa0;)Landroid/support/v4/mu0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->try:Landroid/support/v4/mu0;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/this;->super()V

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->for:Landroid/support/v4/dj0;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/this;->do:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v1}, Landroid/support/v4/dj0;->super(Ljava/io/InputStream;)Landroid/support/v4/mu0;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->try:Landroid/support/v4/mu0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_1
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/inputstream/this;->import(Landroid/support/v4/mu0;)V

    .line 5
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->case:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    if-eqz p1, :cond_2

    .line 6
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->try:Landroid/support/v4/mu0;

    invoke-virtual {p1}, Landroid/support/v4/transient;->case()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/transient;->default(J)V

    .line 7
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->try:Landroid/support/v4/mu0;

    invoke-virtual {p1}, Landroid/support/v4/transient;->new()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/transient;->switch(J)V

    .line 8
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->try:Landroid/support/v4/mu0;

    invoke-virtual {p1}, Landroid/support/v4/transient;->super()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/transient;->instanceof(J)V

    .line 9
    :cond_2
    iget-object p1, p0, Lnet/lingala/zip4j/io/inputstream/this;->try:Landroid/support/v4/mu0;

    invoke-virtual {p1}, Landroid/support/v4/transient;->catch()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/db0;->throw(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Lnet/lingala/zip4j/io/inputstream/this;->try:Landroid/support/v4/mu0;

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/inputstream/this;->break(Landroid/support/v4/mu0;)Lnet/lingala/zip4j/io/inputstream/for;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/io/inputstream/this;->if:Lnet/lingala/zip4j/io/inputstream/for;

    :cond_3
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lnet/lingala/zip4j/io/inputstream/this;->else:Z

    .line 12
    iget-object p1, p0, Lnet/lingala/zip4j/io/inputstream/this;->try:Landroid/support/v4/mu0;

    return-object p1
.end method

.method public for()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->do:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->available()I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 1
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/this;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 2
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

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/inputstream/this;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p3, :cond_6

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->try:Landroid/support/v4/mu0;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/transient;->native()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-boolean p1, p0, Lnet/lingala/zip4j/io/inputstream/this;->else:Z

    if-nez p1, :cond_2

    .line 7
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/this;->final()V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lnet/lingala/zip4j/io/inputstream/this;->else:Z

    :cond_2
    return v1

    .line 9
    :cond_3
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->if:Lnet/lingala/zip4j/io/inputstream/for;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lingala/zip4j/io/inputstream/for;->read([BII)I

    move-result p3

    if-ne p3, v1, :cond_4

    .line 10
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/this;->if()V

    goto :goto_0

    .line 11
    :cond_4
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/this;->case:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p3

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/util/zip/DataFormatException;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lnet/lingala/zip4j/io/inputstream/this;->try:Landroid/support/v4/mu0;

    .line 13
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/io/inputstream/this;->catch(Landroid/support/v4/mu0;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 14
    new-instance p2, Landroid/support/v4/rj2;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v0, Landroid/support/v4/rj2$do;->WRONG_PASSWORD:Landroid/support/v4/rj2$do;

    invoke-direct {p2, p3, p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Landroid/support/v4/rj2$do;)V

    throw p2

    .line 15
    :cond_5
    throw p1

    .line 16
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative read length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
