.class public Landroid/support/v4/j2;
.super Landroid/support/v4/aa;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public break()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/j2;->goto()I

    move-result v0

    return v0
.end method

.method public catch()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public class()Ljava/lang/String;
    .locals 1

    const-string v0, "unknown"

    return-object v0
.end method

.method public const()Ljava/lang/String;
    .locals 1

    const-string v0, "/blockcanary/"

    return-object v0
.end method

.method public do()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public else(Landroid/content/Context;Landroid/support/v4/da;)V
    .locals 0

    return-void
.end method

.method public final()Ljava/lang/String;
    .locals 1

    const-string v0, "unknown"

    return-object v0
.end method

.method public for()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public goto()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public if()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public import(Ljava/io/File;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public native([Ljava/io/File;Ljava/io/File;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public new()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public super()Ljava/lang/String;
    .locals 1

    const-string v0, "uid"

    return-object v0
.end method

.method public throw()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string v1, "org.chromium"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
