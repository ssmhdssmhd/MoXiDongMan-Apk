.class public Landroid/support/v4/pa0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private do(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    return p1
.end method

.method private else(Ljava/lang/String;)Ljava/lang/String;
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

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "fileNameInZip is null or empty"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private for(Landroid/support/v4/sk2;)Landroid/support/v4/goto;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/goto;

    invoke-direct {v0}, Landroid/support/v4/goto;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/sk2;->if()Landroid/support/v4/x0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/sk2;->if()Landroid/support/v4/x0;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/goto;->this(Landroid/support/v4/x0;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/sk2;->do()Landroid/support/v4/w0;

    move-result-object v1

    sget-object v2, Landroid/support/v4/w0;->KEY_STRENGTH_128:Landroid/support/v4/w0;

    if-ne v1, v2, :cond_1

    .line 5
    invoke-virtual {v0, v2}, Landroid/support/v4/goto;->goto(Landroid/support/v4/w0;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/sk2;->do()Landroid/support/v4/w0;

    move-result-object v1

    sget-object v2, Landroid/support/v4/w0;->KEY_STRENGTH_192:Landroid/support/v4/w0;

    if-ne v1, v2, :cond_2

    .line 7
    invoke-virtual {v0, v2}, Landroid/support/v4/goto;->goto(Landroid/support/v4/w0;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/sk2;->do()Landroid/support/v4/w0;

    move-result-object v1

    sget-object v2, Landroid/support/v4/w0;->KEY_STRENGTH_256:Landroid/support/v4/w0;

    if-ne v1, v2, :cond_3

    .line 9
    invoke-virtual {v0, v2}, Landroid/support/v4/goto;->goto(Landroid/support/v4/w0;)V

    .line 10
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/sk2;->new()Landroid/support/v4/hq;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/goto;->break(Landroid/support/v4/hq;)V

    return-object v0

    .line 11
    :cond_3
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "invalid AES key strength"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private if(ZLandroid/support/v4/sk2;)[B
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/pa0;->try(ZLandroid/support/v4/sk2;)B

    move-result p1

    const/4 p2, 0x0

    aput-byte p1, v0, p2

    const/4 p1, 0x1

    .line 2
    aget-byte p2, v0, p1

    const/4 v1, 0x3

    invoke-static {p2, v1}, Landroid/support/v4/b9;->if(BI)B

    move-result p2

    aput-byte p2, v0, p1

    return-object v0
.end method

.method private try(ZLandroid/support/v4/sk2;)B
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {v0, v0}, Landroid/support/v4/b9;->if(BI)B

    move-result v0

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/sk2;->new()Landroid/support/v4/hq;

    move-result-object p1

    sget-object v1, Landroid/support/v4/hq;->DEFLATE:Landroid/support/v4/hq;

    if-ne p1, v1, :cond_4

    .line 3
    invoke-virtual {p2}, Landroid/support/v4/sk2;->for()Landroid/support/v4/fq;

    move-result-object p1

    sget-object v1, Landroid/support/v4/fq;->NORMAL:Landroid/support/v4/fq;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1

    .line 4
    invoke-static {v0, v3}, Landroid/support/v4/b9;->for(BI)B

    move-result p1

    .line 5
    invoke-static {p1, v2}, Landroid/support/v4/b9;->for(BI)B

    move-result v0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p2}, Landroid/support/v4/sk2;->for()Landroid/support/v4/fq;

    move-result-object p1

    sget-object v1, Landroid/support/v4/fq;->MAXIMUM:Landroid/support/v4/fq;

    if-ne p1, v1, :cond_2

    .line 7
    invoke-static {v0, v3}, Landroid/support/v4/b9;->if(BI)B

    move-result p1

    .line 8
    invoke-static {p1, v2}, Landroid/support/v4/b9;->for(BI)B

    move-result v0

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p2}, Landroid/support/v4/sk2;->for()Landroid/support/v4/fq;

    move-result-object p1

    sget-object v1, Landroid/support/v4/fq;->FAST:Landroid/support/v4/fq;

    if-ne p1, v1, :cond_3

    .line 10
    invoke-static {v0, v3}, Landroid/support/v4/b9;->for(BI)B

    move-result p1

    .line 11
    invoke-static {p1, v2}, Landroid/support/v4/b9;->if(BI)B

    move-result v0

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p2}, Landroid/support/v4/sk2;->for()Landroid/support/v4/fq;

    move-result-object p1

    sget-object v1, Landroid/support/v4/fq;->FASTEST:Landroid/support/v4/fq;

    if-ne p1, v1, :cond_4

    .line 13
    invoke-static {v0, v3}, Landroid/support/v4/b9;->if(BI)B

    move-result p1

    .line 14
    invoke-static {p1, v2}, Landroid/support/v4/b9;->if(BI)B

    move-result v0

    .line 15
    :cond_4
    :goto_0
    invoke-virtual {p2}, Landroid/support/v4/sk2;->throw()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    .line 16
    invoke-static {v0, p1}, Landroid/support/v4/b9;->if(BI)B

    move-result v0

    :cond_5
    return v0
.end method


# virtual methods
.method public case(Landroid/support/v4/oa0;)Landroid/support/v4/mu0;
    .locals 3

    .line 1
    new-instance v0, Landroid/support/v4/mu0;

    invoke-direct {v0}, Landroid/support/v4/mu0;-><init>()V

    .line 2
    sget-object v1, Landroid/support/v4/ej0;->LOCAL_FILE_HEADER:Landroid/support/v4/ej0;

    invoke-virtual {v0, v1}, Landroid/support/v4/qk2;->if(Landroid/support/v4/ej0;)V

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/transient;->throw()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/transient;->synchronized(I)V

    .line 4
    invoke-virtual {p1}, Landroid/support/v4/transient;->try()Landroid/support/v4/hq;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/transient;->throws(Landroid/support/v4/hq;)V

    .line 5
    invoke-virtual {p1}, Landroid/support/v4/transient;->final()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/transient;->implements(J)V

    .line 6
    invoke-virtual {p1}, Landroid/support/v4/transient;->super()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/transient;->instanceof(J)V

    .line 7
    invoke-virtual {p1}, Landroid/support/v4/transient;->class()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/transient;->interface(I)V

    .line 8
    invoke-virtual {p1}, Landroid/support/v4/transient;->catch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/transient;->volatile(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroid/support/v4/transient;->public()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/transient;->private(Z)V

    .line 10
    invoke-virtual {p1}, Landroid/support/v4/transient;->goto()Landroid/support/v4/t70;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/transient;->abstract(Landroid/support/v4/t70;)V

    .line 11
    invoke-virtual {p1}, Landroid/support/v4/transient;->for()Landroid/support/v4/goto;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/transient;->static(Landroid/support/v4/goto;)V

    .line 12
    invoke-virtual {p1}, Landroid/support/v4/transient;->case()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/transient;->default(J)V

    .line 13
    invoke-virtual {p1}, Landroid/support/v4/transient;->new()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/transient;->switch(J)V

    .line 14
    invoke-virtual {p1}, Landroid/support/v4/transient;->const()[B

    move-result-object v1

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v0, v1}, Landroid/support/v4/transient;->transient([B)V

    .line 15
    invoke-virtual {p1}, Landroid/support/v4/transient;->import()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/transient;->finally(Z)V

    return-object v0
.end method

.method public new(Landroid/support/v4/sk2;ZI)Landroid/support/v4/oa0;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/oa0;

    invoke-direct {v0}, Landroid/support/v4/oa0;-><init>()V

    .line 2
    sget-object v1, Landroid/support/v4/ej0;->CENTRAL_DIRECTORY:Landroid/support/v4/ej0;

    invoke-virtual {v0, v1}, Landroid/support/v4/qk2;->if(Landroid/support/v4/ej0;)V

    const/16 v1, 0x14

    .line 3
    invoke-virtual {v0, v1}, Landroid/support/v4/oa0;->o(I)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/support/v4/transient;->synchronized(I)V

    .line 5
    invoke-virtual {p1}, Landroid/support/v4/sk2;->catch()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/sk2;->case()Landroid/support/v4/t70;

    move-result-object v1

    sget-object v2, Landroid/support/v4/t70;->AES:Landroid/support/v4/t70;

    if-ne v1, v2, :cond_0

    .line 6
    sget-object v1, Landroid/support/v4/hq;->AES_INTERNAL_ONLY:Landroid/support/v4/hq;

    invoke-virtual {v0, v1}, Landroid/support/v4/transient;->throws(Landroid/support/v4/hq;)V

    .line 7
    invoke-direct {p0, p1}, Landroid/support/v4/pa0;->for(Landroid/support/v4/sk2;)Landroid/support/v4/goto;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/transient;->static(Landroid/support/v4/goto;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/sk2;->new()Landroid/support/v4/hq;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/transient;->throws(Landroid/support/v4/hq;)V

    .line 9
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/sk2;->catch()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/support/v4/sk2;->case()Landroid/support/v4/t70;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/sk2;->case()Landroid/support/v4/t70;

    move-result-object v1

    sget-object v2, Landroid/support/v4/t70;->NONE:Landroid/support/v4/t70;

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/support/v4/transient;->private(Z)V

    .line 12
    invoke-virtual {p1}, Landroid/support/v4/sk2;->case()Landroid/support/v4/t70;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/transient;->abstract(Landroid/support/v4/t70;)V

    goto :goto_1

    .line 13
    :cond_1
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "Encryption method has to be set when encryptFiles flag is set in zip parameters"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/support/v4/sk2;->this()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v4/pa0;->else(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/support/v4/transient;->volatile(Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, v1}, Landroid/support/v4/pa0;->do(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v4/transient;->interface(I)V

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    .line 17
    :goto_2
    invoke-virtual {v0, p3}, Landroid/support/v4/oa0;->i(I)V

    .line 18
    invoke-virtual {p1}, Landroid/support/v4/sk2;->break()J

    move-result-wide p2

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-lez v4, :cond_4

    .line 19
    invoke-virtual {p1}, Landroid/support/v4/sk2;->break()J

    move-result-wide p2

    invoke-static {p2, p3}, Landroid/support/v4/mj2;->case(J)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/transient;->implements(J)V

    goto :goto_3

    .line 20
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Landroid/support/v4/mj2;->case(J)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/transient;->implements(J)V

    :goto_3
    const/4 p2, 0x4

    new-array p2, p2, [B

    .line 21
    invoke-virtual {v0, p2}, Landroid/support/v4/oa0;->j([B)V

    .line 22
    invoke-static {v1}, Landroid/support/v4/db0;->throw(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/support/v4/transient;->package(Z)V

    .line 23
    invoke-virtual {p1}, Landroid/support/v4/sk2;->goto()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/transient;->instanceof(J)V

    .line 24
    invoke-virtual {p1}, Landroid/support/v4/sk2;->catch()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroid/support/v4/sk2;->case()Landroid/support/v4/t70;

    move-result-object p2

    sget-object p3, Landroid/support/v4/t70;->ZIP_STANDARD:Landroid/support/v4/t70;

    if-ne p2, p3, :cond_5

    .line 25
    invoke-virtual {p1}, Landroid/support/v4/sk2;->else()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/transient;->default(J)V

    .line 26
    :cond_5
    invoke-virtual {v0}, Landroid/support/v4/transient;->public()Z

    move-result p2

    invoke-direct {p0, p2, p1}, Landroid/support/v4/pa0;->if(ZLandroid/support/v4/sk2;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/support/v4/transient;->transient([B)V

    .line 27
    invoke-virtual {p1}, Landroid/support/v4/sk2;->throw()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/transient;->finally(Z)V

    return-object v0
.end method
