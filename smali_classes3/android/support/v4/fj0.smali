.class public Landroid/support/v4/fj0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do([BZ)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    .line 2
    :cond_0
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const-string v0, "Cp437"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 3
    :catch_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method private static for(Landroid/support/v4/rk2;Ljava/lang/String;)Landroid/support/v4/oa0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 1
    invoke-static {p1}, Landroid/support/v4/mj2;->try(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/oa0;

    .line 6
    invoke-virtual {v0}, Landroid/support/v4/transient;->catch()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Landroid/support/v4/mj2;->try(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_3
    return-object v1

    .line 9
    :cond_4
    new-instance p0, Landroid/support/v4/rj2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file Headers are null, cannot determine file header with exact match for fileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_5
    new-instance p0, Landroid/support/v4/rj2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "central directory is null, cannot determine file header with exact match for fileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_6
    new-instance p0, Landroid/support/v4/rj2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file name is null, cannot determine file header with exact match for fileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_7
    new-instance p0, Landroid/support/v4/rj2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zip model is null, cannot determine file header with exact match for fileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static if(Landroid/support/v4/rk2;Ljava/lang/String;)Landroid/support/v4/oa0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroid/support/v4/fj0;->for(Landroid/support/v4/rk2;Ljava/lang/String;)Landroid/support/v4/oa0;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "\\\\"

    const-string v1, "/"

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Landroid/support/v4/fj0;->for(Landroid/support/v4/rk2;Ljava/lang/String;)Landroid/support/v4/oa0;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Landroid/support/v4/fj0;->for(Landroid/support/v4/rk2;Ljava/lang/String;)Landroid/support/v4/oa0;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static new(Landroid/support/v4/rk2;Landroid/support/v4/oa0;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/transient;->catch()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/support/v4/mj2;->try(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 8
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/oa0;

    .line 9
    invoke-virtual {v2}, Landroid/support/v4/transient;->catch()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v2}, Landroid/support/v4/mj2;->try(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1

    .line 12
    :cond_4
    new-instance p0, Landroid/support/v4/rj2;

    const-string p1, "file name in file header is empty or null, cannot determine index of file header"

    invoke-direct {p0, p1}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    return v1

    .line 13
    :cond_6
    new-instance p0, Landroid/support/v4/rj2;

    const-string p1, "input parameters is null, cannot determine index of file header"

    invoke-direct {p0, p1}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method
