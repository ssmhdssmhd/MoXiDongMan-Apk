.class public Landroid/support/v4/n0;
.super Landroid/support/v4/abstract;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/n0$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/abstract<",
        "Landroid/support/v4/n0$do;",
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

.method private public(Landroid/support/v4/n0$do;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/n0$do;",
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
    invoke-static {p1}, Landroid/support/v4/n0$do;->if(Landroid/support/v4/n0$do;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-static {p1}, Landroid/support/v4/n0$do;->do(Landroid/support/v4/n0$do;)Landroid/support/v4/sk2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/sk2;->final()Z

    move-result v1

    .line 3
    invoke-static {p1}, Landroid/support/v4/n0$do;->do(Landroid/support/v4/n0$do;)Landroid/support/v4/sk2;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/sk2;->super()Z

    move-result v2

    .line 4
    invoke-static {v0, v1, v2}, Landroid/support/v4/db0;->else(Ljava/io/File;ZZ)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-static {p1}, Landroid/support/v4/n0$do;->do(Landroid/support/v4/n0$do;)Landroid/support/v4/sk2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/sk2;->class()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {p1}, Landroid/support/v4/n0$do;->if(Landroid/support/v4/n0$do;)Ljava/io/File;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private return(Landroid/support/v4/n0$do;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/support/v4/n0$do;->if(Landroid/support/v4/n0$do;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-static {p1}, Landroid/support/v4/n0$do;->do(Landroid/support/v4/n0$do;)Landroid/support/v4/sk2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/sk2;->class()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_0
    invoke-static {p1}, Landroid/support/v4/n0$do;->do(Landroid/support/v4/n0$do;)Landroid/support/v4/sk2;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/sk2;->return(Ljava/lang/String;)V

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
    check-cast p1, Landroid/support/v4/n0$do;

    invoke-virtual {p0, p1}, Landroid/support/v4/n0;->import(Landroid/support/v4/n0$do;)J

    move-result-wide v0

    return-wide v0
.end method

.method public import(Landroid/support/v4/n0$do;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/n0$do;->if(Landroid/support/v4/n0$do;)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-static {p1}, Landroid/support/v4/n0$do;->do(Landroid/support/v4/n0$do;)Landroid/support/v4/sk2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/sk2;->final()Z

    move-result v1

    .line 3
    invoke-static {p1}, Landroid/support/v4/n0$do;->do(Landroid/support/v4/n0$do;)Landroid/support/v4/sk2;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/sk2;->super()Z

    move-result v2

    .line 4
    invoke-static {v0, v1, v2}, Landroid/support/v4/db0;->else(Ljava/io/File;ZZ)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-static {p1}, Landroid/support/v4/n0$do;->do(Landroid/support/v4/n0$do;)Landroid/support/v4/sk2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/sk2;->class()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {p1}, Landroid/support/v4/n0$do;->if(Landroid/support/v4/n0$do;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    invoke-static {p1}, Landroid/support/v4/n0$do;->do(Landroid/support/v4/n0$do;)Landroid/support/v4/sk2;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/abstract;->break(Ljava/util/List;Landroid/support/v4/sk2;)J

    move-result-wide v0

    return-wide v0
.end method

.method public native(Landroid/support/v4/n0$do;Landroid/support/v4/uf1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/n0;->public(Landroid/support/v4/n0$do;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Landroid/support/v4/n0;->return(Landroid/support/v4/n0$do;)V

    .line 3
    invoke-static {p1}, Landroid/support/v4/n0$do;->do(Landroid/support/v4/n0$do;)Landroid/support/v4/sk2;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Landroid/support/v4/abstract;->this(Ljava/util/List;Landroid/support/v4/uf1;Landroid/support/v4/sk2;)V

    return-void
.end method

.method public bridge synthetic new(Ljava/lang/Object;Landroid/support/v4/uf1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/support/v4/n0$do;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/n0;->native(Landroid/support/v4/n0$do;Landroid/support/v4/uf1;)V

    return-void
.end method
