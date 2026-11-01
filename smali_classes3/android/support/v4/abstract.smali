.class public abstract Landroid/support/v4/abstract;
.super Landroid/support/v4/f4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/f4<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private for:Landroid/support/v4/rk2;

.field private new:[C

.field private try:Landroid/support/v4/gj0;


# direct methods
.method public constructor <init>(Landroid/support/v4/uf1;ZLandroid/support/v4/rk2;[CLandroid/support/v4/gj0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/f4;-><init>(Landroid/support/v4/uf1;Z)V

    .line 2
    iput-object p3, p0, Landroid/support/v4/abstract;->for:Landroid/support/v4/rk2;

    .line 3
    iput-object p4, p0, Landroid/support/v4/abstract;->new:[C

    .line 4
    iput-object p5, p0, Landroid/support/v4/abstract;->try:Landroid/support/v4/gj0;

    return-void
.end method

.method private catch(Landroid/support/v4/sk2;Ljava/io/File;Landroid/support/v4/uf1;)Landroid/support/v4/sk2;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/sk2;

    invoke-direct {v0, p1}, Landroid/support/v4/sk2;-><init>(Landroid/support/v4/sk2;)V

    .line 2
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/support/v4/mj2;->case(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/sk2;->package(J)V

    .line 3
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/sk2;->default(J)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/sk2;->default(J)V

    :goto_0
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/support/v4/sk2;->strictfp(Z)V

    .line 7
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/sk2;->package(J)V

    .line 8
    invoke-virtual {p1}, Landroid/support/v4/sk2;->this()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/mj2;->try(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/v4/sk2;->try()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/support/v4/db0;->this(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Landroid/support/v4/sk2;->extends(Ljava/lang/String;)V

    .line 11
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    sget-object p1, Landroid/support/v4/hq;->STORE:Landroid/support/v4/hq;

    invoke-virtual {v0, p1}, Landroid/support/v4/sk2;->public(Landroid/support/v4/hq;)V

    .line 13
    sget-object p1, Landroid/support/v4/t70;->NONE:Landroid/support/v4/t70;

    invoke-virtual {v0, p1}, Landroid/support/v4/sk2;->switch(Landroid/support/v4/t70;)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/support/v4/sk2;->static(Z)V

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/sk2;->catch()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/support/v4/sk2;->case()Landroid/support/v4/t70;

    move-result-object p1

    sget-object v1, Landroid/support/v4/t70;->ZIP_STANDARD:Landroid/support/v4/t70;

    if-ne p1, v1, :cond_3

    .line 16
    sget-object p1, Landroid/support/v4/uf1$for;->CALCULATE_CRC:Landroid/support/v4/uf1$for;

    invoke-virtual {p3, p1}, Landroid/support/v4/uf1;->throw(Landroid/support/v4/uf1$for;)V

    .line 17
    invoke-static {p2, p3}, Landroid/support/v4/ks;->do(Ljava/io/File;Landroid/support/v4/uf1;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/sk2;->throws(J)V

    .line 18
    sget-object p1, Landroid/support/v4/uf1$for;->ADD_ENTRY:Landroid/support/v4/uf1$for;

    invoke-virtual {p3, p1}, Landroid/support/v4/uf1;->throw(Landroid/support/v4/uf1$for;)V

    .line 19
    :cond_3
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-nez p3, :cond_4

    .line 20
    sget-object p1, Landroid/support/v4/hq;->STORE:Landroid/support/v4/hq;

    invoke-virtual {v0, p1}, Landroid/support/v4/sk2;->public(Landroid/support/v4/hq;)V

    :cond_4
    :goto_1
    return-object v0
.end method

.method private final(Landroid/support/v4/oa0;Landroid/support/v4/uf1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/wm1;

    iget-object v1, p0, Landroid/support/v4/abstract;->for:Landroid/support/v4/rk2;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v2, v1}, Landroid/support/v4/wm1;-><init>(Landroid/support/v4/uf1;ZLandroid/support/v4/rk2;)V

    .line 2
    invoke-virtual {v0, p1}, Landroid/support/v4/f4;->for(Ljava/lang/Object;)V

    return-void
.end method

.method private super(Ljava/util/List;Landroid/support/v4/sk2;Landroid/support/v4/uf1;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Landroid/support/v4/sk2;",
            "Landroid/support/v4/uf1;",
            ")",
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    iget-object v1, p0, Landroid/support/v4/abstract;->for:Landroid/support/v4/rk2;

    invoke-virtual {v1}, Landroid/support/v4/rk2;->catch()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v4/sk2;->try()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/db0;->this(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Landroid/support/v4/abstract;->for:Landroid/support/v4/rk2;

    invoke-static {v3, v2}, Landroid/support/v4/fj0;->if(Landroid/support/v4/rk2;Ljava/lang/String;)Landroid/support/v4/oa0;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p2}, Landroid/support/v4/sk2;->const()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    sget-object v1, Landroid/support/v4/uf1$for;->REMOVE_ENTRY:Landroid/support/v4/uf1$for;

    invoke-virtual {p3, v1}, Landroid/support/v4/uf1;->throw(Landroid/support/v4/uf1$for;)V

    .line 8
    invoke-direct {p0, v2, p3}, Landroid/support/v4/abstract;->final(Landroid/support/v4/oa0;Landroid/support/v4/uf1;)V

    .line 9
    invoke-virtual {p0}, Landroid/support/v4/f4;->goto()V

    .line 10
    sget-object v1, Landroid/support/v4/uf1$for;->ADD_ENTRY:Landroid/support/v4/uf1$for;

    invoke-virtual {p3, v1}, Landroid/support/v4/uf1;->throw(Landroid/support/v4/uf1$for;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public break(Ljava/util/List;Landroid/support/v4/sk2;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Landroid/support/v4/sk2;",
            ")J"
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

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p2}, Landroid/support/v4/sk2;->catch()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Landroid/support/v4/sk2;->case()Landroid/support/v4/t70;

    move-result-object v3

    sget-object v4, Landroid/support/v4/t70;->ZIP_STANDARD:Landroid/support/v4/t70;

    if-ne v3, v4, :cond_2

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    mul-long v3, v3, v5

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    :goto_1
    add-long/2addr v0, v3

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v4/sk2;->try()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/db0;->this(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p0}, Landroid/support/v4/abstract;->class()Landroid/support/v4/rk2;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/support/v4/fj0;->if(Landroid/support/v4/rk2;Ljava/lang/String;)Landroid/support/v4/oa0;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/support/v4/abstract;->class()Landroid/support/v4/rk2;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/rk2;->catch()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/support/v4/transient;->new()J

    move-result-wide v5

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    goto :goto_0

    :cond_3
    return-wide v0
.end method

.method public class()Landroid/support/v4/rk2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/abstract;->for:Landroid/support/v4/rk2;

    return-object v0
.end method

.method public const(Lnet/lingala/zip4j/io/outputstream/else;)Lnet/lingala/zip4j/io/outputstream/break;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/abstract;->for:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->catch()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/support/v4/abstract;->for:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/support/v4/abstract;->for:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/w70;->case()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/io/outputstream/else;->goto(J)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "invalid end of central directory record"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/break;

    iget-object v1, p0, Landroid/support/v4/abstract;->new:[C

    iget-object v2, p0, Landroid/support/v4/abstract;->for:Landroid/support/v4/rk2;

    invoke-direct {v0, p1, v1, v2}, Lnet/lingala/zip4j/io/outputstream/break;-><init>(Ljava/io/OutputStream;[CLandroid/support/v4/rk2;)V

    return-object v0
.end method

.method public this(Ljava/util/List;Landroid/support/v4/uf1;Landroid/support/v4/sk2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Landroid/support/v4/uf1;",
            "Landroid/support/v4/sk2;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3, p2}, Landroid/support/v4/abstract;->super(Ljava/util/List;Landroid/support/v4/sk2;Landroid/support/v4/uf1;)Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/else;

    iget-object v1, p0, Landroid/support/v4/abstract;->for:Landroid/support/v4/rk2;

    invoke-virtual {v1}, Landroid/support/v4/rk2;->catch()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/abstract;->for:Landroid/support/v4/rk2;

    invoke-virtual {v2}, Landroid/support/v4/rk2;->else()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lnet/lingala/zip4j/io/outputstream/else;-><init>(Ljava/io/File;J)V

    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/support/v4/abstract;->const(Lnet/lingala/zip4j/io/outputstream/else;)Lnet/lingala/zip4j/io/outputstream/break;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/16 v2, 0x1000

    :try_start_1
    new-array v2, v2, [B

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 5
    invoke-virtual {p0}, Landroid/support/v4/f4;->goto()V

    .line 6
    invoke-direct {p0, p3, v3, p2}, Landroid/support/v4/abstract;->catch(Landroid/support/v4/sk2;Ljava/io/File;Landroid/support/v4/uf1;)Landroid/support/v4/sk2;

    move-result-object v4

    .line 7
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/support/v4/uf1;->import(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v4}, Lnet/lingala/zip4j/io/outputstream/break;->goto(Landroid/support/v4/sk2;)V

    .line 9
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 10
    invoke-virtual {v1}, Lnet/lingala/zip4j/io/outputstream/break;->do()Landroid/support/v4/oa0;

    goto :goto_0

    .line 11
    :cond_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 12
    :goto_1
    :try_start_2
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x0

    .line 13
    invoke-virtual {v1, v2, v6, v5}, Lnet/lingala/zip4j/io/outputstream/break;->write([BII)V

    int-to-long v5, v5

    .line 14
    invoke-virtual {p2, v5, v6}, Landroid/support/v4/uf1;->throws(J)V

    .line 15
    invoke-virtual {p0}, Landroid/support/v4/f4;->goto()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 16
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 17
    invoke-virtual {v1}, Lnet/lingala/zip4j/io/outputstream/break;->do()Landroid/support/v4/oa0;

    move-result-object v4

    .line 18
    invoke-static {v3}, Landroid/support/v4/db0;->case(Ljava/io/File;)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/support/v4/oa0;->j([B)V

    .line 19
    invoke-virtual {p0, v4, v0}, Landroid/support/v4/abstract;->throw(Landroid/support/v4/oa0;Lnet/lingala/zip4j/io/outputstream/else;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 20
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    .line 21
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p3

    :try_start_6
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_2
    if-eqz v1, :cond_3

    .line 22
    :try_start_7
    invoke-virtual {v1}, Lnet/lingala/zip4j/io/outputstream/break;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :cond_3
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/else;->close()V

    return-void

    :catchall_3
    move-exception p1

    .line 23
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p2

    if-eqz v1, :cond_4

    .line 24
    :try_start_9
    invoke-virtual {v1}, Lnet/lingala/zip4j/io/outputstream/break;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p3

    :try_start_a
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception p1

    .line 25
    :try_start_b
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception p2

    .line 26
    :try_start_c
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/else;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_4

    :catchall_8
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    goto :goto_6

    :goto_5
    throw p2

    :goto_6
    goto :goto_5
.end method

.method public throw(Landroid/support/v4/oa0;Lnet/lingala/zip4j/io/outputstream/else;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/abstract;->try:Landroid/support/v4/gj0;

    invoke-virtual {p0}, Landroid/support/v4/abstract;->class()Landroid/support/v4/rk2;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Landroid/support/v4/gj0;->goto(Landroid/support/v4/oa0;Landroid/support/v4/rk2;Lnet/lingala/zip4j/io/outputstream/else;)V

    return-void
.end method

.method public try()Landroid/support/v4/uf1$for;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/uf1$for;->ADD_ENTRY:Landroid/support/v4/uf1$for;

    return-object v0
.end method

.method public while(Landroid/support/v4/sk2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/sk2;->new()Landroid/support/v4/hq;

    move-result-object v0

    sget-object v1, Landroid/support/v4/hq;->STORE:Landroid/support/v4/hq;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/sk2;->new()Landroid/support/v4/hq;

    move-result-object v0

    sget-object v1, Landroid/support/v4/hq;->DEFLATE:Landroid/support/v4/hq;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "unsupported compression type"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/sk2;->catch()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p1}, Landroid/support/v4/sk2;->case()Landroid/support/v4/t70;

    move-result-object p1

    sget-object v0, Landroid/support/v4/t70;->NONE:Landroid/support/v4/t70;

    if-eq p1, v0, :cond_3

    .line 5
    iget-object p1, p0, Landroid/support/v4/abstract;->new:[C

    if-eqz p1, :cond_2

    array-length p1, p1

    if-lez p1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "input password is empty or null"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "Encryption method has to be set, when encrypt files flag is set"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_4
    sget-object v0, Landroid/support/v4/t70;->NONE:Landroid/support/v4/t70;

    invoke-virtual {p1, v0}, Landroid/support/v4/sk2;->switch(Landroid/support/v4/t70;)V

    :goto_1
    return-void

    .line 9
    :cond_5
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "cannot validate zip parameters"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method
