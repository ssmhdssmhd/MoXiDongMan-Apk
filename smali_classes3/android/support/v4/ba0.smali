.class public Landroid/support/v4/ba0;
.super Landroid/support/v4/protected;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/ba0$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/protected<",
        "Landroid/support/v4/ba0$do;",
        ">;"
    }
.end annotation


# instance fields
.field private case:Lnet/lingala/zip4j/io/inputstream/case;

.field private try:[C


# direct methods
.method public constructor <init>(Landroid/support/v4/uf1;ZLandroid/support/v4/rk2;[C)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/protected;-><init>(Landroid/support/v4/uf1;ZLandroid/support/v4/rk2;)V

    .line 2
    iput-object p4, p0, Landroid/support/v4/ba0;->try:[C

    return-void
.end method

.method private throw(Landroid/support/v4/rk2;)Landroid/support/v4/oa0;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/oa0;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private while()Lnet/lingala/zip4j/io/inputstream/this;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/lingala/zip4j/io/inputstream/case;

    invoke-virtual {p0}, Landroid/support/v4/protected;->catch()Landroid/support/v4/rk2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/rk2;->catch()Ljava/io/File;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/protected;->catch()Landroid/support/v4/rk2;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/rk2;->const()Z

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/protected;->catch()Landroid/support/v4/rk2;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/w70;->new()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lnet/lingala/zip4j/io/inputstream/case;-><init>(Ljava/io/File;ZI)V

    iput-object v0, p0, Landroid/support/v4/ba0;->case:Lnet/lingala/zip4j/io/inputstream/case;

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/protected;->catch()Landroid/support/v4/rk2;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/ba0;->throw(Landroid/support/v4/rk2;)Landroid/support/v4/oa0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Landroid/support/v4/ba0;->case:Lnet/lingala/zip4j/io/inputstream/case;

    invoke-virtual {v1, v0}, Lnet/lingala/zip4j/io/inputstream/case;->for(Landroid/support/v4/oa0;)V

    .line 5
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/io/inputstream/this;

    iget-object v1, p0, Landroid/support/v4/ba0;->case:Lnet/lingala/zip4j/io/inputstream/case;

    iget-object v2, p0, Landroid/support/v4/ba0;->try:[C

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/io/inputstream/this;-><init>(Ljava/io/InputStream;[C)V

    return-object v0
.end method


# virtual methods
.method public final(Landroid/support/v4/ba0$do;)J
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/protected;->catch()Landroid/support/v4/rk2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/oa0;

    .line 2
    invoke-virtual {v4}, Landroid/support/v4/transient;->while()Landroid/support/v4/pj2;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3
    invoke-virtual {v4}, Landroid/support/v4/transient;->while()Landroid/support/v4/pj2;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/pj2;->else()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-lez v7, :cond_0

    .line 4
    invoke-virtual {v4}, Landroid/support/v4/transient;->while()Landroid/support/v4/pj2;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/pj2;->else()J

    move-result-wide v4

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v4}, Landroid/support/v4/transient;->super()J

    move-result-wide v4

    :goto_1
    add-long/2addr v2, v4

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public bridge synthetic if(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/support/v4/ba0$do;

    invoke-virtual {p0, p1}, Landroid/support/v4/ba0;->final(Landroid/support/v4/ba0$do;)J

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
    check-cast p1, Landroid/support/v4/ba0$do;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/ba0;->super(Landroid/support/v4/ba0$do;Landroid/support/v4/uf1;)V

    return-void
.end method

.method public super(Landroid/support/v4/ba0$do;Landroid/support/v4/uf1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/ba0;->while()Lnet/lingala/zip4j/io/inputstream/this;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2
    :try_start_1
    invoke-virtual {p0}, Landroid/support/v4/protected;->catch()Landroid/support/v4/rk2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/rk2;->if()Landroid/support/v4/wf;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/wf;->if()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/support/v4/oa0;

    .line 3
    invoke-virtual {v2}, Landroid/support/v4/transient;->catch()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__MACOSX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v2}, Landroid/support/v4/transient;->super()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/support/v4/uf1;->throws(J)V

    .line 5
    invoke-virtual {v6, v2}, Lnet/lingala/zip4j/io/inputstream/this;->else(Landroid/support/v4/oa0;)Landroid/support/v4/mu0;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/support/v4/ba0;->case:Lnet/lingala/zip4j/io/inputstream/case;

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/io/inputstream/case;->for(Landroid/support/v4/oa0;)V

    .line 7
    iget-object v0, p0, Landroid/support/v4/ba0;->case:Lnet/lingala/zip4j/io/inputstream/case;

    invoke-virtual {v6}, Lnet/lingala/zip4j/io/inputstream/this;->for()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    .line 8
    invoke-static {p1}, Landroid/support/v4/ba0$do;->do(Landroid/support/v4/ba0$do;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/protected;->break(Lnet/lingala/zip4j/io/inputstream/this;Landroid/support/v4/oa0;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/uf1;)V

    .line 9
    invoke-virtual {p0}, Landroid/support/v4/f4;->goto()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_2

    .line 10
    :try_start_2
    invoke-virtual {v6}, Lnet/lingala/zip4j/io/inputstream/this;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 11
    :cond_2
    iget-object p1, p0, Landroid/support/v4/ba0;->case:Lnet/lingala/zip4j/io/inputstream/case;

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p1}, Lnet/lingala/zip4j/io/inputstream/case;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v6, :cond_4

    .line 14
    :try_start_4
    invoke-virtual {v6}, Lnet/lingala/zip4j/io/inputstream/this;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    .line 15
    iget-object p2, p0, Landroid/support/v4/ba0;->case:Lnet/lingala/zip4j/io/inputstream/case;

    if-eqz p2, :cond_5

    .line 16
    invoke-virtual {p2}, Lnet/lingala/zip4j/io/inputstream/case;->close()V

    .line 17
    :cond_5
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
