.class public Landroid/support/v4/wm1;
.super Landroid/support/v4/f4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/f4<",
        "Landroid/support/v4/oa0;",
        ">;"
    }
.end annotation


# instance fields
.field private for:Landroid/support/v4/rk2;


# direct methods
.method public constructor <init>(Landroid/support/v4/uf1;ZLandroid/support/v4/rk2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/f4;-><init>(Landroid/support/v4/uf1;Z)V

    .line 2
    iput-object p3, p0, Landroid/support/v4/wm1;->for:Landroid/support/v4/rk2;

    return-void
.end method

.method private break(ZLjava/io/File;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0, p2, p3}, Landroid/support/v4/wm1;->throw(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    :goto_0
    return-void
.end method

.method private class(IJLjava/util/List;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/List<",
            "Landroid/support/v4/oa0;",
            ">;)J"
        }
    .end annotation

    .line 1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x1

    if-ne p1, v0, :cond_0

    sub-long/2addr p2, v1

    return-wide p2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 2
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/oa0;

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/oa0;->g()J

    move-result-wide p2

    sub-long/2addr p2, v1

    .line 4
    invoke-virtual {p1}, Landroid/support/v4/transient;->while()Landroid/support/v4/pj2;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/support/v4/transient;->while()Landroid/support/v4/pj2;

    move-result-object p4

    invoke-virtual {p4}, Landroid/support/v4/pj2;->try()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p4, v3, v5

    if-eqz p4, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/support/v4/transient;->while()Landroid/support/v4/pj2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/pj2;->try()J

    move-result-wide p1

    sub-long/2addr p1, v1

    move-wide p2, p1

    :cond_1
    return-wide p2
.end method

.method private const(Landroid/support/v4/oa0;)J
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/oa0;->g()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/transient;->while()Landroid/support/v4/pj2;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/transient;->while()Landroid/support/v4/pj2;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/pj2;->try()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/transient;->while()Landroid/support/v4/pj2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/pj2;->try()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method private final(Landroid/support/v4/rk2;)J
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/w70;->case()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/rk2;->final()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/rk2;->break()Landroid/support/v4/oj2;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/rk2;->break()Landroid/support/v4/oj2;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/support/v4/oj2;->case()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method private import(Ljava/util/List;JJI)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/oa0;",
            ">;JJI)V"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p6, v0, :cond_1

    .line 2
    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/oa0;

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/oa0;->g()J

    move-result-wide v1

    .line 4
    invoke-virtual {v0}, Landroid/support/v4/transient;->while()Landroid/support/v4/pj2;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/transient;->while()Landroid/support/v4/pj2;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/pj2;->try()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/support/v4/transient;->while()Landroid/support/v4/pj2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/pj2;->try()J

    move-result-wide v1

    :cond_0
    sub-long v3, p2, p4

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/oa0;->n(J)V

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private native(Landroid/support/v4/rk2;Lnet/lingala/zip4j/io/outputstream/else;IJJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/wm1;->while(Landroid/support/v4/rk2;Lnet/lingala/zip4j/io/outputstream/else;)V

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v2

    move-object v1, p0

    move-wide v3, p4

    move-wide v5, p6

    move v7, p3

    invoke-direct/range {v1 .. v7}, Landroid/support/v4/wm1;->import(Ljava/util/List;JJI)V

    .line 4
    new-instance p3, Landroid/support/v4/gj0;

    invoke-direct {p3}, Landroid/support/v4/gj0;-><init>()V

    .line 5
    invoke-virtual {p3, p1, p2}, Landroid/support/v4/gj0;->if(Landroid/support/v4/rk2;Ljava/io/OutputStream;)V

    return-void
.end method

.method private super(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private throw(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "cannot rename modified zip file"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "cannot delete old zip file"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private while(Landroid/support/v4/rk2;Lnet/lingala/zip4j/io/outputstream/else;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lnet/lingala/zip4j/io/outputstream/else;->for()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/w70;->const(J)V

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/w70;->goto()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 4
    invoke-virtual {v0, p2}, Landroid/support/v4/w70;->super(I)V

    .line 5
    invoke-virtual {v0}, Landroid/support/v4/w70;->this()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 6
    invoke-virtual {v0, p2}, Landroid/support/v4/w70;->throw(I)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/support/v4/rk2;->native(Landroid/support/v4/w70;)V

    return-void
.end method


# virtual methods
.method public catch(Landroid/support/v4/oa0;Landroid/support/v4/uf1;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v9, p0

    .line 1
    iget-object v0, v9, Landroid/support/v4/wm1;->for:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->const()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, v9, Landroid/support/v4/wm1;->for:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->catch()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/support/v4/wm1;->super(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 3
    :try_start_0
    new-instance v13, Lnet/lingala/zip4j/io/outputstream/else;

    invoke-direct {v13, v10}, Lnet/lingala/zip4j/io/outputstream/else;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 4
    :try_start_1
    new-instance v14, Ljava/io/RandomAccessFile;

    iget-object v0, v9, Landroid/support/v4/wm1;->for:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->catch()Ljava/io/File;

    move-result-object v0

    sget-object v1, Landroid/support/v4/el1;->READ:Landroid/support/v4/el1;

    .line 5
    invoke-virtual {v1}, Landroid/support/v4/el1;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 6
    :try_start_2
    iget-object v0, v9, Landroid/support/v4/wm1;->for:Landroid/support/v4/rk2;

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/support/v4/fj0;->new(Landroid/support/v4/rk2;Landroid/support/v4/oa0;)I

    move-result v7

    .line 7
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/wm1;->const(Landroid/support/v4/oa0;)J

    move-result-wide v15

    .line 8
    iget-object v0, v9, Landroid/support/v4/wm1;->for:Landroid/support/v4/rk2;

    invoke-direct {v9, v0}, Landroid/support/v4/wm1;->final(Landroid/support/v4/rk2;)J

    move-result-wide v4

    .line 9
    iget-object v0, v9, Landroid/support/v4/wm1;->for:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-direct {v9, v7, v4, v5, v0}, Landroid/support/v4/wm1;->class(IJLjava/util/List;)J

    move-result-wide v17

    const-wide/16 v19, 0x1

    if-nez v7, :cond_0

    .line 11
    iget-object v0, v9, Landroid/support/v4/wm1;->for:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v12, :cond_2

    add-long v2, v17, v19

    move-object v0, v14

    move-object v1, v13

    move-object/from16 v6, p2

    .line 12
    invoke-static/range {v0 .. v6}, Landroid/support/v4/db0;->try(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLandroid/support/v4/uf1;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v12

    if-ne v7, v0, :cond_1

    const-wide/16 v2, 0x0

    move-object v0, v14

    move-object v1, v13

    move-wide v4, v15

    move-object/from16 v6, p2

    .line 14
    invoke-static/range {v0 .. v6}, Landroid/support/v4/db0;->try(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLandroid/support/v4/uf1;)V

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    move-object v0, v14

    move-object v1, v13

    move-wide/from16 v21, v4

    move-wide v4, v15

    move-object/from16 v6, p2

    .line 15
    invoke-static/range {v0 .. v6}, Landroid/support/v4/db0;->try(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLandroid/support/v4/uf1;)V

    add-long v2, v17, v19

    move-object v0, v14

    move-object v1, v13

    move-wide/from16 v4, v21

    move-object/from16 v6, p2

    .line 16
    invoke-static/range {v0 .. v6}, Landroid/support/v4/db0;->try(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLandroid/support/v4/uf1;)V

    .line 17
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/f4;->goto()V

    .line 18
    iget-object v2, v9, Landroid/support/v4/wm1;->for:Landroid/support/v4/rk2;

    move-object/from16 v1, p0

    move-object v3, v13

    move v4, v7

    move-wide/from16 v5, v17

    move-wide v7, v15

    invoke-direct/range {v1 .. v8}, Landroid/support/v4/wm1;->native(Landroid/support/v4/rk2;Lnet/lingala/zip4j/io/outputstream/else;IJJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 19
    :try_start_3
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v13}, Lnet/lingala/zip4j/io/outputstream/else;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 20
    iget-object v0, v9, Landroid/support/v4/wm1;->for:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->catch()Ljava/io/File;

    move-result-object v0

    invoke-direct {v9, v12, v0, v10}, Landroid/support/v4/wm1;->break(ZLjava/io/File;Ljava/io/File;)V

    return-void

    :catchall_0
    move-exception v0

    const/4 v11, 0x1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v11, 0x1

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 21
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 22
    :try_start_6
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object v3, v0

    :try_start_7
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception v0

    move-object v1, v0

    .line 23
    :goto_2
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    .line 24
    :try_start_9
    invoke-virtual {v13}, Lnet/lingala/zip4j/io/outputstream/else;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto :goto_3

    :catchall_7
    move-exception v0

    move-object v3, v0

    :try_start_a
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    :catchall_8
    move-exception v0

    .line 25
    :goto_4
    iget-object v1, v9, Landroid/support/v4/wm1;->for:Landroid/support/v4/rk2;

    invoke-virtual {v1}, Landroid/support/v4/rk2;->catch()Ljava/io/File;

    move-result-object v1

    invoke-direct {v9, v11, v1, v10}, Landroid/support/v4/wm1;->break(ZLjava/io/File;Ljava/io/File;)V

    .line 26
    throw v0

    .line 27
    :cond_3
    new-instance v0, Landroid/support/v4/rj2;

    const-string v1, "This is a split archive. Zip file format does not allow updating split/spanned files"

    invoke-direct {v0, v1}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic if(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/support/v4/oa0;

    invoke-virtual {p0, p1}, Landroid/support/v4/wm1;->this(Landroid/support/v4/oa0;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic new(Ljava/lang/Object;Landroid/support/v4/uf1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/support/v4/oa0;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/wm1;->catch(Landroid/support/v4/oa0;Landroid/support/v4/uf1;)V

    return-void
.end method

.method public this(Landroid/support/v4/oa0;)J
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v4/wm1;->for:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->catch()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/support/v4/transient;->new()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public try()Landroid/support/v4/uf1$for;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/uf1$for;->REMOVE_ENTRY:Landroid/support/v4/uf1$for;

    return-object v0
.end method
