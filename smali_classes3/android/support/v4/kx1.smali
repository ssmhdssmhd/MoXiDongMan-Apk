.class public Landroid/support/v4/kx1;
.super Landroid/support/v4/f4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/f4<",
        "Ljava/lang/String;",
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
    iput-object p3, p0, Landroid/support/v4/kx1;->for:Landroid/support/v4/rk2;

    return-void
.end method


# virtual methods
.method public break(Ljava/lang/String;Landroid/support/v4/uf1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object p2, p0, Landroid/support/v4/kx1;->for:Landroid/support/v4/rk2;

    invoke-virtual {p2}, Landroid/support/v4/rk2;->try()Landroid/support/v4/w70;

    move-result-object p2

    .line 2
    invoke-virtual {p2, p1}, Landroid/support/v4/w70;->break(Ljava/lang/String;)V

    .line 3
    new-instance p1, Lnet/lingala/zip4j/io/outputstream/else;

    iget-object v0, p0, Landroid/support/v4/kx1;->for:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->catch()Ljava/io/File;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/io/outputstream/else;-><init>(Ljava/io/File;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/kx1;->for:Landroid/support/v4/rk2;

    invoke-virtual {v0}, Landroid/support/v4/rk2;->final()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p2, p0, Landroid/support/v4/kx1;->for:Landroid/support/v4/rk2;

    invoke-virtual {p2}, Landroid/support/v4/rk2;->break()Landroid/support/v4/oj2;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Landroid/support/v4/oj2;->case()J

    move-result-wide v0

    .line 7
    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/io/outputstream/else;->goto(J)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/w70;->case()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/io/outputstream/else;->goto(J)V

    .line 9
    :goto_0
    new-instance p2, Landroid/support/v4/gj0;

    invoke-direct {p2}, Landroid/support/v4/gj0;-><init>()V

    .line 10
    iget-object v0, p0, Landroid/support/v4/kx1;->for:Landroid/support/v4/rk2;

    invoke-virtual {p2, v0, p1}, Landroid/support/v4/gj0;->for(Landroid/support/v4/rk2;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p1}, Lnet/lingala/zip4j/io/outputstream/else;->close()V

    return-void

    :catchall_0
    move-exception p2

    .line 12
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 13
    :try_start_2
    invoke-virtual {p1}, Lnet/lingala/zip4j/io/outputstream/else;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0

    .line 14
    :cond_1
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "comment is null, cannot update Zip file with comment"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic if(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/support/v4/kx1;->this(Ljava/lang/String;)J

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
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/kx1;->break(Ljava/lang/String;Landroid/support/v4/uf1;)V

    return-void
.end method

.method public this(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public try()Landroid/support/v4/uf1$for;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/uf1$for;->SET_COMMENT:Landroid/support/v4/uf1$for;

    return-object v0
.end method
