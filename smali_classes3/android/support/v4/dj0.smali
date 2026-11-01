.class public Landroid/support/v4/dj0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/rk2;

.field private for:[B

.field private if:Landroid/support/v4/jl1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v4/jl1;

    invoke-direct {v0}, Landroid/support/v4/jl1;-><init>()V

    iput-object v0, p0, Landroid/support/v4/dj0;->if:Landroid/support/v4/jl1;

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Landroid/support/v4/dj0;->for:[B

    return-void
.end method

.method private break(Ljava/io/RandomAccessFile;Landroid/support/v4/jl1;)Landroid/support/v4/w70;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    sub-long/2addr v0, v2

    .line 2
    new-instance v2, Landroid/support/v4/w70;

    invoke-direct {v2}, Landroid/support/v4/w70;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-wide/16 v5, 0x1

    sub-long v5, v0, v5

    .line 3
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x1

    add-int/2addr v4, v0

    .line 4
    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->for(Ljava/io/RandomAccessFile;)I

    move-result v1

    int-to-long v7, v1

    sget-object v1, Landroid/support/v4/ej0;->END_OF_CENTRAL_DIRECTORY:Landroid/support/v4/ej0;

    .line 5
    invoke-virtual {v1}, Landroid/support/v4/ej0;->getValue()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_1

    const/16 v9, 0xbb8

    if-le v4, v9, :cond_0

    goto :goto_1

    :cond_0
    move-wide v0, v5

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/support/v4/ej0;->getValue()J

    move-result-wide v4

    cmp-long v6, v7, v4

    if-nez v6, :cond_4

    .line 7
    invoke-virtual {v2, v1}, Landroid/support/v4/qk2;->if(Landroid/support/v4/ej0;)V

    .line 8
    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->class(Ljava/io/RandomAccessFile;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/support/v4/w70;->catch(I)V

    .line 9
    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->class(Ljava/io/RandomAccessFile;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/support/v4/w70;->class(I)V

    .line 10
    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->class(Ljava/io/RandomAccessFile;)I

    move-result v1

    .line 11
    invoke-virtual {v2, v1}, Landroid/support/v4/w70;->throw(I)V

    .line 12
    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->class(Ljava/io/RandomAccessFile;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/support/v4/w70;->super(I)V

    .line 13
    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->for(Ljava/io/RandomAccessFile;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/support/v4/w70;->final(I)V

    .line 14
    iget-object v1, p0, Landroid/support/v4/dj0;->for:[B

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 15
    iget-object v1, p0, Landroid/support/v4/dj0;->for:[B

    invoke-virtual {p2, v1, v3}, Landroid/support/v4/jl1;->break([BI)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/w70;->const(J)V

    .line 16
    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->class(Ljava/io/RandomAccessFile;)I

    move-result p2

    if-lez p2, :cond_2

    .line 17
    new-array p2, p2, [B

    .line 18
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 19
    new-instance p1, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, p1}, Landroid/support/v4/w70;->break(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 20
    invoke-virtual {v2, p1}, Landroid/support/v4/w70;->break(Ljava/lang/String;)V

    .line 21
    :goto_2
    iget-object p1, p0, Landroid/support/v4/dj0;->do:Landroid/support/v4/rk2;

    invoke-virtual {v2}, Landroid/support/v4/w70;->new()I

    move-result p2

    if-lez p2, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-virtual {p1, v3}, Landroid/support/v4/rk2;->static(Z)V

    return-object v2

    .line 22
    :cond_4
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "zip headers not found. probably not a zip file"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private case(Landroid/support/v4/mu0;Landroid/support/v4/jl1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/transient;->this()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/transient;->this()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/transient;->this()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/support/v4/dj0;->new(Ljava/util/List;Landroid/support/v4/jl1;)Landroid/support/v4/goto;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p1, p2}, Landroid/support/v4/transient;->static(Landroid/support/v4/goto;)V

    .line 4
    sget-object p2, Landroid/support/v4/t70;->AES:Landroid/support/v4/t70;

    invoke-virtual {p1, p2}, Landroid/support/v4/transient;->abstract(Landroid/support/v4/t70;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private catch(Ljava/io/InputStream;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I)",
            "Ljava/util/List<",
            "Landroid/support/v4/aa0;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    if-lez p2, :cond_0

    int-to-long v0, p2

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/io/InputStream;->skip(J)J

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_1
    new-array v0, p2, [B

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 4
    :try_start_0
    invoke-direct {p0, v0, p2}, Landroid/support/v4/dj0;->for([BI)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 5
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private class(Ljava/io/RandomAccessFile;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "I)",
            "Ljava/util/List<",
            "Landroid/support/v4/aa0;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    if-lez p2, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_1
    new-array v0, p2, [B

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 4
    :try_start_0
    invoke-direct {p0, v0, p2}, Landroid/support/v4/dj0;->for([BI)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 5
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private const(Ljava/io/InputStream;Landroid/support/v4/mu0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/support/v4/transient;->break()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/support/v4/dj0;->catch(Ljava/io/InputStream;I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/transient;->continue(Ljava/util/List;)V

    return-void
.end method

.method private do(Landroid/support/v4/rk2;)J
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/rk2;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/rk2;->break()Landroid/support/v4/oj2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/oj2;->this()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/w70;->goto()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method private final(Ljava/io/RandomAccessFile;Landroid/support/v4/oa0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/support/v4/transient;->break()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/support/v4/dj0;->class(Ljava/io/RandomAccessFile;I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/transient;->continue(Ljava/util/List;)V

    return-void
.end method

.method private for([BI)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "Landroid/support/v4/aa0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 2
    new-instance v3, Landroid/support/v4/aa0;

    invoke-direct {v3}, Landroid/support/v4/aa0;-><init>()V

    .line 3
    iget-object v4, p0, Landroid/support/v4/dj0;->if:Landroid/support/v4/jl1;

    invoke-virtual {v4, p1, v2}, Landroid/support/v4/jl1;->const([BI)I

    move-result v4

    int-to-long v4, v4

    .line 4
    invoke-virtual {v3, v4, v5}, Landroid/support/v4/aa0;->else(J)V

    add-int/lit8 v2, v2, 0x2

    .line 5
    iget-object v4, p0, Landroid/support/v4/dj0;->if:Landroid/support/v4/jl1;

    invoke-virtual {v4, p1, v2}, Landroid/support/v4/jl1;->const([BI)I

    move-result v4

    .line 6
    invoke-virtual {v3, v4}, Landroid/support/v4/aa0;->goto(I)V

    add-int/lit8 v2, v2, 0x2

    if-lez v4, :cond_0

    .line 7
    new-array v5, v4, [B

    .line 8
    invoke-static {p1, v2, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    invoke-virtual {v3, v5}, Landroid/support/v4/aa0;->case([B)V

    :cond_0
    add-int/2addr v2, v4

    .line 10
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private goto(Ljava/io/RandomAccessFile;Landroid/support/v4/jl1;)Landroid/support/v4/wf;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    new-instance v3, Landroid/support/v4/wf;

    invoke-direct {v3}, Landroid/support/v4/wf;-><init>()V

    .line 2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v5, v0, Landroid/support/v4/dj0;->do:Landroid/support/v4/rk2;

    invoke-direct {v0, v5}, Landroid/support/v4/dj0;->if(Landroid/support/v4/rk2;)J

    move-result-wide v5

    .line 4
    iget-object v7, v0, Landroid/support/v4/dj0;->do:Landroid/support/v4/rk2;

    invoke-direct {v0, v7}, Landroid/support/v4/dj0;->do(Landroid/support/v4/rk2;)J

    move-result-wide v7

    .line 5
    iget-object v9, v0, Landroid/support/v4/dj0;->do:Landroid/support/v4/rk2;

    invoke-virtual {v9}, Landroid/support/v4/rk2;->final()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 6
    iget-object v5, v0, Landroid/support/v4/dj0;->do:Landroid/support/v4/rk2;

    invoke-virtual {v5}, Landroid/support/v4/rk2;->break()Landroid/support/v4/oj2;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Landroid/support/v4/oj2;->case()J

    move-result-wide v5

    .line 8
    iget-object v7, v0, Landroid/support/v4/dj0;->do:Landroid/support/v4/rk2;

    invoke-virtual {v7}, Landroid/support/v4/rk2;->break()Landroid/support/v4/oj2;

    move-result-object v7

    .line 9
    invoke-virtual {v7}, Landroid/support/v4/oj2;->this()J

    move-result-wide v7

    long-to-int v8, v7

    int-to-long v7, v8

    .line 10
    :cond_0
    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v5, 0x2

    new-array v6, v5, [B

    const/4 v9, 0x4

    new-array v10, v9, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    int-to-long v13, v12

    cmp-long v15, v13, v7

    if-gez v15, :cond_9

    .line 11
    new-instance v13, Landroid/support/v4/oa0;

    invoke-direct {v13}, Landroid/support/v4/oa0;-><init>()V

    .line 12
    invoke-virtual {v2, v1}, Landroid/support/v4/jl1;->for(Ljava/io/RandomAccessFile;)I

    move-result v14

    int-to-long v14, v14

    sget-object v9, Landroid/support/v4/ej0;->CENTRAL_DIRECTORY:Landroid/support/v4/ej0;

    invoke-virtual {v9}, Landroid/support/v4/ej0;->getValue()J

    move-result-wide v16

    const/16 v18, 0x1

    cmp-long v19, v14, v16

    if-nez v19, :cond_8

    .line 13
    invoke-virtual {v13, v9}, Landroid/support/v4/qk2;->if(Landroid/support/v4/ej0;)V

    .line 14
    invoke-virtual {v2, v1}, Landroid/support/v4/jl1;->class(Ljava/io/RandomAccessFile;)I

    move-result v9

    invoke-virtual {v13, v9}, Landroid/support/v4/oa0;->o(I)V

    .line 15
    invoke-virtual {v2, v1}, Landroid/support/v4/jl1;->class(Ljava/io/RandomAccessFile;)I

    move-result v9

    invoke-virtual {v13, v9}, Landroid/support/v4/transient;->synchronized(I)V

    new-array v9, v5, [B

    .line 16
    invoke-virtual {v1, v9}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 17
    aget-byte v14, v9, v11

    invoke-static {v14, v11}, Landroid/support/v4/b9;->do(BI)Z

    move-result v14

    invoke-virtual {v13, v14}, Landroid/support/v4/transient;->private(Z)V

    .line 18
    aget-byte v14, v9, v11

    const/4 v15, 0x3

    invoke-static {v14, v15}, Landroid/support/v4/b9;->do(BI)Z

    move-result v14

    invoke-virtual {v13, v14}, Landroid/support/v4/transient;->finally(Z)V

    .line 19
    aget-byte v14, v9, v18

    invoke-static {v14, v15}, Landroid/support/v4/b9;->do(BI)Z

    move-result v14

    invoke-virtual {v13, v14}, Landroid/support/v4/transient;->protected(Z)V

    .line 20
    invoke-virtual {v9}, [B->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-virtual {v13, v9}, Landroid/support/v4/transient;->transient([B)V

    .line 21
    invoke-virtual {v2, v1}, Landroid/support/v4/jl1;->class(Ljava/io/RandomAccessFile;)I

    move-result v9

    invoke-static {v9}, Landroid/support/v4/hq;->getCompressionMethodFromCode(I)Landroid/support/v4/hq;

    move-result-object v9

    invoke-virtual {v13, v9}, Landroid/support/v4/transient;->throws(Landroid/support/v4/hq;)V

    .line 22
    invoke-virtual {v2, v1}, Landroid/support/v4/jl1;->for(Ljava/io/RandomAccessFile;)I

    move-result v9

    int-to-long v14, v9

    invoke-virtual {v13, v14, v15}, Landroid/support/v4/transient;->implements(J)V

    .line 23
    invoke-virtual {v1, v10}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 24
    invoke-virtual {v2, v10, v11}, Landroid/support/v4/jl1;->break([BI)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Landroid/support/v4/transient;->default(J)V

    .line 25
    invoke-virtual {v13, v10}, Landroid/support/v4/transient;->extends([B)V

    const/4 v9, 0x4

    .line 26
    invoke-virtual {v2, v1, v9}, Landroid/support/v4/jl1;->this(Ljava/io/RandomAccessFile;I)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Landroid/support/v4/transient;->switch(J)V

    .line 27
    invoke-virtual {v2, v1, v9}, Landroid/support/v4/jl1;->this(Ljava/io/RandomAccessFile;I)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Landroid/support/v4/transient;->instanceof(J)V

    .line 28
    invoke-virtual {v2, v1}, Landroid/support/v4/jl1;->class(Ljava/io/RandomAccessFile;)I

    move-result v14

    .line 29
    invoke-virtual {v13, v14}, Landroid/support/v4/transient;->interface(I)V

    .line 30
    invoke-virtual {v2, v1}, Landroid/support/v4/jl1;->class(Ljava/io/RandomAccessFile;)I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/support/v4/transient;->strictfp(I)V

    .line 31
    invoke-virtual {v2, v1}, Landroid/support/v4/jl1;->class(Ljava/io/RandomAccessFile;)I

    move-result v15

    .line 32
    invoke-virtual {v13, v15}, Landroid/support/v4/oa0;->l(I)V

    .line 33
    invoke-virtual {v2, v1}, Landroid/support/v4/jl1;->class(Ljava/io/RandomAccessFile;)I

    move-result v9

    invoke-virtual {v13, v9}, Landroid/support/v4/oa0;->i(I)V

    .line 34
    invoke-virtual {v1, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 35
    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-virtual {v13, v9}, Landroid/support/v4/oa0;->m([B)V

    .line 36
    invoke-virtual {v1, v10}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 37
    invoke-virtual {v10}, [B->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-virtual {v13, v9}, Landroid/support/v4/oa0;->j([B)V

    .line 38
    invoke-virtual {v1, v10}, Ljava/io/RandomAccessFile;->readFully([B)V

    move-object/from16 v16, v6

    .line 39
    invoke-virtual {v2, v10, v11}, Landroid/support/v4/jl1;->break([BI)J

    move-result-wide v5

    invoke-virtual {v13, v5, v6}, Landroid/support/v4/oa0;->n(J)V

    if-lez v14, :cond_4

    .line 40
    new-array v5, v14, [B

    .line 41
    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 42
    invoke-virtual {v13}, Landroid/support/v4/transient;->return()Z

    move-result v6

    invoke-static {v5, v6}, Landroid/support/v4/fj0;->do([BZ)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":\\"

    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 44
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v9, 0x2

    add-int/2addr v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v9, 0x2

    .line 45
    :goto_1
    invoke-virtual {v13, v5}, Landroid/support/v4/transient;->volatile(Ljava/lang/String;)V

    const-string v6, "/"

    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v13, v5}, Landroid/support/v4/transient;->package(Z)V

    goto :goto_4

    :cond_4
    const/4 v9, 0x2

    const/4 v5, 0x0

    .line 47
    invoke-virtual {v13, v5}, Landroid/support/v4/transient;->volatile(Ljava/lang/String;)V

    .line 48
    :goto_4
    invoke-direct {v0, v1, v13}, Landroid/support/v4/dj0;->final(Ljava/io/RandomAccessFile;Landroid/support/v4/oa0;)V

    .line 49
    invoke-direct {v0, v13, v2}, Landroid/support/v4/dj0;->native(Landroid/support/v4/oa0;Landroid/support/v4/jl1;)V

    .line 50
    invoke-direct {v0, v13, v2}, Landroid/support/v4/dj0;->try(Landroid/support/v4/oa0;Landroid/support/v4/jl1;)V

    if-lez v15, :cond_5

    .line 51
    new-array v5, v15, [B

    .line 52
    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 53
    invoke-virtual {v13}, Landroid/support/v4/transient;->return()Z

    move-result v6

    invoke-static {v5, v6}, Landroid/support/v4/fj0;->do([BZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/support/v4/oa0;->k(Ljava/lang/String;)V

    .line 54
    :cond_5
    invoke-virtual {v13}, Landroid/support/v4/transient;->public()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 55
    invoke-virtual {v13}, Landroid/support/v4/transient;->for()Landroid/support/v4/goto;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 56
    sget-object v5, Landroid/support/v4/t70;->AES:Landroid/support/v4/t70;

    invoke-virtual {v13, v5}, Landroid/support/v4/transient;->abstract(Landroid/support/v4/t70;)V

    goto :goto_5

    .line 57
    :cond_6
    sget-object v5, Landroid/support/v4/t70;->ZIP_STANDARD:Landroid/support/v4/t70;

    invoke-virtual {v13, v5}, Landroid/support/v4/transient;->abstract(Landroid/support/v4/t70;)V

    .line 58
    :cond_7
    :goto_5
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, v16

    const/4 v5, 0x2

    const/4 v9, 0x4

    goto/16 :goto_0

    .line 59
    :cond_8
    new-instance v1, Landroid/support/v4/rj2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected central directory entry not found (#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_9
    invoke-virtual {v3, v4}, Landroid/support/v4/wf;->new(Ljava/util/List;)V

    .line 61
    new-instance v4, Landroid/support/v4/c10;

    invoke-direct {v4}, Landroid/support/v4/c10;-><init>()V

    .line 62
    invoke-virtual {v2, v1}, Landroid/support/v4/jl1;->for(Ljava/io/RandomAccessFile;)I

    move-result v5

    int-to-long v5, v5

    sget-object v7, Landroid/support/v4/ej0;->DIGITAL_SIGNATURE:Landroid/support/v4/ej0;

    invoke-virtual {v7}, Landroid/support/v4/ej0;->getValue()J

    move-result-wide v8

    cmp-long v10, v5, v8

    if-nez v10, :cond_a

    .line 63
    invoke-virtual {v4, v7}, Landroid/support/v4/qk2;->if(Landroid/support/v4/ej0;)V

    .line 64
    invoke-virtual {v2, v1}, Landroid/support/v4/jl1;->class(Ljava/io/RandomAccessFile;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/support/v4/c10;->case(I)V

    .line 65
    invoke-virtual {v4}, Landroid/support/v4/c10;->new()I

    move-result v2

    if-lez v2, :cond_a

    .line 66
    invoke-virtual {v4}, Landroid/support/v4/c10;->new()I

    move-result v2

    new-array v2, v2, [B

    .line 67
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 68
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v1}, Landroid/support/v4/c10;->try(Ljava/lang/String;)V

    :cond_a
    return-object v3
.end method

.method private if(Landroid/support/v4/rk2;)J
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/rk2;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/rk2;->break()Landroid/support/v4/oj2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/oj2;->case()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/w70;->case()J

    move-result-wide v0

    return-wide v0
.end method

.method private import(Ljava/util/List;Landroid/support/v4/jl1;)Landroid/support/v4/pj2;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/aa0;",
            ">;",
            "Landroid/support/v4/jl1;",
            ")",
            "Landroid/support/v4/pj2;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/aa0;

    if-nez v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    sget-object v1, Landroid/support/v4/ej0;->ZIP64_EXTRA_FIELD_SIGNATURE:Landroid/support/v4/ej0;

    invoke-virtual {v1}, Landroid/support/v4/ej0;->getValue()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/support/v4/aa0;->new()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 3
    new-instance p1, Landroid/support/v4/pj2;

    invoke-direct {p1}, Landroid/support/v4/pj2;-><init>()V

    .line 4
    invoke-virtual {v0}, Landroid/support/v4/aa0;->for()[B

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Landroid/support/v4/aa0;->try()I

    move-result v2

    if-lez v2, :cond_6

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0}, Landroid/support/v4/aa0;->try()I

    move-result v3

    if-lez v3, :cond_2

    .line 7
    invoke-virtual {p2, v1, v2}, Landroid/support/v4/jl1;->break([BI)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/support/v4/pj2;->class(J)V

    const/16 v2, 0x8

    .line 8
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/aa0;->try()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 9
    invoke-virtual {p2, v1, v2}, Landroid/support/v4/jl1;->break([BI)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/support/v4/pj2;->goto(J)V

    add-int/lit8 v2, v2, 0x8

    .line 10
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/aa0;->try()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 11
    invoke-virtual {p2, v1, v2}, Landroid/support/v4/jl1;->break([BI)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/support/v4/pj2;->break(J)V

    add-int/lit8 v2, v2, 0x8

    .line 12
    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/aa0;->try()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 13
    invoke-virtual {p2, v1, v2}, Landroid/support/v4/jl1;->try([BI)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v4/pj2;->this(I)V

    :cond_5
    return-object p1

    .line 14
    :cond_6
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "No data present for Zip64Extended info"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method private native(Landroid/support/v4/oa0;Landroid/support/v4/jl1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/transient;->this()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/transient;->this()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/transient;->this()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/support/v4/dj0;->import(Ljava/util/List;Landroid/support/v4/jl1;)Landroid/support/v4/pj2;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1, p2}, Landroid/support/v4/transient;->a(Landroid/support/v4/pj2;)V

    .line 4
    invoke-virtual {p2}, Landroid/support/v4/pj2;->else()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/transient;->instanceof(J)V

    .line 5
    invoke-virtual {p2}, Landroid/support/v4/pj2;->for()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/transient;->switch(J)V

    .line 6
    invoke-virtual {p2}, Landroid/support/v4/pj2;->try()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/oa0;->n(J)V

    .line 7
    invoke-virtual {p2}, Landroid/support/v4/pj2;->new()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v4/oa0;->i(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private new(Ljava/util/List;Landroid/support/v4/jl1;)Landroid/support/v4/goto;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/aa0;",
            ">;",
            "Landroid/support/v4/jl1;",
            ")",
            "Landroid/support/v4/goto;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/aa0;

    if-nez v1, :cond_2

    goto :goto_0

    .line 2
    :cond_2
    invoke-virtual {v1}, Landroid/support/v4/aa0;->new()J

    move-result-wide v2

    sget-object v4, Landroid/support/v4/ej0;->AES_EXTRA_DATA_RECORD:Landroid/support/v4/ej0;

    invoke-virtual {v4}, Landroid/support/v4/ej0;->getValue()J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-nez v7, :cond_1

    .line 3
    invoke-virtual {v1}, Landroid/support/v4/aa0;->for()[B

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4
    new-instance p1, Landroid/support/v4/goto;

    invoke-direct {p1}, Landroid/support/v4/goto;-><init>()V

    .line 5
    invoke-virtual {p1, v4}, Landroid/support/v4/qk2;->if(Landroid/support/v4/ej0;)V

    .line 6
    invoke-virtual {v1}, Landroid/support/v4/aa0;->try()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/goto;->catch(I)V

    .line 7
    invoke-virtual {v1}, Landroid/support/v4/aa0;->for()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p2, v0, v1}, Landroid/support/v4/jl1;->const([BI)I

    move-result v2

    invoke-static {v2}, Landroid/support/v4/x0;->getFromVersionNumber(I)Landroid/support/v4/x0;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v4/goto;->this(Landroid/support/v4/x0;)V

    const/4 v2, 0x2

    new-array v3, v2, [B

    .line 9
    invoke-static {v0, v2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v1}, Landroid/support/v4/goto;->class(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 11
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Landroid/support/v4/w0;->getAesKeyStrengthFromRawCode(I)Landroid/support/v4/w0;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v4/goto;->goto(Landroid/support/v4/w0;)V

    const/4 v1, 0x5

    .line 12
    invoke-virtual {p2, v0, v1}, Landroid/support/v4/jl1;->const([BI)I

    move-result p2

    invoke-static {p2}, Landroid/support/v4/hq;->getCompressionMethodFromCode(I)Landroid/support/v4/hq;

    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Landroid/support/v4/goto;->break(Landroid/support/v4/hq;)V

    return-object p1

    .line 14
    :cond_3
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "corrupt AES extra data records"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v0
.end method

.method private public(Landroid/support/v4/mu0;Landroid/support/v4/jl1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/transient;->this()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/transient;->this()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/transient;->this()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/support/v4/dj0;->import(Ljava/util/List;Landroid/support/v4/jl1;)Landroid/support/v4/pj2;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1, p2}, Landroid/support/v4/transient;->a(Landroid/support/v4/pj2;)V

    .line 4
    invoke-virtual {p2}, Landroid/support/v4/pj2;->else()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/transient;->instanceof(J)V

    .line 5
    invoke-virtual {p2}, Landroid/support/v4/pj2;->for()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/transient;->switch(J)V

    :cond_2
    :goto_0
    return-void

    .line 6
    :cond_3
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "file header is null in reading Zip64 Extended Info"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private return(Ljava/io/RandomAccessFile;Landroid/support/v4/jl1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    sub-long/2addr v0, v2

    :goto_0
    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 3
    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->for(Ljava/io/RandomAccessFile;)I

    move-result v0

    int-to-long v0, v0

    sget-object v4, Landroid/support/v4/ej0;->END_OF_CENTRAL_DIRECTORY:Landroid/support/v4/ej0;

    invoke-virtual {v4}, Landroid/support/v4/ej0;->getValue()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    sub-long/2addr v0, v2

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x8

    sub-long/2addr v0, v4

    sub-long/2addr v0, v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method private throw(Ljava/io/RandomAccessFile;Landroid/support/v4/jl1;)Landroid/support/v4/oj2;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/dj0;->do:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->this()Landroid/support/v4/nj2;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Landroid/support/v4/dj0;->do:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->this()Landroid/support/v4/nj2;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/nj2;->new()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 5
    new-instance v0, Landroid/support/v4/oj2;

    invoke-direct {v0}, Landroid/support/v4/oj2;-><init>()V

    .line 6
    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->for(Ljava/io/RandomAccessFile;)I

    move-result v1

    int-to-long v4, v1

    .line 7
    sget-object v1, Landroid/support/v4/ej0;->ZIP64_END_CENTRAL_DIRECTORY_RECORD:Landroid/support/v4/ej0;

    invoke-virtual {v1}, Landroid/support/v4/ej0;->getValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    .line 8
    invoke-virtual {v0, v1}, Landroid/support/v4/qk2;->if(Landroid/support/v4/ej0;)V

    .line 9
    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->goto(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/oj2;->import(J)V

    .line 10
    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->class(Ljava/io/RandomAccessFile;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/oj2;->return(I)V

    .line 11
    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->class(Ljava/io/RandomAccessFile;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/oj2;->static(I)V

    .line 12
    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->for(Ljava/io/RandomAccessFile;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/oj2;->final(I)V

    .line 13
    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->for(Ljava/io/RandomAccessFile;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/oj2;->super(I)V

    .line 14
    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->goto(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    .line 15
    invoke-virtual {v0, v4, v5}, Landroid/support/v4/oj2;->public(J)V

    .line 16
    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->goto(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/oj2;->native(J)V

    .line 17
    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->goto(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/oj2;->while(J)V

    .line 18
    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->goto(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    .line 19
    invoke-virtual {v0, v4, v5}, Landroid/support/v4/oj2;->throw(J)V

    .line 20
    invoke-virtual {v0}, Landroid/support/v4/oj2;->goto()J

    move-result-wide v4

    const-wide/16 v6, 0x2c

    sub-long/2addr v4, v6

    cmp-long p2, v4, v2

    if-lez p2, :cond_0

    long-to-int p2, v4

    .line 21
    new-array p2, p2, [B

    .line 22
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 23
    invoke-virtual {v0, p2}, Landroid/support/v4/oj2;->const([B)V

    :cond_0
    return-object v0

    .line 24
    :cond_1
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "invalid signature for zip64 end of central directory record"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_2
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "invalid offset for start of end of central directory record"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_3
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "invalid zip64 end of central directory locator"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private try(Landroid/support/v4/oa0;Landroid/support/v4/jl1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/transient;->this()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/transient;->this()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/transient;->this()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/support/v4/dj0;->new(Ljava/util/List;Landroid/support/v4/jl1;)Landroid/support/v4/goto;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p1, p2}, Landroid/support/v4/transient;->static(Landroid/support/v4/goto;)V

    .line 4
    sget-object p2, Landroid/support/v4/t70;->AES:Landroid/support/v4/t70;

    invoke-virtual {p1, p2}, Landroid/support/v4/transient;->abstract(Landroid/support/v4/t70;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private while(Ljava/io/RandomAccessFile;Landroid/support/v4/jl1;)Landroid/support/v4/nj2;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/nj2;

    invoke-direct {v0}, Landroid/support/v4/nj2;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/support/v4/dj0;->return(Ljava/io/RandomAccessFile;Landroid/support/v4/jl1;)V

    .line 3
    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->for(Ljava/io/RandomAccessFile;)I

    move-result v1

    int-to-long v1, v1

    .line 4
    sget-object v3, Landroid/support/v4/ej0;->ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Landroid/support/v4/ej0;

    invoke-virtual {v3}, Landroid/support/v4/ej0;->getValue()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_0

    .line 5
    iget-object v1, p0, Landroid/support/v4/dj0;->do:Landroid/support/v4/rk2;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/rk2;->finally(Z)V

    .line 6
    invoke-virtual {v0, v3}, Landroid/support/v4/qk2;->if(Landroid/support/v4/ej0;)V

    .line 7
    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->for(Ljava/io/RandomAccessFile;)I

    move-result v1

    .line 8
    invoke-virtual {v0, v1}, Landroid/support/v4/nj2;->case(I)V

    .line 9
    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->goto(Ljava/io/RandomAccessFile;)J

    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/nj2;->else(J)V

    .line 11
    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->for(Ljava/io/RandomAccessFile;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/nj2;->goto(I)V

    return-object v0

    .line 12
    :cond_0
    iget-object p1, p0, Landroid/support/v4/dj0;->do:Landroid/support/v4/rk2;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v4/rk2;->finally(Z)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public else(Ljava/io/RandomAccessFile;)Landroid/support/v4/rk2;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/rk2;

    invoke-direct {v0}, Landroid/support/v4/rk2;-><init>()V

    iput-object v0, p0, Landroid/support/v4/dj0;->do:Landroid/support/v4/rk2;

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/dj0;->if:Landroid/support/v4/jl1;

    invoke-direct {p0, p1, v1}, Landroid/support/v4/dj0;->break(Ljava/io/RandomAccessFile;Landroid/support/v4/jl1;)Landroid/support/v4/w70;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/rk2;->native(Landroid/support/v4/w70;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-object v0, p0, Landroid/support/v4/dj0;->do:Landroid/support/v4/rk2;

    iget-object v1, p0, Landroid/support/v4/dj0;->if:Landroid/support/v4/jl1;

    invoke-direct {p0, p1, v1}, Landroid/support/v4/dj0;->while(Ljava/io/RandomAccessFile;Landroid/support/v4/jl1;)Landroid/support/v4/nj2;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/rk2;->default(Landroid/support/v4/nj2;)V

    .line 4
    iget-object v0, p0, Landroid/support/v4/dj0;->do:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->final()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Landroid/support/v4/dj0;->do:Landroid/support/v4/rk2;

    iget-object v1, p0, Landroid/support/v4/dj0;->if:Landroid/support/v4/jl1;

    invoke-direct {p0, p1, v1}, Landroid/support/v4/dj0;->throw(Ljava/io/RandomAccessFile;Landroid/support/v4/jl1;)Landroid/support/v4/oj2;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/rk2;->extends(Landroid/support/v4/oj2;)V

    .line 6
    iget-object v0, p0, Landroid/support/v4/dj0;->do:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->break()Landroid/support/v4/oj2;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/dj0;->do:Landroid/support/v4/rk2;

    .line 7
    invoke-virtual {v0}, Landroid/support/v4/rk2;->break()Landroid/support/v4/oj2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/oj2;->new()I

    move-result v0

    if-lez v0, :cond_0

    .line 8
    iget-object v0, p0, Landroid/support/v4/dj0;->do:Landroid/support/v4/rk2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/rk2;->static(Z)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Landroid/support/v4/dj0;->do:Landroid/support/v4/rk2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/rk2;->static(Z)V

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v4/dj0;->do:Landroid/support/v4/rk2;

    iget-object v1, p0, Landroid/support/v4/dj0;->if:Landroid/support/v4/jl1;

    invoke-direct {p0, p1, v1}, Landroid/support/v4/dj0;->goto(Ljava/io/RandomAccessFile;Landroid/support/v4/jl1;)Landroid/support/v4/wf;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/rk2;->throw(Landroid/support/v4/wf;)V

    .line 11
    iget-object p1, p0, Landroid/support/v4/dj0;->do:Landroid/support/v4/rk2;

    return-object p1

    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Landroid/support/v4/rj2;

    const-string v1, "Zip headers not found. Probably not a zip file or a corrupted zip file"

    invoke-direct {v0, v1, p1}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public super(Ljava/io/InputStream;)Landroid/support/v4/mu0;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/mu0;

    invoke-direct {v0}, Landroid/support/v4/mu0;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 2
    iget-object v3, p0, Landroid/support/v4/dj0;->if:Landroid/support/v4/jl1;

    invoke-virtual {v3, p1}, Landroid/support/v4/jl1;->if(Ljava/io/InputStream;)I

    move-result v3

    int-to-long v3, v3

    .line 3
    sget-object v5, Landroid/support/v4/ej0;->LOCAL_FILE_HEADER:Landroid/support/v4/ej0;

    invoke-virtual {v5}, Landroid/support/v4/ej0;->getValue()J

    move-result-wide v6

    const/4 v8, 0x0

    cmp-long v9, v3, v6

    if-eqz v9, :cond_0

    return-object v8

    .line 4
    :cond_0
    invoke-virtual {v0, v5}, Landroid/support/v4/qk2;->if(Landroid/support/v4/ej0;)V

    .line 5
    iget-object v3, p0, Landroid/support/v4/dj0;->if:Landroid/support/v4/jl1;

    invoke-virtual {v3, p1}, Landroid/support/v4/jl1;->catch(Ljava/io/InputStream;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v4/transient;->synchronized(I)V

    const/4 v3, 0x2

    new-array v4, v3, [B

    .line 6
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ne v5, v3, :cond_9

    const/4 v5, 0x0

    .line 7
    aget-byte v6, v4, v5

    invoke-static {v6, v5}, Landroid/support/v4/b9;->do(BI)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/support/v4/transient;->private(Z)V

    .line 8
    aget-byte v6, v4, v5

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/support/v4/b9;->do(BI)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/support/v4/transient;->finally(Z)V

    const/4 v6, 0x1

    .line 9
    aget-byte v9, v4, v6

    invoke-static {v9, v7}, Landroid/support/v4/b9;->do(BI)Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/support/v4/transient;->protected(Z)V

    .line 10
    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v0, v4}, Landroid/support/v4/transient;->transient([B)V

    .line 11
    iget-object v4, p0, Landroid/support/v4/dj0;->if:Landroid/support/v4/jl1;

    .line 12
    invoke-virtual {v4, p1}, Landroid/support/v4/jl1;->catch(Ljava/io/InputStream;)I

    move-result v4

    .line 13
    invoke-static {v4}, Landroid/support/v4/hq;->getCompressionMethodFromCode(I)Landroid/support/v4/hq;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/transient;->throws(Landroid/support/v4/hq;)V

    .line 14
    iget-object v4, p0, Landroid/support/v4/dj0;->if:Landroid/support/v4/jl1;

    invoke-virtual {v4, p1}, Landroid/support/v4/jl1;->if(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v9, v4

    invoke-virtual {v0, v9, v10}, Landroid/support/v4/transient;->implements(J)V

    .line 15
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 16
    iget-object v4, p0, Landroid/support/v4/dj0;->if:Landroid/support/v4/jl1;

    invoke-virtual {v4, v2, v5}, Landroid/support/v4/jl1;->break([BI)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Landroid/support/v4/transient;->default(J)V

    .line 17
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v0, v2}, Landroid/support/v4/transient;->extends([B)V

    .line 18
    iget-object v2, p0, Landroid/support/v4/dj0;->if:Landroid/support/v4/jl1;

    invoke-virtual {v2, p1, v1}, Landroid/support/v4/jl1;->else(Ljava/io/InputStream;I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Landroid/support/v4/transient;->switch(J)V

    .line 19
    iget-object v2, p0, Landroid/support/v4/dj0;->if:Landroid/support/v4/jl1;

    invoke-virtual {v2, p1, v1}, Landroid/support/v4/jl1;->else(Ljava/io/InputStream;I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/transient;->instanceof(J)V

    .line 20
    iget-object v1, p0, Landroid/support/v4/dj0;->if:Landroid/support/v4/jl1;

    invoke-virtual {v1, p1}, Landroid/support/v4/jl1;->catch(Ljava/io/InputStream;)I

    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/support/v4/transient;->interface(I)V

    .line 22
    iget-object v2, p0, Landroid/support/v4/dj0;->if:Landroid/support/v4/jl1;

    invoke-virtual {v2, p1}, Landroid/support/v4/jl1;->catch(Ljava/io/InputStream;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v4/transient;->strictfp(I)V

    if-lez v1, :cond_5

    .line 23
    new-array v1, v1, [B

    .line 24
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 25
    invoke-virtual {v0}, Landroid/support/v4/transient;->return()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/fj0;->do([BZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "file.separator"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 28
    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v4/transient;->volatile(Ljava/lang/String;)V

    const-string v2, "/"

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :cond_3
    :goto_0
    invoke-virtual {v0, v6}, Landroid/support/v4/transient;->package(Z)V

    goto :goto_1

    .line 30
    :cond_4
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "file name is null, cannot assign file name to local file header"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_5
    invoke-virtual {v0, v8}, Landroid/support/v4/transient;->volatile(Ljava/lang/String;)V

    .line 32
    :goto_1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/dj0;->const(Ljava/io/InputStream;Landroid/support/v4/mu0;)V

    .line 33
    iget-object p1, p0, Landroid/support/v4/dj0;->if:Landroid/support/v4/jl1;

    invoke-direct {p0, v0, p1}, Landroid/support/v4/dj0;->public(Landroid/support/v4/mu0;Landroid/support/v4/jl1;)V

    .line 34
    iget-object p1, p0, Landroid/support/v4/dj0;->if:Landroid/support/v4/jl1;

    invoke-direct {p0, v0, p1}, Landroid/support/v4/dj0;->case(Landroid/support/v4/mu0;Landroid/support/v4/jl1;)V

    .line 35
    invoke-virtual {v0}, Landroid/support/v4/transient;->public()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 36
    invoke-virtual {v0}, Landroid/support/v4/transient;->goto()Landroid/support/v4/t70;

    move-result-object p1

    sget-object v1, Landroid/support/v4/t70;->AES:Landroid/support/v4/t70;

    if-ne p1, v1, :cond_6

    goto :goto_2

    .line 37
    :cond_6
    invoke-virtual {v0}, Landroid/support/v4/transient;->const()[B

    move-result-object p1

    aget-byte p1, p1, v5

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 38
    sget-object p1, Landroid/support/v4/t70;->ZIP_STANDARD_VARIANT_STRONG:Landroid/support/v4/t70;

    invoke-virtual {v0, p1}, Landroid/support/v4/transient;->abstract(Landroid/support/v4/t70;)V

    goto :goto_2

    .line 39
    :cond_7
    sget-object p1, Landroid/support/v4/t70;->ZIP_STANDARD:Landroid/support/v4/t70;

    invoke-virtual {v0, p1}, Landroid/support/v4/transient;->abstract(Landroid/support/v4/t70;)V

    :cond_8
    :goto_2
    return-object v0

    .line 40
    :cond_9
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "Could not read enough bytes for generalPurposeFlags"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public this(Ljava/io/InputStream;Z)Landroid/support/v4/rw;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/rw;

    invoke-direct {v0}, Landroid/support/v4/rw;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 2
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 3
    iget-object v2, p0, Landroid/support/v4/dj0;->if:Landroid/support/v4/jl1;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/jl1;->break([BI)J

    move-result-wide v4

    .line 4
    sget-object v2, Landroid/support/v4/ej0;->EXTRA_DATA_RECORD:Landroid/support/v4/ej0;

    invoke-virtual {v2}, Landroid/support/v4/ej0;->getValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Landroid/support/v4/qk2;->if(Landroid/support/v4/ej0;)V

    .line 6
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 7
    iget-object v2, p0, Landroid/support/v4/dj0;->if:Landroid/support/v4/jl1;

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/jl1;->break([BI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/rw;->else(J)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, v4, v5}, Landroid/support/v4/rw;->else(J)V

    :goto_0
    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p0, Landroid/support/v4/dj0;->if:Landroid/support/v4/jl1;

    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->case(Ljava/io/InputStream;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/rw;->case(J)V

    .line 10
    iget-object p2, p0, Landroid/support/v4/dj0;->if:Landroid/support/v4/jl1;

    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->case(Ljava/io/InputStream;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/rw;->goto(J)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object p2, p0, Landroid/support/v4/dj0;->if:Landroid/support/v4/jl1;

    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->if(Ljava/io/InputStream;)I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/rw;->case(J)V

    .line 12
    iget-object p2, p0, Landroid/support/v4/dj0;->if:Landroid/support/v4/jl1;

    invoke-virtual {p2, p1}, Landroid/support/v4/jl1;->if(Ljava/io/InputStream;)I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/rw;->goto(J)V

    :goto_1
    return-object v0
.end method
