.class public Lnet/lingala/zip4j/io/outputstream/break;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private break:Landroid/support/v4/jl1;

.field private case:Landroid/support/v4/mu0;

.field private catch:J

.field private do:Lnet/lingala/zip4j/io/outputstream/new;

.field private else:Landroid/support/v4/pa0;

.field private for:Landroid/support/v4/rk2;

.field private goto:Landroid/support/v4/gj0;

.field private if:[C

.field private new:Lnet/lingala/zip4j/io/outputstream/for;

.field private this:Ljava/util/zip/CRC32;

.field private try:Landroid/support/v4/oa0;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/io/outputstream/break;-><init>(Ljava/io/OutputStream;[C)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Landroid/support/v4/rk2;

    invoke-direct {v0}, Landroid/support/v4/rk2;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lnet/lingala/zip4j/io/outputstream/break;-><init>(Ljava/io/OutputStream;[CLandroid/support/v4/rk2;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[CLandroid/support/v4/rk2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 4
    new-instance v0, Landroid/support/v4/pa0;

    invoke-direct {v0}, Landroid/support/v4/pa0;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->else:Landroid/support/v4/pa0;

    .line 5
    new-instance v0, Landroid/support/v4/gj0;

    invoke-direct {v0}, Landroid/support/v4/gj0;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->goto:Landroid/support/v4/gj0;

    .line 6
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->this:Ljava/util/zip/CRC32;

    .line 7
    new-instance v0, Landroid/support/v4/jl1;

    invoke-direct {v0}, Landroid/support/v4/jl1;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->break:Landroid/support/v4/jl1;

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->catch:J

    .line 9
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/new;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/io/outputstream/new;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->do:Lnet/lingala/zip4j/io/outputstream/new;

    .line 10
    iput-object p2, p0, Lnet/lingala/zip4j/io/outputstream/break;->if:[C

    .line 11
    invoke-direct {p0, p3, v0}, Lnet/lingala/zip4j/io/outputstream/break;->case(Landroid/support/v4/rk2;Lnet/lingala/zip4j/io/outputstream/new;)Landroid/support/v4/rk2;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/io/outputstream/break;->for:Landroid/support/v4/rk2;

    .line 12
    invoke-direct {p0}, Lnet/lingala/zip4j/io/outputstream/break;->class()V

    return-void
.end method

.method private break(Landroid/support/v4/sk2;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/sk2;->new()Landroid/support/v4/hq;

    move-result-object v0

    sget-object v1, Landroid/support/v4/hq;->STORE:Landroid/support/v4/hq;

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/sk2;->goto()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/sk2;->this()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/outputstream/break;->else(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/support/v4/sk2;->throw()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "uncompressed size should be set for zip entries of compression type store"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private case(Landroid/support/v4/rk2;Lnet/lingala/zip4j/io/outputstream/new;)Landroid/support/v4/rk2;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/support/v4/rk2;

    invoke-direct {p1}, Landroid/support/v4/rk2;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p2}, Lnet/lingala/zip4j/io/outputstream/new;->else()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/support/v4/rk2;->static(Z)V

    .line 4
    invoke-virtual {p2}, Lnet/lingala/zip4j/io/outputstream/new;->case()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/rk2;->switch(J)V

    :cond_1
    return-object p1
.end method

.method private catch(Landroid/support/v4/oa0;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/transient;->public()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/transient;->goto()Landroid/support/v4/t70;

    move-result-object v0

    sget-object v2, Landroid/support/v4/t70;->AES:Landroid/support/v4/t70;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v1

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/transient;->for()Landroid/support/v4/goto;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/goto;->new()Landroid/support/v4/x0;

    move-result-object p1

    sget-object v0, Landroid/support/v4/x0;->ONE:Landroid/support/v4/x0;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private class()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->do:Lnet/lingala/zip4j/io/outputstream/new;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/new;->else()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->break:Landroid/support/v4/jl1;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/break;->do:Lnet/lingala/zip4j/io/outputstream/new;

    sget-object v2, Landroid/support/v4/ej0;->SPLIT_ZIP:Landroid/support/v4/ej0;

    invoke-virtual {v2}, Landroid/support/v4/ej0;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/jl1;->super(Ljava/io/OutputStream;I)V

    return-void
.end method

.method private else(Ljava/lang/String;)Z
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

.method private for(Lnet/lingala/zip4j/io/outputstream/this;Landroid/support/v4/sk2;)Lnet/lingala/zip4j/io/outputstream/if;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/support/v4/sk2;->catch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/case;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lnet/lingala/zip4j/io/outputstream/case;-><init>(Lnet/lingala/zip4j/io/outputstream/this;Landroid/support/v4/sk2;[C)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->if:[C

    if-eqz v0, :cond_3

    array-length v0, v0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p2}, Landroid/support/v4/sk2;->case()Landroid/support/v4/t70;

    move-result-object v0

    sget-object v1, Landroid/support/v4/t70;->AES:Landroid/support/v4/t70;

    if-ne v0, v1, :cond_1

    .line 5
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/do;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/break;->if:[C

    invoke-direct {v0, p1, p2, v1}, Lnet/lingala/zip4j/io/outputstream/do;-><init>(Lnet/lingala/zip4j/io/outputstream/this;Landroid/support/v4/sk2;[C)V

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {p2}, Landroid/support/v4/sk2;->case()Landroid/support/v4/t70;

    move-result-object v0

    sget-object v1, Landroid/support/v4/t70;->ZIP_STANDARD:Landroid/support/v4/t70;

    if-ne v0, v1, :cond_2

    .line 7
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/catch;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/break;->if:[C

    invoke-direct {v0, p1, p2, v1}, Lnet/lingala/zip4j/io/outputstream/catch;-><init>(Lnet/lingala/zip4j/io/outputstream/this;Landroid/support/v4/sk2;[C)V

    return-object v0

    .line 8
    :cond_2
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "Invalid encryption method"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "password not set"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private if(Landroid/support/v4/sk2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->else:Landroid/support/v4/pa0;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/break;->do:Lnet/lingala/zip4j/io/outputstream/new;

    invoke-virtual {v1}, Lnet/lingala/zip4j/io/outputstream/new;->else()Z

    move-result v1

    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/break;->do:Lnet/lingala/zip4j/io/outputstream/new;

    .line 2
    invoke-virtual {v2}, Lnet/lingala/zip4j/io/outputstream/new;->if()I

    move-result v2

    .line 3
    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/pa0;->new(Landroid/support/v4/sk2;ZI)Landroid/support/v4/oa0;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/io/outputstream/break;->try:Landroid/support/v4/oa0;

    .line 4
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->do:Lnet/lingala/zip4j/io/outputstream/new;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/new;->try()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/oa0;->n(J)V

    .line 5
    iget-object p1, p0, Lnet/lingala/zip4j/io/outputstream/break;->else:Landroid/support/v4/pa0;

    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->try:Landroid/support/v4/oa0;

    invoke-virtual {p1, v0}, Landroid/support/v4/pa0;->case(Landroid/support/v4/oa0;)Landroid/support/v4/mu0;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/io/outputstream/break;->case:Landroid/support/v4/mu0;

    .line 6
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->goto:Landroid/support/v4/gj0;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/break;->for:Landroid/support/v4/rk2;

    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/break;->do:Lnet/lingala/zip4j/io/outputstream/new;

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/gj0;->const(Landroid/support/v4/rk2;Landroid/support/v4/mu0;Ljava/io/OutputStream;)V

    return-void
.end method

.method private new(Landroid/support/v4/sk2;)Lnet/lingala/zip4j/io/outputstream/for;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/this;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/break;->do:Lnet/lingala/zip4j/io/outputstream/new;

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/io/outputstream/this;-><init>(Ljava/io/OutputStream;)V

    .line 2
    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/io/outputstream/break;->for(Lnet/lingala/zip4j/io/outputstream/this;Landroid/support/v4/sk2;)Lnet/lingala/zip4j/io/outputstream/if;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/io/outputstream/break;->try(Lnet/lingala/zip4j/io/outputstream/if;Landroid/support/v4/sk2;)Lnet/lingala/zip4j/io/outputstream/for;

    move-result-object p1

    return-object p1
.end method

.method private this()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->catch:J

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->this:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->new:Lnet/lingala/zip4j/io/outputstream/for;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/for;->close()V

    return-void
.end method

.method private try(Lnet/lingala/zip4j/io/outputstream/if;Landroid/support/v4/sk2;)Lnet/lingala/zip4j/io/outputstream/for;
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/support/v4/sk2;->new()Landroid/support/v4/hq;

    move-result-object v0

    sget-object v1, Landroid/support/v4/hq;->DEFLATE:Landroid/support/v4/hq;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/try;

    invoke-virtual {p2}, Landroid/support/v4/sk2;->for()Landroid/support/v4/fq;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lnet/lingala/zip4j/io/outputstream/try;-><init>(Lnet/lingala/zip4j/io/outputstream/if;Landroid/support/v4/fq;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p2, Lnet/lingala/zip4j/io/outputstream/goto;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/io/outputstream/goto;-><init>(Lnet/lingala/zip4j/io/outputstream/if;)V

    return-object p2
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->for:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/break;->do:Lnet/lingala/zip4j/io/outputstream/new;

    invoke-virtual {v1}, Lnet/lingala/zip4j/io/outputstream/new;->new()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/w70;->const(J)V

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->goto:Landroid/support/v4/gj0;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/break;->for:Landroid/support/v4/rk2;

    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/break;->do:Lnet/lingala/zip4j/io/outputstream/new;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/gj0;->if(Landroid/support/v4/rk2;Ljava/io/OutputStream;)V

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->do:Lnet/lingala/zip4j/io/outputstream/new;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/new;->close()V

    return-void
.end method

.method public do()Landroid/support/v4/oa0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->new:Lnet/lingala/zip4j/io/outputstream/for;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/for;->do()V

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->new:Lnet/lingala/zip4j/io/outputstream/for;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/for;->if()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/break;->try:Landroid/support/v4/oa0;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/transient;->switch(J)V

    .line 4
    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/break;->case:Landroid/support/v4/mu0;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/transient;->switch(J)V

    .line 5
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->try:Landroid/support/v4/oa0;

    iget-wide v1, p0, Lnet/lingala/zip4j/io/outputstream/break;->catch:J

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/transient;->instanceof(J)V

    .line 6
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->case:Landroid/support/v4/mu0;

    iget-wide v1, p0, Lnet/lingala/zip4j/io/outputstream/break;->catch:J

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/transient;->instanceof(J)V

    .line 7
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->try:Landroid/support/v4/oa0;

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/outputstream/break;->catch(Landroid/support/v4/oa0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->try:Landroid/support/v4/oa0;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/break;->this:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/transient;->default(J)V

    .line 9
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->case:Landroid/support/v4/mu0;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/break;->this:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/transient;->default(J)V

    .line 10
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->for:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->case()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/break;->case:Landroid/support/v4/mu0;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->for:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/break;->try:Landroid/support/v4/oa0;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->case:Landroid/support/v4/mu0;

    invoke-virtual {v0}, Landroid/support/v4/transient;->import()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->goto:Landroid/support/v4/gj0;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/break;->case:Landroid/support/v4/mu0;

    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/break;->do:Lnet/lingala/zip4j/io/outputstream/new;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/gj0;->catch(Landroid/support/v4/mu0;Ljava/io/OutputStream;)V

    .line 14
    :cond_1
    invoke-direct {p0}, Lnet/lingala/zip4j/io/outputstream/break;->this()V

    .line 15
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->try:Landroid/support/v4/oa0;

    return-object v0
.end method

.method public goto(Landroid/support/v4/sk2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/outputstream/break;->break(Landroid/support/v4/sk2;)V

    .line 2
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/outputstream/break;->if(Landroid/support/v4/sk2;)V

    .line 3
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/outputstream/break;->new(Landroid/support/v4/sk2;)Lnet/lingala/zip4j/io/outputstream/for;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/io/outputstream/break;->new:Lnet/lingala/zip4j/io/outputstream/for;

    return-void
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
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/outputstream/break;->write([B)V

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

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/outputstream/break;->write([BII)V

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
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->this:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 4
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/break;->new:Lnet/lingala/zip4j/io/outputstream/for;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lingala/zip4j/io/outputstream/for;->write([BII)V

    .line 5
    iget-wide p1, p0, Lnet/lingala/zip4j/io/outputstream/break;->catch:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lnet/lingala/zip4j/io/outputstream/break;->catch:J

    return-void
.end method
