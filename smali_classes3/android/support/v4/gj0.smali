.class public Landroid/support/v4/gj0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final for:S = 0x1cs


# instance fields
.field private do:Landroid/support/v4/jl1;

.field private if:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v4/jl1;

    invoke-direct {v0}, Landroid/support/v4/jl1;-><init>()V

    iput-object v0, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Landroid/support/v4/gj0;->if:[B

    return-void
.end method

.method private break(Landroid/support/v4/rk2;IJLjava/io/ByteArrayOutputStream;Landroid/support/v4/jl1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 1
    sget-object v1, Landroid/support/v4/ej0;->END_OF_CENTRAL_DIRECTORY:Landroid/support/v4/ej0;

    invoke-virtual {v1}, Landroid/support/v4/ej0;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {p6, p5, v2}, Landroid/support/v4/jl1;->super(Ljava/io/OutputStream;I)V

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/w70;->new()I

    move-result v1

    .line 3
    invoke-virtual {p6, p5, v1}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 4
    invoke-virtual {p1}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/w70;->try()I

    move-result v1

    .line 5
    invoke-virtual {p6, p5, v1}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 6
    invoke-virtual {p1}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    .line 7
    invoke-virtual {p1}, Landroid/support/v4/rk2;->const()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v3

    .line 9
    invoke-virtual {p1}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/w70;->new()I

    move-result v4

    .line 10
    invoke-direct {p0, v3, v4}, Landroid/support/v4/gj0;->do(Ljava/util/List;I)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    const-wide/32 v5, 0xffff

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    move-wide v3, v5

    :cond_1
    long-to-int v4, v3

    .line 11
    invoke-virtual {p6, p5, v4}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    cmp-long v3, v1, v5

    if-lez v3, :cond_2

    move-wide v1, v5

    :cond_2
    long-to-int v2, v1

    .line 12
    invoke-virtual {p6, p5, v2}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 13
    invoke-virtual {p6, p5, p2}, Landroid/support/v4/jl1;->super(Ljava/io/OutputStream;I)V

    const/4 p2, 0x4

    const-wide v1, 0xffffffffL

    const/4 v3, 0x0

    cmp-long v4, p3, v1

    if-lez v4, :cond_3

    .line 14
    invoke-virtual {p6, v0, v3, v1, v2}, Landroid/support/v4/jl1;->import([BIJ)V

    .line 15
    invoke-virtual {p5, v0, v3, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p6, v0, v3, p3, p4}, Landroid/support/v4/jl1;->import([BIJ)V

    .line 17
    invoke-virtual {p5, v0, v3, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 18
    :goto_1
    invoke-virtual {p1}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/w70;->for()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {p1}, Landroid/support/v4/mj2;->try(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 20
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 21
    array-length p2, p1

    invoke-virtual {p6, p5, p2}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 22
    invoke-virtual {p5, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_2

    .line 23
    :cond_4
    invoke-virtual {p6, p5, v3}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    :goto_2
    return-void
.end method

.method private case(Landroid/support/v4/rk2;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lnet/lingala/zip4j/io/outputstream/new;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object v0

    check-cast p2, Lnet/lingala/zip4j/io/outputstream/new;

    .line 3
    invoke-virtual {p2}, Lnet/lingala/zip4j/io/outputstream/new;->for()J

    move-result-wide v1

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/w70;->const(J)V

    .line 5
    invoke-virtual {p2}, Lnet/lingala/zip4j/io/outputstream/new;->if()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/rk2;->final()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/support/v4/rk2;->break()Landroid/support/v4/oj2;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Landroid/support/v4/oj2;

    invoke-direct {v0}, Landroid/support/v4/oj2;-><init>()V

    invoke-virtual {p1, v0}, Landroid/support/v4/rk2;->extends(Landroid/support/v4/oj2;)V

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/rk2;->this()Landroid/support/v4/nj2;

    move-result-object v0

    if-nez v0, :cond_2

    .line 10
    new-instance v0, Landroid/support/v4/nj2;

    invoke-direct {v0}, Landroid/support/v4/nj2;-><init>()V

    invoke-virtual {p1, v0}, Landroid/support/v4/rk2;->default(Landroid/support/v4/nj2;)V

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/rk2;->this()Landroid/support/v4/nj2;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/nj2;->case(I)V

    .line 12
    invoke-virtual {p1}, Landroid/support/v4/rk2;->this()Landroid/support/v4/nj2;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/nj2;->goto(I)V

    .line 13
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/w70;->catch(I)V

    .line 14
    invoke-virtual {p1}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v4/w70;->class(I)V

    return-void
.end method

.method private class(Landroid/support/v4/rk2;Landroid/support/v4/oa0;Ljava/io/ByteArrayOutputStream;Landroid/support/v4/jl1;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    if-eqz p2, :cond_d

    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v4, v3, v4

    const/4 v5, 0x1

    aput-byte v4, v3, v5

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/qk2;->do()Landroid/support/v4/ej0;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/ej0;->getValue()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v2, v0, v7}, Landroid/support/v4/jl1;->super(Ljava/io/OutputStream;I)V

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/oa0;->h()I

    move-result v6

    invoke-virtual {v2, v0, v6}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/transient;->throw()I

    move-result v6

    invoke-virtual {v2, v0, v6}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/transient;->const()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/transient;->try()Landroid/support/v4/hq;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/hq;->getCode()I

    move-result v6

    invoke-virtual {v2, v0, v6}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 6
    iget-object v6, v1, Landroid/support/v4/gj0;->if:[B

    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/transient;->final()J

    move-result-wide v7

    invoke-virtual {v2, v6, v4, v7, v8}, Landroid/support/v4/jl1;->import([BIJ)V

    .line 7
    iget-object v6, v1, Landroid/support/v4/gj0;->if:[B

    const/4 v7, 0x4

    invoke-virtual {v0, v6, v4, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 8
    iget-object v6, v1, Landroid/support/v4/gj0;->if:[B

    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/transient;->case()J

    move-result-wide v8

    invoke-virtual {v2, v6, v4, v8, v9}, Landroid/support/v4/jl1;->import([BIJ)V

    .line 9
    iget-object v6, v1, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {v0, v6, v4, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 10
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/transient;->new()J

    move-result-wide v8

    const-wide v10, 0xffffffffL

    cmp-long v6, v8, v10

    if-gez v6, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/transient;->super()J

    move-result-wide v8

    cmp-long v6, v8, v10

    if-ltz v6, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v6, v1, Landroid/support/v4/gj0;->if:[B

    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/transient;->new()J

    move-result-wide v8

    invoke-virtual {v2, v6, v4, v8, v9}, Landroid/support/v4/jl1;->import([BIJ)V

    .line 12
    iget-object v6, v1, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {v0, v6, v4, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 13
    iget-object v6, v1, Landroid/support/v4/gj0;->if:[B

    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/transient;->super()J

    move-result-wide v8

    invoke-virtual {v2, v6, v4, v8, v9}, Landroid/support/v4/jl1;->import([BIJ)V

    .line 14
    iget-object v6, v1, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {v0, v6, v4, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v6, 0x0

    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    iget-object v6, v1, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {v2, v6, v4, v10, v11}, Landroid/support/v4/jl1;->import([BIJ)V

    .line 16
    iget-object v6, v1, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {v0, v6, v4, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 17
    iget-object v6, v1, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {v0, v6, v4, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v6, 0x1

    :goto_1
    new-array v8, v4, [B

    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/transient;->catch()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/support/v4/mj2;->try(Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v12, 0x3

    const-string v13, "Cp437"

    if-eqz v9, :cond_3

    .line 19
    :try_start_1
    invoke-static {v13}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    .line 20
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/transient;->const()[B

    move-result-object v9

    aget-byte v9, v9, v5

    invoke-static {v9, v12}, Landroid/support/v4/b9;->do(BI)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 21
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 22
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/transient;->catch()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 23
    :cond_3
    array-length v9, v8

    invoke-virtual {v2, v0, v9}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    new-array v9, v7, [B

    .line 24
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/oa0;->g()J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-lez v16, :cond_4

    .line 25
    iget-object v6, v1, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {v2, v6, v4, v10, v11}, Landroid/support/v4/jl1;->import([BIJ)V

    .line 26
    iget-object v6, v1, Landroid/support/v4/gj0;->if:[B

    invoke-static {v6, v4, v9, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x1

    goto :goto_2

    .line 27
    :cond_4
    iget-object v10, v1, Landroid/support/v4/gj0;->if:[B

    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/oa0;->g()J

    move-result-wide v14

    invoke-virtual {v2, v10, v4, v14, v15}, Landroid/support/v4/jl1;->import([BIJ)V

    .line 28
    iget-object v10, v1, Landroid/support/v4/gj0;->if:[B

    invoke-static {v10, v4, v9, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    if-eqz v6, :cond_5

    const/16 v7, 0x20

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    .line 29
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/transient;->for()Landroid/support/v4/goto;

    move-result-object v10

    if-eqz v10, :cond_6

    add-int/lit8 v7, v7, 0xb

    .line 30
    :cond_6
    invoke-virtual {v2, v0, v7}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 31
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/oa0;->d()Ljava/lang/String;

    move-result-object v7

    new-array v10, v4, [B

    .line 32
    invoke-static {v7}, Landroid/support/v4/mj2;->try(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 33
    invoke-static {v13}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v10

    .line 34
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/transient;->const()[B

    move-result-object v11

    aget-byte v11, v11, v5

    invoke-static {v11, v12}, Landroid/support/v4/b9;->do(BI)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 35
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 36
    :cond_7
    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    .line 37
    :cond_8
    array-length v7, v10

    invoke-virtual {v2, v0, v7}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 38
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/oa0;->b()I

    move-result v7

    invoke-virtual {v2, v0, v7}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 39
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 40
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/oa0;->c()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 41
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 42
    array-length v3, v8

    if-lez v3, :cond_9

    .line 43
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_9
    if-eqz v6, :cond_a

    move-object/from16 v3, p1

    .line 44
    invoke-virtual {v3, v5}, Landroid/support/v4/rk2;->finally(Z)V

    .line 45
    sget-object v3, Landroid/support/v4/ej0;->ZIP64_EXTRA_FIELD_SIGNATURE:Landroid/support/v4/ej0;

    .line 46
    invoke-virtual {v3}, Landroid/support/v4/ej0;->getValue()J

    move-result-wide v6

    long-to-int v3, v6

    .line 47
    invoke-virtual {v2, v0, v3}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    const/16 v3, 0x1c

    .line 48
    invoke-virtual {v2, v0, v3}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/transient;->super()J

    move-result-wide v6

    invoke-virtual {v2, v0, v6, v7}, Landroid/support/v4/jl1;->while(Ljava/io/OutputStream;J)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/transient;->new()J

    move-result-wide v6

    invoke-virtual {v2, v0, v6, v7}, Landroid/support/v4/jl1;->while(Ljava/io/OutputStream;J)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/oa0;->g()J

    move-result-wide v6

    invoke-virtual {v2, v0, v6, v7}, Landroid/support/v4/jl1;->while(Ljava/io/OutputStream;J)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/oa0;->b()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/jl1;->super(Ljava/io/OutputStream;I)V

    .line 53
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/transient;->for()Landroid/support/v4/goto;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/support/v4/transient;->for()Landroid/support/v4/goto;

    move-result-object v3

    .line 55
    invoke-virtual {v3}, Landroid/support/v4/qk2;->do()Landroid/support/v4/ej0;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/ej0;->getValue()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v2, v0, v7}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 56
    invoke-virtual {v3}, Landroid/support/v4/goto;->case()I

    move-result v6

    invoke-virtual {v2, v0, v6}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 57
    invoke-virtual {v3}, Landroid/support/v4/goto;->new()Landroid/support/v4/x0;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/x0;->getVersionNumber()I

    move-result v6

    invoke-virtual {v2, v0, v6}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 58
    invoke-virtual {v3}, Landroid/support/v4/goto;->else()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v5, v5, [B

    .line 59
    invoke-virtual {v3}, Landroid/support/v4/goto;->for()Landroid/support/v4/w0;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/w0;->getRawCode()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 60
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 61
    invoke-virtual {v3}, Landroid/support/v4/goto;->try()Landroid/support/v4/hq;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/hq;->getCode()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 62
    :cond_b
    array-length v2, v10

    if-lez v2, :cond_c

    .line 63
    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_c
    return-void

    :catch_0
    move-exception v0

    .line 64
    new-instance v2, Landroid/support/v4/rj2;

    invoke-direct {v2, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 65
    :cond_d
    new-instance v0, Landroid/support/v4/rj2;

    const-string v2, "input parameters is null, cannot write local file header"

    invoke-direct {v0, v2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private do(Ljava/util/List;I)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/oa0;",
            ">;I)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/oa0;

    .line 2
    invoke-virtual {v1}, Landroid/support/v4/oa0;->b()I

    move-result v1

    if-ne v1, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    int-to-long p1, v0

    return-wide p1

    .line 3
    :cond_2
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "file headers are null, cannot calculate number of entries on this disk"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private else(Lnet/lingala/zip4j/io/outputstream/else;Landroid/support/v4/oa0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/support/v4/transient;->super()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    const/4 v4, 0x4

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-ltz v6, :cond_1

    .line 2
    iget-object v0, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    iget-object v1, p0, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/support/v4/jl1;->import([BIJ)V

    .line 3
    iget-object v0, p0, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {p1, v0, v5, v4}, Lnet/lingala/zip4j/io/outputstream/else;->write([BII)V

    .line 4
    iget-object v0, p0, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {p1, v0, v5, v4}, Lnet/lingala/zip4j/io/outputstream/else;->write([BII)V

    .line 5
    invoke-virtual {p2}, Landroid/support/v4/transient;->class()I

    move-result v0

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    .line 6
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/io/outputstream/else;->this(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 7
    iget-object v0, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    invoke-virtual {p2}, Landroid/support/v4/transient;->super()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/jl1;->while(Ljava/io/OutputStream;J)V

    .line 8
    iget-object v0, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    invoke-virtual {p2}, Landroid/support/v4/transient;->new()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/jl1;->while(Ljava/io/OutputStream;J)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Landroid/support/v4/rj2;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to skip "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes to update LFH"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    iget-object v0, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    iget-object v1, p0, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {p2}, Landroid/support/v4/transient;->new()J

    move-result-wide v2

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/support/v4/jl1;->import([BIJ)V

    .line 11
    iget-object v0, p0, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {p1, v0, v5, v4}, Lnet/lingala/zip4j/io/outputstream/else;->write([BII)V

    .line 12
    iget-object v0, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    iget-object v1, p0, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {p2}, Landroid/support/v4/transient;->super()J

    move-result-wide v2

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/support/v4/jl1;->import([BIJ)V

    .line 13
    iget-object p2, p0, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {p1, p2, v5, v4}, Lnet/lingala/zip4j/io/outputstream/else;->write([BII)V

    :goto_0
    return-void
.end method

.method private final(Landroid/support/v4/rk2;Ljava/io/ByteArrayOutputStream;Landroid/support/v4/jl1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/support/v4/ej0;->ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Landroid/support/v4/ej0;

    invoke-virtual {v0}, Landroid/support/v4/ej0;->getValue()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p3, p2, v1}, Landroid/support/v4/jl1;->super(Ljava/io/OutputStream;I)V

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/rk2;->this()Landroid/support/v4/nj2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/nj2;->for()I

    move-result v0

    .line 3
    invoke-virtual {p3, p2, v0}, Landroid/support/v4/jl1;->super(Ljava/io/OutputStream;I)V

    .line 4
    invoke-virtual {p1}, Landroid/support/v4/rk2;->this()Landroid/support/v4/nj2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/nj2;->new()J

    move-result-wide v0

    .line 5
    invoke-virtual {p3, p2, v0, v1}, Landroid/support/v4/jl1;->while(Ljava/io/OutputStream;J)V

    .line 6
    invoke-virtual {p1}, Landroid/support/v4/rk2;->this()Landroid/support/v4/nj2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/nj2;->try()I

    move-result p1

    .line 7
    invoke-virtual {p3, p2, p1}, Landroid/support/v4/jl1;->super(Ljava/io/OutputStream;I)V

    return-void
.end method

.method private new(Ljava/io/OutputStream;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lnet/lingala/zip4j/io/outputstream/else;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lnet/lingala/zip4j/io/outputstream/else;

    invoke-virtual {p1}, Lnet/lingala/zip4j/io/outputstream/else;->if()I

    move-result p1

    return p1

    .line 3
    :cond_0
    check-cast p1, Lnet/lingala/zip4j/io/outputstream/new;

    invoke-virtual {p1}, Lnet/lingala/zip4j/io/outputstream/new;->if()I

    move-result p1

    return p1
.end method

.method private super(Landroid/support/v4/rk2;IJLjava/io/ByteArrayOutputStream;Landroid/support/v4/jl1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    .line 2
    sget-object v1, Landroid/support/v4/ej0;->ZIP64_END_CENTRAL_DIRECTORY_RECORD:Landroid/support/v4/ej0;

    .line 3
    invoke-virtual {v1}, Landroid/support/v4/ej0;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    .line 4
    invoke-virtual {p6, p5, v2}, Landroid/support/v4/jl1;->super(Ljava/io/OutputStream;I)V

    const-wide/16 v1, 0x2c

    .line 5
    invoke-virtual {p6, p5, v1, v2}, Landroid/support/v4/jl1;->while(Ljava/io/OutputStream;J)V

    .line 6
    invoke-virtual {p1}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/oa0;

    invoke-virtual {v0}, Landroid/support/v4/oa0;->h()I

    move-result v0

    .line 10
    invoke-virtual {p6, p5, v0}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 11
    invoke-virtual {p1}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/oa0;

    invoke-virtual {v0}, Landroid/support/v4/transient;->throw()I

    move-result v0

    .line 12
    invoke-virtual {p6, p5, v0}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 14
    invoke-virtual {p5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 15
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/w70;->new()I

    move-result v0

    .line 16
    invoke-virtual {p6, p5, v0}, Landroid/support/v4/jl1;->super(Ljava/io/OutputStream;I)V

    .line 17
    invoke-virtual {p1}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/support/v4/w70;->try()I

    move-result v0

    .line 19
    invoke-virtual {p6, p5, v0}, Landroid/support/v4/jl1;->super(Ljava/io/OutputStream;I)V

    .line 20
    invoke-virtual {p1}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    .line 21
    invoke-virtual {p1}, Landroid/support/v4/rk2;->const()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    invoke-virtual {p1}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v2

    .line 23
    invoke-virtual {p1}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/w70;->new()I

    move-result p1

    .line 24
    invoke-direct {p0, v2, p1}, Landroid/support/v4/gj0;->do(Ljava/util/List;I)J

    move-result-wide v2

    goto :goto_1

    :cond_1
    move-wide v2, v0

    .line 25
    :goto_1
    invoke-virtual {p6, p5, v2, v3}, Landroid/support/v4/jl1;->while(Ljava/io/OutputStream;J)V

    .line 26
    invoke-virtual {p6, p5, v0, v1}, Landroid/support/v4/jl1;->while(Ljava/io/OutputStream;J)V

    int-to-long p1, p2

    .line 27
    invoke-virtual {p6, p5, p1, p2}, Landroid/support/v4/jl1;->while(Ljava/io/OutputStream;J)V

    .line 28
    invoke-virtual {p6, p5, p3, p4}, Landroid/support/v4/jl1;->while(Ljava/io/OutputStream;J)V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private this(Landroid/support/v4/rk2;Ljava/io/ByteArrayOutputStream;Landroid/support/v4/jl1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/oa0;

    .line 4
    invoke-direct {p0, p1, v1, p2, p3}, Landroid/support/v4/gj0;->class(Landroid/support/v4/rk2;Landroid/support/v4/oa0;Ljava/io/ByteArrayOutputStream;Landroid/support/v4/jl1;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private throw(Landroid/support/v4/rk2;Ljava/io/OutputStream;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    instance-of v0, p2, Lnet/lingala/zip4j/io/outputstream/new;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p2

    check-cast v0, Lnet/lingala/zip4j/io/outputstream/new;

    array-length v1, p3

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/outputstream/new;->do(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/gj0;->if(Landroid/support/v4/rk2;Ljava/io/OutputStream;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 5
    :cond_1
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "invalid buff to write as zip headers"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private try(Ljava/io/OutputStream;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lnet/lingala/zip4j/io/outputstream/else;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lnet/lingala/zip4j/io/outputstream/else;

    invoke-virtual {p1}, Lnet/lingala/zip4j/io/outputstream/else;->else()Z

    move-result p1

    return p1

    .line 3
    :cond_0
    instance-of v0, p1, Lnet/lingala/zip4j/io/outputstream/new;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lnet/lingala/zip4j/io/outputstream/new;

    invoke-virtual {p1}, Lnet/lingala/zip4j/io/outputstream/new;->else()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public catch(Landroid/support/v4/mu0;Ljava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    sget-object v2, Landroid/support/v4/ej0;->EXTRA_DATA_RECORD:Landroid/support/v4/ej0;

    invoke-virtual {v2}, Landroid/support/v4/ej0;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/jl1;->super(Ljava/io/OutputStream;I)V

    .line 3
    iget-object v1, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    iget-object v2, p0, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {p1}, Landroid/support/v4/transient;->case()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/support/v4/jl1;->import([BIJ)V

    .line 4
    iget-object v1, p0, Landroid/support/v4/gj0;->if:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 5
    invoke-virtual {p1}, Landroid/support/v4/mu0;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    invoke-virtual {p1}, Landroid/support/v4/transient;->new()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/jl1;->while(Ljava/io/OutputStream;J)V

    .line 7
    iget-object v1, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    invoke-virtual {p1}, Landroid/support/v4/transient;->super()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/jl1;->while(Ljava/io/OutputStream;J)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    iget-object v3, p0, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {p1}, Landroid/support/v4/transient;->new()J

    move-result-wide v6

    invoke-virtual {v1, v3, v5, v6, v7}, Landroid/support/v4/jl1;->import([BIJ)V

    .line 9
    iget-object v1, p0, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 10
    iget-object v1, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    iget-object v3, p0, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {p1}, Landroid/support/v4/transient;->super()J

    move-result-wide v6

    invoke-virtual {v1, v3, v5, v6, v7}, Landroid/support/v4/jl1;->import([BIJ)V

    .line 11
    iget-object p1, p0, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {v0, p1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 12
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 15
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2

    .line 16
    :cond_1
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "input parameters is null, cannot write extended local header"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public const(Landroid/support/v4/rk2;Landroid/support/v4/mu0;Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    invoke-virtual {p2}, Landroid/support/v4/qk2;->do()Landroid/support/v4/ej0;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/ej0;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/jl1;->super(Ljava/io/OutputStream;I)V

    .line 3
    iget-object v1, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    invoke-virtual {p2}, Landroid/support/v4/transient;->throw()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 4
    invoke-virtual {p2}, Landroid/support/v4/transient;->const()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 5
    iget-object v1, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    invoke-virtual {p2}, Landroid/support/v4/transient;->try()Landroid/support/v4/hq;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/hq;->getCode()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 6
    iget-object v1, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    iget-object v2, p0, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {p2}, Landroid/support/v4/transient;->final()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/support/v4/jl1;->import([BIJ)V

    .line 7
    iget-object v1, p0, Landroid/support/v4/gj0;->if:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 8
    iget-object v1, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    iget-object v3, p0, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {p2}, Landroid/support/v4/transient;->case()J

    move-result-wide v6

    invoke-virtual {v1, v3, v5, v6, v7}, Landroid/support/v4/jl1;->import([BIJ)V

    .line 9
    iget-object v1, p0, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 10
    invoke-virtual {p2}, Landroid/support/v4/transient;->super()J

    move-result-wide v3

    const-wide v6, 0xffffffffL

    const/4 v1, 0x1

    cmp-long v8, v3, v6

    if-ltz v8, :cond_0

    .line 11
    iget-object v3, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    iget-object v4, p0, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/jl1;->import([BIJ)V

    .line 12
    iget-object v3, p0, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {v0, v3, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 13
    iget-object v3, p0, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {v0, v3, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 14
    invoke-virtual {p1, v1}, Landroid/support/v4/rk2;->finally(Z)V

    .line 15
    invoke-virtual {p2, v1}, Landroid/support/v4/mu0;->g(Z)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v3, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    iget-object v4, p0, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {p2}, Landroid/support/v4/transient;->new()J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/jl1;->import([BIJ)V

    .line 17
    iget-object v3, p0, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {v0, v3, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 18
    iget-object v3, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    iget-object v4, p0, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {p2}, Landroid/support/v4/transient;->super()J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v4/jl1;->import([BIJ)V

    .line 19
    iget-object v3, p0, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {v0, v3, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 20
    invoke-virtual {p1, v5}, Landroid/support/v4/rk2;->finally(Z)V

    .line 21
    invoke-virtual {p2, v5}, Landroid/support/v4/mu0;->g(Z)V

    :goto_0
    new-array v2, v5, [B

    .line 22
    invoke-virtual {p2}, Landroid/support/v4/transient;->catch()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/mj2;->try(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "Cp437"

    .line 23
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 24
    invoke-virtual {p2}, Landroid/support/v4/transient;->const()[B

    move-result-object v3

    aget-byte v3, v3, v1

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/support/v4/b9;->do(BI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 25
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 26
    :cond_1
    invoke-virtual {p2}, Landroid/support/v4/transient;->catch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 27
    :cond_2
    iget-object v3, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    array-length v4, v2

    invoke-virtual {v3, v0, v4}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 28
    invoke-virtual {p1}, Landroid/support/v4/rk2;->final()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x20

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 29
    :goto_1
    invoke-virtual {p2}, Landroid/support/v4/transient;->for()Landroid/support/v4/goto;

    move-result-object v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0xb

    .line 30
    :cond_4
    iget-object v4, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    invoke-virtual {v4, v0, v3}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 31
    array-length v3, v2

    if-lez v3, :cond_5

    .line 32
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 33
    :cond_5
    invoke-virtual {p1}, Landroid/support/v4/rk2;->final()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 34
    iget-object p1, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    sget-object v2, Landroid/support/v4/ej0;->ZIP64_EXTRA_FIELD_SIGNATURE:Landroid/support/v4/ej0;

    .line 35
    invoke-virtual {v2}, Landroid/support/v4/ej0;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    .line 36
    invoke-virtual {p1, v0, v3}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 37
    iget-object p1, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    const/16 v2, 0x1c

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 38
    iget-object p1, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    invoke-virtual {p2}, Landroid/support/v4/transient;->super()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/support/v4/jl1;->while(Ljava/io/OutputStream;J)V

    .line 39
    iget-object p1, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    invoke-virtual {p2}, Landroid/support/v4/transient;->new()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/support/v4/jl1;->while(Ljava/io/OutputStream;J)V

    .line 40
    iget-object p1, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/support/v4/jl1;->while(Ljava/io/OutputStream;J)V

    .line 41
    iget-object p1, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    invoke-virtual {p1, v0, v5}, Landroid/support/v4/jl1;->super(Ljava/io/OutputStream;I)V

    .line 42
    :cond_6
    invoke-virtual {p2}, Landroid/support/v4/transient;->for()Landroid/support/v4/goto;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 43
    invoke-virtual {p2}, Landroid/support/v4/transient;->for()Landroid/support/v4/goto;

    move-result-object p1

    .line 44
    iget-object p2, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    invoke-virtual {p1}, Landroid/support/v4/qk2;->do()Landroid/support/v4/ej0;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/ej0;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {p2, v0, v3}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 45
    iget-object p2, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    invoke-virtual {p1}, Landroid/support/v4/goto;->case()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 46
    iget-object p2, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    invoke-virtual {p1}, Landroid/support/v4/goto;->new()Landroid/support/v4/x0;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/x0;->getVersionNumber()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 47
    invoke-virtual {p1}, Landroid/support/v4/goto;->else()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array p2, v1, [B

    .line 48
    invoke-virtual {p1}, Landroid/support/v4/goto;->for()Landroid/support/v4/w0;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/w0;->getRawCode()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p2, v5

    .line 49
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 50
    iget-object p2, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    invoke-virtual {p1}, Landroid/support/v4/goto;->try()Landroid/support/v4/hq;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/hq;->getCode()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/support/v4/jl1;->native(Ljava/io/OutputStream;I)V

    .line 51
    :cond_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 53
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 54
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p2
.end method

.method public for(Landroid/support/v4/rk2;Ljava/io/OutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/w70;->case()J

    move-result-wide v8

    .line 3
    iget-object v0, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    invoke-direct {p0, p1, v7, v0}, Landroid/support/v4/gj0;->this(Landroid/support/v4/rk2;Ljava/io/ByteArrayOutputStream;Landroid/support/v4/jl1;)V

    .line 4
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    .line 5
    invoke-virtual {p1}, Landroid/support/v4/rk2;->final()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v2, v8, v0

    if-gez v2, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0xffff

    if-lt v0, v1, :cond_3

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/rk2;->break()Landroid/support/v4/oj2;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Landroid/support/v4/oj2;

    invoke-direct {v0}, Landroid/support/v4/oj2;-><init>()V

    invoke-virtual {p1, v0}, Landroid/support/v4/rk2;->extends(Landroid/support/v4/oj2;)V

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/rk2;->this()Landroid/support/v4/nj2;

    move-result-object v0

    if-nez v0, :cond_2

    .line 10
    new-instance v0, Landroid/support/v4/nj2;

    invoke-direct {v0}, Landroid/support/v4/nj2;-><init>()V

    invoke-virtual {p1, v0}, Landroid/support/v4/rk2;->default(Landroid/support/v4/nj2;)V

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/rk2;->this()Landroid/support/v4/nj2;

    move-result-object v0

    int-to-long v1, v10

    add-long/2addr v1, v8

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/nj2;->else(J)V

    .line 12
    iget-object v6, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    move-object v0, p0

    move-object v1, p1

    move v2, v10

    move-wide v3, v8

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/gj0;->super(Landroid/support/v4/rk2;IJLjava/io/ByteArrayOutputStream;Landroid/support/v4/jl1;)V

    .line 13
    iget-object v0, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    invoke-direct {p0, p1, v7, v0}, Landroid/support/v4/gj0;->final(Landroid/support/v4/rk2;Ljava/io/ByteArrayOutputStream;Landroid/support/v4/jl1;)V

    .line 14
    :cond_3
    iget-object v6, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    move-object v0, p0

    move-object v1, p1

    move v2, v10

    move-wide v3, v8

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/gj0;->break(Landroid/support/v4/rk2;IJLjava/io/ByteArrayOutputStream;Landroid/support/v4/jl1;)V

    .line 15
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/gj0;->throw(Landroid/support/v4/rk2;Ljava/io/OutputStream;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 18
    :try_start_2
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2

    .line 19
    :cond_4
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "input parameters is null, cannot finalize zip file without validations"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public goto(Landroid/support/v4/oa0;Landroid/support/v4/rk2;Lnet/lingala/zip4j/io/outputstream/else;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/oa0;->b()I

    move-result v0

    invoke-virtual {p3}, Lnet/lingala/zip4j/io/outputstream/else;->if()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/support/v4/rk2;->catch()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Landroid/support/v4/rk2;->catch()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/db0;->class(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/support/v4/oa0;->b()I

    move-result v1

    const/16 v4, 0x9

    if-ge v1, v4, :cond_0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".z0"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/oa0;->b()I

    move-result p2

    add-int/2addr p2, v2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".z"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/oa0;->b()I

    move-result p2

    add-int/2addr p2, v2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8
    :goto_0
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/else;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/io/outputstream/else;-><init>(Ljava/io/File;)V

    goto :goto_1

    :cond_1
    move-object v0, p3

    const/4 v2, 0x0

    .line 9
    :goto_1
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/else;->for()J

    move-result-wide v4

    .line 10
    invoke-virtual {p1}, Landroid/support/v4/oa0;->g()J

    move-result-wide v6

    const-wide/16 v8, 0xe

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lnet/lingala/zip4j/io/outputstream/else;->goto(J)V

    .line 11
    iget-object p2, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    iget-object v1, p0, Landroid/support/v4/gj0;->if:[B

    invoke-virtual {p1}, Landroid/support/v4/transient;->case()J

    move-result-wide v6

    invoke-virtual {p2, v1, v3, v6, v7}, Landroid/support/v4/jl1;->import([BIJ)V

    .line 12
    iget-object p2, p0, Landroid/support/v4/gj0;->if:[B

    const/4 v1, 0x4

    invoke-virtual {v0, p2, v3, v1}, Lnet/lingala/zip4j/io/outputstream/else;->write([BII)V

    .line 13
    invoke-direct {p0, v0, p1}, Landroid/support/v4/gj0;->else(Lnet/lingala/zip4j/io/outputstream/else;Landroid/support/v4/oa0;)V

    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/else;->close()V

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {p3, v4, v5}, Lnet/lingala/zip4j/io/outputstream/else;->goto(J)V

    :goto_2
    return-void

    .line 16
    :cond_3
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "invalid input parameters, cannot update local file header"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public if(Landroid/support/v4/rk2;Ljava/io/OutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/support/v4/gj0;->case(Landroid/support/v4/rk2;Ljava/io/OutputStream;)V

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/w70;->case()J

    move-result-wide v8

    .line 4
    iget-object v0, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    invoke-direct {p0, p1, v7, v0}, Landroid/support/v4/gj0;->this(Landroid/support/v4/rk2;Ljava/io/ByteArrayOutputStream;Landroid/support/v4/jl1;)V

    .line 5
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    .line 6
    invoke-virtual {p1}, Landroid/support/v4/rk2;->final()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v2, v8, v0

    if-gez v2, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0xffff

    if-lt v0, v1, :cond_4

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/rk2;->break()Landroid/support/v4/oj2;

    move-result-object v0

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Landroid/support/v4/oj2;

    invoke-direct {v0}, Landroid/support/v4/oj2;-><init>()V

    invoke-virtual {p1, v0}, Landroid/support/v4/rk2;->extends(Landroid/support/v4/oj2;)V

    .line 10
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/rk2;->this()Landroid/support/v4/nj2;

    move-result-object v0

    if-nez v0, :cond_2

    .line 11
    new-instance v0, Landroid/support/v4/nj2;

    invoke-direct {v0}, Landroid/support/v4/nj2;-><init>()V

    invoke-virtual {p1, v0}, Landroid/support/v4/rk2;->default(Landroid/support/v4/nj2;)V

    .line 12
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/rk2;->this()Landroid/support/v4/nj2;

    move-result-object v0

    int-to-long v1, v10

    add-long/2addr v1, v8

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/nj2;->else(J)V

    .line 13
    invoke-direct {p0, p2}, Landroid/support/v4/gj0;->try(Ljava/io/OutputStream;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 14
    invoke-direct {p0, p2}, Landroid/support/v4/gj0;->new(Ljava/io/OutputStream;)I

    move-result v0

    .line 15
    invoke-virtual {p1}, Landroid/support/v4/rk2;->this()Landroid/support/v4/nj2;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/nj2;->case(I)V

    .line 16
    invoke-virtual {p1}, Landroid/support/v4/rk2;->this()Landroid/support/v4/nj2;

    move-result-object v2

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/support/v4/nj2;->goto(I)V

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/rk2;->this()Landroid/support/v4/nj2;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/nj2;->case(I)V

    .line 18
    invoke-virtual {p1}, Landroid/support/v4/rk2;->this()Landroid/support/v4/nj2;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/nj2;->goto(I)V

    .line 19
    :goto_0
    iget-object v6, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    move-object v0, p0

    move-object v1, p1

    move v2, v10

    move-wide v3, v8

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/gj0;->super(Landroid/support/v4/rk2;IJLjava/io/ByteArrayOutputStream;Landroid/support/v4/jl1;)V

    .line 20
    iget-object v0, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    invoke-direct {p0, p1, v7, v0}, Landroid/support/v4/gj0;->final(Landroid/support/v4/rk2;Ljava/io/ByteArrayOutputStream;Landroid/support/v4/jl1;)V

    .line 21
    :cond_4
    iget-object v6, p0, Landroid/support/v4/gj0;->do:Landroid/support/v4/jl1;

    move-object v0, p0

    move-object v1, p1

    move v2, v10

    move-wide v3, v8

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/gj0;->break(Landroid/support/v4/rk2;IJLjava/io/ByteArrayOutputStream;Landroid/support/v4/jl1;)V

    .line 22
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/gj0;->throw(Landroid/support/v4/rk2;Ljava/io/OutputStream;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 25
    :try_start_2
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2

    .line 26
    :cond_5
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "input parameters is null, cannot finalize zip file"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method
