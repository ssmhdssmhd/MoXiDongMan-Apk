.class public Landroid/support/v4/qz0;
.super Landroid/support/v4/f4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/f4<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private for:Landroid/support/v4/rk2;

.field private new:Landroid/support/v4/jl1;


# direct methods
.method public constructor <init>(Landroid/support/v4/uf1;ZLandroid/support/v4/rk2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/f4;-><init>(Landroid/support/v4/uf1;Z)V

    .line 2
    new-instance p1, Landroid/support/v4/jl1;

    invoke-direct {p1}, Landroid/support/v4/jl1;-><init>()V

    iput-object p1, p0, Landroid/support/v4/qz0;->new:Landroid/support/v4/jl1;

    .line 3
    iput-object p3, p0, Landroid/support/v4/qz0;->for:Landroid/support/v4/rk2;

    return-void
.end method

.method private break(Landroid/support/v4/rk2;I)Ljava/io/RandomAccessFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/qz0;->class(Landroid/support/v4/rk2;I)Ljava/io/File;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/io/RandomAccessFile;

    sget-object v0, Landroid/support/v4/el1;->READ:Landroid/support/v4/el1;

    invoke-virtual {v0}, Landroid/support/v4/el1;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2
.end method

.method private class(Landroid/support/v4/rk2;I)Ljava/io/File;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/w70;->new()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/rk2;->catch()Ljava/io/File;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x9

    if-lt p2, v0, :cond_1

    const-string v0, ".z"

    goto :goto_0

    :cond_1
    const-string v0, ".z0"

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/rk2;->catch()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/support/v4/rk2;->catch()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method private const(Ljava/util/List;JII)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/oa0;",
            ">;JII)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/oa0;

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/oa0;->b()I

    move-result v1

    if-ne v1, p4, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/oa0;->g()J

    move-result-wide v1

    add-long/2addr v1, p2

    int-to-long v3, p5

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/oa0;->n(J)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/support/v4/oa0;->i(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final(Landroid/support/v4/rk2;JLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/rk2;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/rk2;

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/w70;->const(J)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/qz0;->import(Landroid/support/v4/rk2;J)V

    .line 4
    new-instance p2, Landroid/support/v4/gj0;

    invoke-direct {p2}, Landroid/support/v4/gj0;-><init>()V

    .line 5
    invoke-virtual {p2, p1, p4}, Landroid/support/v4/gj0;->for(Landroid/support/v4/rk2;Ljava/io/OutputStream;)V

    return-void
.end method

.method private import(Landroid/support/v4/rk2;J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/support/v4/rk2;->static(Z)V

    .line 2
    invoke-direct {p0, p1}, Landroid/support/v4/qz0;->super(Landroid/support/v4/rk2;)V

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/rk2;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/qz0;->throw(Landroid/support/v4/rk2;J)V

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/qz0;->while(Landroid/support/v4/rk2;J)V

    :cond_0
    return-void
.end method

.method private super(Landroid/support/v4/rk2;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Landroid/support/v4/w70;->catch(I)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/support/v4/w70;->class(I)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/support/v4/w70;->super(I)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/support/v4/w70;->throw(I)V

    return-void
.end method

.method private throw(Landroid/support/v4/rk2;J)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/rk2;->this()Landroid/support/v4/nj2;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/rk2;->this()Landroid/support/v4/nj2;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/support/v4/nj2;->case(I)V

    .line 4
    invoke-virtual {p1}, Landroid/support/v4/nj2;->new()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/nj2;->else(J)V

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Landroid/support/v4/nj2;->goto(I)V

    return-void
.end method

.method private while(Landroid/support/v4/rk2;J)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/rk2;->break()Landroid/support/v4/oj2;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/rk2;->break()Landroid/support/v4/oj2;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/support/v4/oj2;->final(I)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/support/v4/oj2;->super(I)V

    .line 5
    invoke-virtual {p1}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/w70;->goto()I

    move-result p1

    int-to-long v1, p1

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/oj2;->public(J)V

    .line 7
    invoke-virtual {v0}, Landroid/support/v4/oj2;->case()J

    move-result-wide v1

    add-long/2addr v1, p2

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/oj2;->throw(J)V

    return-void
.end method


# virtual methods
.method public catch(Ljava/io/File;Landroid/support/v4/uf1;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    .line 1
    iget-object v0, v7, Landroid/support/v4/qz0;->for:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->const()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2
    :try_start_0
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    iget-object v0, v7, Landroid/support/v4/qz0;->for:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/w70;->new()I

    move-result v0

    if-lez v0, :cond_6

    const/16 v16, 0x0

    const-wide/16 v5, 0x0

    move-wide v1, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-gt v3, v0, :cond_5

    .line 4
    iget-object v8, v7, Landroid/support/v4/qz0;->for:Landroid/support/v4/rk2;

    invoke-direct {v7, v8, v3}, Landroid/support/v4/qz0;->break(Landroid/support/v4/rk2;I)Ljava/io/RandomAccessFile;

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 5
    :try_start_2
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v10, 0x4

    if-nez v3, :cond_1

    .line 6
    :try_start_3
    iget-object v11, v7, Landroid/support/v4/qz0;->new:Landroid/support/v4/jl1;

    invoke-virtual {v11, v14}, Landroid/support/v4/jl1;->for(Ljava/io/RandomAccessFile;)I

    move-result v11

    int-to-long v11, v11

    sget-object v13, Landroid/support/v4/ej0;->SPLIT_ZIP:Landroid/support/v4/ej0;

    invoke-virtual {v13}, Landroid/support/v4/ej0;->getValue()J

    move-result-wide v17

    cmp-long v13, v11, v17

    if-nez v13, :cond_0

    const/16 v17, 0x4

    goto :goto_2

    .line 7
    :cond_0
    invoke-virtual {v14, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v22, v14

    goto :goto_5

    :cond_1
    :goto_1
    move/from16 v17, v4

    const/4 v10, 0x0

    :goto_2
    if-ne v3, v0, :cond_2

    .line 8
    iget-object v4, v7, Landroid/support/v4/qz0;->for:Landroid/support/v4/rk2;

    invoke-virtual {v4}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/w70;->case()J

    move-result-wide v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    move-wide/from16 v18, v8

    int-to-long v12, v10

    move-object v8, v14

    move-object v9, v15

    move-wide v10, v12

    move-wide/from16 v20, v12

    move-wide/from16 v12, v18

    move-object/from16 v22, v14

    move-object/from16 v14, p2

    .line 9
    :try_start_4
    invoke-static/range {v8 .. v14}, Landroid/support/v4/db0;->try(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLandroid/support/v4/uf1;)V

    sub-long v18, v18, v20

    add-long v8, v1, v18

    .line 10
    iget-object v1, v7, Landroid/support/v4/qz0;->for:Landroid/support/v4/rk2;

    invoke-virtual {v1}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v2

    if-nez v3, :cond_3

    move-wide v10, v5

    goto :goto_3

    :cond_3
    move-wide v10, v8

    :goto_3
    move-object/from16 v1, p0

    move v12, v3

    move-wide v3, v10

    move-wide v10, v5

    move v5, v12

    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/qz0;->const(Ljava/util/List;JII)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/f4;->goto()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 12
    :try_start_5
    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    add-int/lit8 v3, v12, 0x1

    move-wide v1, v8

    move-wide v5, v10

    move/from16 v4, v17

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v22, v14

    :goto_4
    move-object v1, v0

    .line 13
    :goto_5
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    if-eqz v22, :cond_4

    .line 14
    :try_start_7
    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v3, v0

    :try_start_8
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_6
    throw v2

    .line 15
    :cond_5
    iget-object v0, v7, Landroid/support/v4/qz0;->for:Landroid/support/v4/rk2;

    invoke-direct {v7, v0, v1, v2, v15}, Landroid/support/v4/qz0;->final(Landroid/support/v4/rk2;JLjava/io/OutputStream;)V

    .line 16
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/uf1;->do()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 17
    :try_start_9
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_9 .. :try_end_9} :catch_0

    return-void

    .line 18
    :cond_6
    :try_start_a
    new-instance v0, Landroid/support/v4/rj2;

    const-string v1, "zip archive not a split zip file"

    invoke-direct {v0, v1}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v0

    move-object v1, v0

    .line 19
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    .line 20
    :try_start_c
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception v0

    move-object v3, v0

    :try_start_d
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v2
    :try_end_d
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_d .. :try_end_d} :catch_0

    :catch_0
    move-exception v0

    .line 21
    new-instance v1, Landroid/support/v4/rj2;

    invoke-direct {v1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 22
    :cond_7
    new-instance v0, Landroid/support/v4/rj2;

    const-string v1, "archive not a split zip file"

    invoke-direct {v0, v1}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p2

    .line 23
    invoke-virtual {v1, v0}, Landroid/support/v4/uf1;->if(Ljava/lang/Exception;)V

    .line 24
    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public bridge synthetic if(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Landroid/support/v4/qz0;->this(Ljava/io/File;)J

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
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/qz0;->catch(Ljava/io/File;Landroid/support/v4/uf1;)V

    return-void
.end method

.method public this(Ljava/io/File;)J
    .locals 4

    .line 1
    iget-object p1, p0, Landroid/support/v4/qz0;->for:Landroid/support/v4/rk2;

    invoke-virtual {p1}, Landroid/support/v4/rk2;->const()Z

    move-result p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Landroid/support/v4/qz0;->for:Landroid/support/v4/rk2;

    invoke-virtual {v2}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/w70;->new()I

    move-result v2

    if-gt p1, v2, :cond_1

    .line 3
    iget-object v2, p0, Landroid/support/v4/qz0;->for:Landroid/support/v4/rk2;

    invoke-direct {p0, v2, p1}, Landroid/support/v4/qz0;->class(Landroid/support/v4/rk2;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public try()Landroid/support/v4/uf1$for;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/uf1$for;->MERGE_ZIP_FILES:Landroid/support/v4/uf1$for;

    return-object v0
.end method
