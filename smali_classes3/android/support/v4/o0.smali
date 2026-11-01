.class public Landroid/support/v4/o0;
.super Landroid/support/v4/abstract;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/o0$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/abstract<",
        "Landroid/support/v4/o0$do;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/uf1;ZLandroid/support/v4/rk2;[CLandroid/support/v4/gj0;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroid/support/v4/abstract;-><init>(Landroid/support/v4/uf1;ZLandroid/support/v4/rk2;[CLandroid/support/v4/gj0;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic if(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/support/v4/o0$do;

    invoke-virtual {p0, p1}, Landroid/support/v4/o0;->import(Landroid/support/v4/o0$do;)J

    move-result-wide v0

    return-wide v0
.end method

.method public import(Landroid/support/v4/o0$do;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public native(Landroid/support/v4/o0$do;Landroid/support/v4/uf1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/o0$do;->do(Landroid/support/v4/o0$do;)Landroid/support/v4/sk2;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v4/abstract;->while(Landroid/support/v4/sk2;)V

    .line 2
    invoke-static {p1}, Landroid/support/v4/o0$do;->do(Landroid/support/v4/o0$do;)Landroid/support/v4/sk2;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v4/sk2;->strictfp(Z)V

    .line 3
    invoke-static {p1}, Landroid/support/v4/o0$do;->do(Landroid/support/v4/o0$do;)Landroid/support/v4/sk2;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/sk2;->new()Landroid/support/v4/hq;

    move-result-object p2

    sget-object v0, Landroid/support/v4/hq;->STORE:Landroid/support/v4/hq;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p1}, Landroid/support/v4/o0$do;->do(Landroid/support/v4/o0$do;)Landroid/support/v4/sk2;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/support/v4/sk2;->default(J)V

    .line 5
    :cond_0
    new-instance p2, Lnet/lingala/zip4j/io/outputstream/else;

    invoke-virtual {p0}, Landroid/support/v4/abstract;->class()Landroid/support/v4/rk2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/rk2;->catch()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/abstract;->class()Landroid/support/v4/rk2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/rk2;->else()J

    move-result-wide v1

    invoke-direct {p2, v0, v1, v2}, Lnet/lingala/zip4j/io/outputstream/else;-><init>(Ljava/io/File;J)V

    .line 6
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/support/v4/abstract;->const(Lnet/lingala/zip4j/io/outputstream/else;)Lnet/lingala/zip4j/io/outputstream/break;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v1, 0x1000

    :try_start_1
    new-array v1, v1, [B

    .line 7
    invoke-static {p1}, Landroid/support/v4/o0$do;->do(Landroid/support/v4/o0$do;)Landroid/support/v4/sk2;

    move-result-object v2

    .line 8
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/io/outputstream/break;->goto(Landroid/support/v4/sk2;)V

    .line 9
    invoke-virtual {v2}, Landroid/support/v4/sk2;->this()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    invoke-virtual {v2}, Landroid/support/v4/sk2;->this()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    :goto_0
    invoke-static {p1}, Landroid/support/v4/o0$do;->if(Landroid/support/v4/o0$do;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    .line 12
    invoke-virtual {v0, v1, v3, v2}, Lnet/lingala/zip4j/io/outputstream/break;->write([BII)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/break;->do()Landroid/support/v4/oa0;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/support/v4/transient;->try()Landroid/support/v4/hq;

    move-result-object v1

    sget-object v2, Landroid/support/v4/hq;->STORE:Landroid/support/v4/hq;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/abstract;->throw(Landroid/support/v4/oa0;Lnet/lingala/zip4j/io/outputstream/else;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/break;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-virtual {p2}, Lnet/lingala/zip4j/io/outputstream/else;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 17
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_3

    .line 18
    :try_start_4
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/break;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    .line 19
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    .line 20
    :try_start_7
    invoke-virtual {p2}, Lnet/lingala/zip4j/io/outputstream/else;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public bridge synthetic new(Ljava/lang/Object;Landroid/support/v4/uf1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/support/v4/o0$do;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/o0;->native(Landroid/support/v4/o0$do;Landroid/support/v4/uf1;)V

    return-void
.end method
