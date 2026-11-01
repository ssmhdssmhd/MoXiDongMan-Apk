.class public Landroid/support/v4/sj2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private case:[C

.field private do:Ljava/io/File;

.field private else:Landroid/support/v4/gj0;

.field private for:Z

.field private if:Landroid/support/v4/rk2;

.field private new:Landroid/support/v4/uf1;

.field private try:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Landroid/support/v4/sj2;-><init>(Ljava/io/File;[C)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;[C)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/support/v4/gj0;

    invoke-direct {v0}, Landroid/support/v4/gj0;-><init>()V

    iput-object v0, p0, Landroid/support/v4/sj2;->else:Landroid/support/v4/gj0;

    .line 6
    iput-object p1, p0, Landroid/support/v4/sj2;->do:Ljava/io/File;

    .line 7
    iput-object p2, p0, Landroid/support/v4/sj2;->case:[C

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Landroid/support/v4/sj2;->try:Z

    .line 9
    new-instance p1, Landroid/support/v4/uf1;

    invoke-direct {p1}, Landroid/support/v4/uf1;-><init>()V

    iput-object p1, p0, Landroid/support/v4/sj2;->new:Landroid/support/v4/uf1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroid/support/v4/sj2;-><init>(Ljava/io/File;[C)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 1

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Landroid/support/v4/sj2;-><init>(Ljava/io/File;[C)V

    return-void
.end method

.method private catch()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/support/v4/sj2;->strictfp()V

    :cond_0
    return-void
.end method

.method private class()V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/rk2;

    invoke-direct {v0}, Landroid/support/v4/rk2;-><init>()V

    iput-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    .line 2
    iget-object v1, p0, Landroid/support/v4/sj2;->do:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/support/v4/rk2;->package(Ljava/io/File;)V

    return-void
.end method

.method private strictfp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/sj2;->do:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/support/v4/sj2;->class()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/sj2;->do:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Landroid/support/v4/sj2;->do:Ljava/io/File;

    sget-object v2, Landroid/support/v4/el1;->READ:Landroid/support/v4/el1;

    invoke-virtual {v2}, Landroid/support/v4/el1;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    new-instance v1, Landroid/support/v4/dj0;

    invoke-direct {v1}, Landroid/support/v4/dj0;-><init>()V

    .line 6
    invoke-virtual {v1, v0}, Landroid/support/v4/dj0;->else(Ljava/io/RandomAccessFile;)Landroid/support/v4/rk2;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    .line 7
    iget-object v2, p0, Landroid/support/v4/sj2;->do:Ljava/io/File;

    invoke-virtual {v1, v2}, Landroid/support/v4/rk2;->package(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    .line 10
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Landroid/support/v4/rj2;

    invoke-direct {v1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 12
    :cond_1
    new-instance v0, Landroid/support/v4/rj2;

    const-string v1, "no read access for the input zip file"

    invoke-direct {v0, v1}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private this(Ljava/io/File;Landroid/support/v4/sk2;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/sj2;->catch()V

    .line 2
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/rk2;->const()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "This is a split archive. Zip file format does not allow updating split/spanned files"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    new-instance p3, Landroid/support/v4/n0;

    iget-object v1, p0, Landroid/support/v4/sj2;->new:Landroid/support/v4/uf1;

    iget-boolean v2, p0, Landroid/support/v4/sj2;->try:Z

    iget-object v3, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    iget-object v4, p0, Landroid/support/v4/sj2;->case:[C

    iget-object v5, p0, Landroid/support/v4/sj2;->else:Landroid/support/v4/gj0;

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/n0;-><init>(Landroid/support/v4/uf1;ZLandroid/support/v4/rk2;[CLandroid/support/v4/gj0;)V

    new-instance v0, Landroid/support/v4/n0$do;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/n0$do;-><init>(Ljava/io/File;Landroid/support/v4/sk2;)V

    invoke-virtual {p3, v0}, Landroid/support/v4/f4;->for(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_2
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "internal error: zip model is null"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/sj2;->do:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/sj2;->strictfp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    return v1
.end method

.method public break(Ljava/io/InputStream;Landroid/support/v4/sk2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v4/sj2;->implements(Z)V

    .line 2
    invoke-direct {p0}, Landroid/support/v4/sj2;->catch()V

    .line 3
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Landroid/support/v4/sj2;->do:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->const()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "Zip file already exists. Zip file format does not allow updating split/spanned files"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    new-instance v6, Landroid/support/v4/o0;

    iget-object v1, p0, Landroid/support/v4/sj2;->new:Landroid/support/v4/uf1;

    iget-boolean v2, p0, Landroid/support/v4/sj2;->try:Z

    iget-object v3, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    iget-object v4, p0, Landroid/support/v4/sj2;->case:[C

    iget-object v5, p0, Landroid/support/v4/sj2;->else:Landroid/support/v4/gj0;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/o0;-><init>(Landroid/support/v4/uf1;ZLandroid/support/v4/rk2;[CLandroid/support/v4/gj0;)V

    new-instance v0, Landroid/support/v4/o0$do;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/o0$do;-><init>(Ljava/io/InputStream;Landroid/support/v4/sk2;)V

    invoke-virtual {v6, v0}, Landroid/support/v4/f4;->for(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_2
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "internal error: zip model is null"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "zip parameters are null"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_4
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "inputstream is null, cannot add file to zip"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public case(Ljava/util/List;Landroid/support/v4/sk2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Landroid/support/v4/sk2;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    .line 2
    iget-object v0, p0, Landroid/support/v4/sj2;->new:Landroid/support/v4/uf1;

    invoke-virtual {v0}, Landroid/support/v4/uf1;->this()Landroid/support/v4/uf1$if;

    move-result-object v0

    sget-object v1, Landroid/support/v4/uf1$if;->BUSY:Landroid/support/v4/uf1$if;

    if-eq v0, v1, :cond_3

    .line 3
    invoke-static {p1}, Landroid/support/v4/db0;->new(Ljava/util/List;)V

    .line 4
    invoke-direct {p0}, Landroid/support/v4/sj2;->catch()V

    .line 5
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Landroid/support/v4/sj2;->do:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->const()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "Zip file already exists. Zip file format does not allow updating split/spanned files"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    :goto_0
    new-instance v6, Landroid/support/v4/m0;

    iget-object v1, p0, Landroid/support/v4/sj2;->new:Landroid/support/v4/uf1;

    iget-boolean v2, p0, Landroid/support/v4/sj2;->try:Z

    iget-object v3, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    iget-object v4, p0, Landroid/support/v4/sj2;->case:[C

    iget-object v5, p0, Landroid/support/v4/sj2;->else:Landroid/support/v4/gj0;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/m0;-><init>(Landroid/support/v4/uf1;ZLandroid/support/v4/rk2;[CLandroid/support/v4/gj0;)V

    new-instance v0, Landroid/support/v4/m0$do;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/m0$do;-><init>(Ljava/util/List;Landroid/support/v4/sk2;)V

    invoke-virtual {v6, v0}, Landroid/support/v4/f4;->for(Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_2
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "internal error: zip model is null"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "invalid operation - Zip4j is in busy state"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "input parameters are null"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_5
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "input file List is null or empty"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public const(Ljava/util/List;Landroid/support/v4/sk2;ZJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Landroid/support/v4/sk2;",
            "ZJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/sj2;->do:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Landroid/support/v4/sj2;->class()V

    .line 4
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    invoke-virtual {v0, p3}, Landroid/support/v4/rk2;->static(Z)V

    .line 5
    iget-object p3, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    invoke-virtual {p3, p4, p5}, Landroid/support/v4/rk2;->switch(J)V

    .line 6
    new-instance p3, Landroid/support/v4/m0;

    iget-object v1, p0, Landroid/support/v4/sj2;->new:Landroid/support/v4/uf1;

    iget-boolean v2, p0, Landroid/support/v4/sj2;->try:Z

    iget-object v3, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    iget-object v4, p0, Landroid/support/v4/sj2;->case:[C

    iget-object v5, p0, Landroid/support/v4/sj2;->else:Landroid/support/v4/gj0;

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/m0;-><init>(Landroid/support/v4/uf1;ZLandroid/support/v4/rk2;[CLandroid/support/v4/gj0;)V

    new-instance p4, Landroid/support/v4/m0$do;

    invoke-direct {p4, p1, p2}, Landroid/support/v4/m0$do;-><init>(Ljava/util/List;Landroid/support/v4/sk2;)V

    invoke-virtual {p3, p4}, Landroid/support/v4/f4;->for(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "input file List is null, cannot create zip file"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Landroid/support/v4/rj2;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "zip file: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroid/support/v4/sj2;->do:Ljava/io/File;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " already exists. To add files to existing zip file use addFile method"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public continue(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Landroid/support/v4/sj2;->catch()V

    .line 3
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Landroid/support/v4/qz0;

    iget-object v2, p0, Landroid/support/v4/sj2;->new:Landroid/support/v4/uf1;

    iget-boolean v3, p0, Landroid/support/v4/sj2;->try:Z

    invoke-direct {v1, v2, v3, v0}, Landroid/support/v4/qz0;-><init>(Landroid/support/v4/uf1;ZLandroid/support/v4/rk2;)V

    invoke-virtual {v1, p1}, Landroid/support/v4/f4;->for(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "zip model is null, corrupt zip file?"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "output Zip File already exists"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "outputZipFile is null, cannot merge split files"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public default()Landroid/support/v4/uf1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/sj2;->new:Landroid/support/v4/uf1;

    return-object v0
.end method

.method public do(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Landroid/support/v4/sk2;

    invoke-direct {v0}, Landroid/support/v4/sk2;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/sj2;->case(Ljava/util/List;Landroid/support/v4/sk2;)V

    return-void
.end method

.method public else(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/sk2;

    invoke-direct {v0}, Landroid/support/v4/sk2;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/sj2;->goto(Ljava/io/File;Landroid/support/v4/sk2;)V

    return-void
.end method

.method public extends()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/sj2;->catch()V

    .line 2
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    invoke-static {v0}, Landroid/support/v4/db0;->break(Landroid/support/v4/rk2;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final(Ljava/io/File;Landroid/support/v4/sk2;ZJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 1
    iget-object v0, p0, Landroid/support/v4/sj2;->do:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Landroid/support/v4/sj2;->class()V

    .line 3
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    invoke-virtual {v0, p3}, Landroid/support/v4/rk2;->static(Z)V

    if-eqz p3, :cond_0

    .line 4
    iget-object p3, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    invoke-virtual {p3, p4, p5}, Landroid/support/v4/rk2;->switch(J)V

    :cond_0
    const/4 p3, 0x0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/sj2;->this(Ljava/io/File;Landroid/support/v4/sk2;Z)V

    return-void

    .line 6
    :cond_1
    new-instance p1, Landroid/support/v4/rj2;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "zip file: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroid/support/v4/sj2;->do:Ljava/io/File;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " already exists. To add files to existing zip file use addFolder method"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "input parameters are null, cannot create zip file from folder"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "folderToAdd is null, cannot create zip file from folder"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public finally()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Landroid/support/v4/sj2;->strictfp()V

    .line 3
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/support/v4/rj2;

    const-string v1, "Zip Model is null"

    invoke-direct {v0, v1}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/oa0;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Landroid/support/v4/transient;->public()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroid/support/v4/sj2;->for:Z

    .line 9
    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/sj2;->for:Z

    return v0

    .line 10
    :cond_4
    new-instance v0, Landroid/support/v4/rj2;

    const-string v1, "invalid zip file"

    invoke-direct {v0, v1}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public for(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/sk2;

    invoke-direct {v0}, Landroid/support/v4/sk2;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/sj2;->new(Ljava/lang/String;Landroid/support/v4/sk2;)V

    return-void
.end method

.method public goto(Ljava/io/File;Landroid/support/v4/sk2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/sj2;->this(Ljava/io/File;Landroid/support/v4/sk2;Z)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "input parameters are null, cannot add folder to zip file"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "cannot read input folder"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "input folder is not a directory"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "folder does not exist"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_4
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "input path is null, cannot add folder to zip file"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public if(Ljava/io/File;Landroid/support/v4/sk2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/sj2;->case(Ljava/util/List;Landroid/support/v4/sk2;)V

    return-void
.end method

.method public implements(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/sj2;->try:Z

    return-void
.end method

.method public import(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/sj2;->native(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public interface(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/mj2;->try(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Landroid/support/v4/sj2;->strictfp()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->const()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    invoke-static {v0, p1}, Landroid/support/v4/fj0;->if(Landroid/support/v4/rk2;Ljava/lang/String;)Landroid/support/v4/oa0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Landroid/support/v4/sj2;->volatile(Landroid/support/v4/oa0;)V

    return-void

    .line 7
    :cond_1
    new-instance v0, Landroid/support/v4/rj2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not find file header for file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "Zip file format does not allow updating split/spanned files"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "file name is empty or null, cannot remove file"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public native(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/mj2;->try(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Landroid/support/v4/sj2;->strictfp()V

    .line 3
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    invoke-static {v0, p1}, Landroid/support/v4/fj0;->if(Landroid/support/v4/rk2;Ljava/lang/String;)Landroid/support/v4/oa0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v4/sj2;->while(Landroid/support/v4/oa0;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance p2, Landroid/support/v4/rj2;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No file found with name "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in zip file"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_1
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "file to extract is null or empty, cannot extract file"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public new(Ljava/lang/String;Landroid/support/v4/sk2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/mj2;->try(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/sj2;->case(Ljava/util/List;Landroid/support/v4/sk2;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "file to add is null or empty"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public package()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/sj2;->try:Z

    return v0
.end method

.method public private()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Landroid/support/v4/sj2;->strictfp()V

    .line 3
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/support/v4/rj2;

    const-string v1, "Zip Model is null"

    invoke-direct {v0, v1}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->const()Z

    move-result v0

    return v0
.end method

.method public protected(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Landroid/support/v4/sj2;->do:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0}, Landroid/support/v4/sj2;->strictfp()V

    .line 3
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Landroid/support/v4/kx1;

    iget-object v1, p0, Landroid/support/v4/sj2;->new:Landroid/support/v4/uf1;

    iget-boolean v2, p0, Landroid/support/v4/sj2;->try:Z

    iget-object v3, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/kx1;-><init>(Landroid/support/v4/uf1;ZLandroid/support/v4/rk2;)V

    invoke-virtual {v0, p1}, Landroid/support/v4/f4;->for(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "end of central directory is null, cannot set comment"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "zipModel is null, cannot update zip file"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "zip file does not exist, cannot set comment for zip file"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "input comment is null, cannot update zip file"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public public()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/sj2;->do:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0}, Landroid/support/v4/sj2;->catch()V

    .line 3
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/w70;->for()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Landroid/support/v4/rj2;

    const-string v1, "end of central directory record is null, cannot read comment"

    invoke-direct {v0, v1}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Landroid/support/v4/rj2;

    const-string v1, "zip model is null, cannot read comment"

    invoke-direct {v0, v1}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    new-instance v0, Landroid/support/v4/rj2;

    const-string v1, "zip file does not exist, cannot read comment"

    invoke-direct {v0, v1}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public return()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/sj2;->do:Ljava/io/File;

    return-object v0
.end method

.method public static(Ljava/lang/String;)Landroid/support/v4/oa0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/mj2;->try(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0}, Landroid/support/v4/sj2;->strictfp()V

    .line 3
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    invoke-static {v0, p1}, Landroid/support/v4/fj0;->if(Landroid/support/v4/rk2;Ljava/lang/String;)Landroid/support/v4/oa0;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_2
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "input file name is emtpy or null, cannot get FileHeader"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public super(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/mj2;->try(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/support/v4/mj2;->if(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Landroid/support/v4/sj2;->strictfp()V

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Landroid/support/v4/sj2;->new:Landroid/support/v4/uf1;

    invoke-virtual {v0}, Landroid/support/v4/uf1;->this()Landroid/support/v4/uf1$if;

    move-result-object v0

    sget-object v1, Landroid/support/v4/uf1$if;->BUSY:Landroid/support/v4/uf1$if;

    if-eq v0, v1, :cond_1

    .line 7
    new-instance v0, Landroid/support/v4/ba0;

    iget-object v1, p0, Landroid/support/v4/sj2;->new:Landroid/support/v4/uf1;

    iget-boolean v2, p0, Landroid/support/v4/sj2;->try:Z

    iget-object v3, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    iget-object v4, p0, Landroid/support/v4/sj2;->case:[C

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/ba0;-><init>(Landroid/support/v4/uf1;ZLandroid/support/v4/rk2;[C)V

    new-instance v1, Landroid/support/v4/ba0$do;

    invoke-direct {v1, p1}, Landroid/support/v4/ba0$do;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/f4;->for(Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_1
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "invalid operation - Zip4j is in busy state"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "Internal error occurred when extracting zip file"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "invalid output path"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "output path is null or invalid"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public switch()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/oa0;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/sj2;->strictfp()V

    .line 2
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public throw(Landroid/support/v4/oa0;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/sj2;->while(Landroid/support/v4/oa0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public throws(Landroid/support/v4/oa0;)Lnet/lingala/zip4j/io/inputstream/this;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/sj2;->catch()V

    .line 2
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Landroid/support/v4/sj2;->case:[C

    invoke-static {v0, p1, v1}, Landroid/support/v4/wc2;->if(Landroid/support/v4/rk2;Landroid/support/v4/oa0;[C)Lnet/lingala/zip4j/io/inputstream/this;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "zip model is null, cannot get inputstream"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "FileHeader is null, cannot get InputStream"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/sj2;->do:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transient([C)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/sj2;->case:[C

    return-void
.end method

.method public try(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/sk2;

    invoke-direct {v0}, Landroid/support/v4/sk2;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/sj2;->case(Ljava/util/List;Landroid/support/v4/sk2;)V

    return-void
.end method

.method public volatile(Landroid/support/v4/oa0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/support/v4/sj2;->strictfp()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->const()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/support/v4/wm1;

    iget-object v1, p0, Landroid/support/v4/sj2;->new:Landroid/support/v4/uf1;

    iget-boolean v2, p0, Landroid/support/v4/sj2;->try:Z

    iget-object v3, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/wm1;-><init>(Landroid/support/v4/uf1;ZLandroid/support/v4/rk2;)V

    invoke-virtual {v0, p1}, Landroid/support/v4/f4;->for(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "Zip file format does not allow updating split/spanned files"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "input file header is null, cannot remove file"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public while(Landroid/support/v4/oa0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-static {p2}, Landroid/support/v4/mj2;->try(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/support/v4/sj2;->new:Landroid/support/v4/uf1;

    invoke-virtual {v0}, Landroid/support/v4/uf1;->this()Landroid/support/v4/uf1$if;

    move-result-object v0

    sget-object v1, Landroid/support/v4/uf1$if;->BUSY:Landroid/support/v4/uf1$if;

    if-eq v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Landroid/support/v4/sj2;->strictfp()V

    .line 4
    new-instance v0, Landroid/support/v4/ca0;

    iget-object v1, p0, Landroid/support/v4/sj2;->new:Landroid/support/v4/uf1;

    iget-boolean v2, p0, Landroid/support/v4/sj2;->try:Z

    iget-object v3, p0, Landroid/support/v4/sj2;->if:Landroid/support/v4/rk2;

    iget-object v4, p0, Landroid/support/v4/sj2;->case:[C

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/ca0;-><init>(Landroid/support/v4/uf1;ZLandroid/support/v4/rk2;[C)V

    new-instance v1, Landroid/support/v4/ca0$do;

    invoke-direct {v1, p2, p1, p3}, Landroid/support/v4/ca0$do;-><init>(Ljava/lang/String;Landroid/support/v4/oa0;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/f4;->for(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "invalid operation - Zip4j is in busy state"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "destination path is empty or null, cannot extract file"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "input file header is null, cannot extract file"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method
