.class public Landroid/support/v4/ca0;
.super Landroid/support/v4/protected;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/ca0$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/protected<",
        "Landroid/support/v4/ca0$do;",
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
    iput-object p4, p0, Landroid/support/v4/ca0;->try:[C

    return-void
.end method


# virtual methods
.method public final(Landroid/support/v4/ca0$do;)J
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/support/v4/ca0$do;->do(Landroid/support/v4/ca0$do;)Landroid/support/v4/oa0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/transient;->super()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic if(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/support/v4/ca0$do;

    invoke-virtual {p0, p1}, Landroid/support/v4/ca0;->final(Landroid/support/v4/ca0$do;)J

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
    check-cast p1, Landroid/support/v4/ca0$do;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/ca0;->throw(Landroid/support/v4/ca0$do;Landroid/support/v4/uf1;)V

    return-void
.end method

.method public super(Landroid/support/v4/oa0;)Lnet/lingala/zip4j/io/inputstream/this;
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

    iput-object v0, p0, Landroid/support/v4/ca0;->case:Lnet/lingala/zip4j/io/inputstream/case;

    .line 3
    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/io/inputstream/case;->for(Landroid/support/v4/oa0;)V

    .line 4
    new-instance p1, Lnet/lingala/zip4j/io/inputstream/this;

    iget-object v0, p0, Landroid/support/v4/ca0;->case:Lnet/lingala/zip4j/io/inputstream/case;

    iget-object v1, p0, Landroid/support/v4/ca0;->try:[C

    invoke-direct {p1, v0, v1}, Lnet/lingala/zip4j/io/inputstream/this;-><init>(Ljava/io/InputStream;[C)V

    return-object p1
.end method

.method public throw(Landroid/support/v4/ca0$do;Landroid/support/v4/uf1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/support/v4/ca0$do;->do(Landroid/support/v4/ca0$do;)Landroid/support/v4/oa0;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/ca0;->super(Landroid/support/v4/oa0;)Lnet/lingala/zip4j/io/inputstream/this;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2
    :try_start_1
    invoke-static {p1}, Landroid/support/v4/ca0$do;->do(Landroid/support/v4/ca0$do;)Landroid/support/v4/oa0;

    move-result-object v3

    invoke-static {p1}, Landroid/support/v4/ca0$do;->if(Landroid/support/v4/ca0$do;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Landroid/support/v4/ca0$do;->for(Landroid/support/v4/ca0$do;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/protected;->break(Lnet/lingala/zip4j/io/inputstream/this;Landroid/support/v4/oa0;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/uf1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 3
    :try_start_2
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/inputstream/this;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/support/v4/ca0;->case:Lnet/lingala/zip4j/io/inputstream/case;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lnet/lingala/zip4j/io/inputstream/case;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_2

    .line 7
    :try_start_4
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/inputstream/this;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    .line 8
    iget-object p2, p0, Landroid/support/v4/ca0;->case:Lnet/lingala/zip4j/io/inputstream/case;

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p2}, Lnet/lingala/zip4j/io/inputstream/case;->close()V

    .line 10
    :cond_3
    throw p1
.end method
