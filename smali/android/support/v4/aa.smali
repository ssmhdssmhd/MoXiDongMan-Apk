.class public Landroid/support/v4/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static do:Landroid/content/Context;

.field private static if:Landroid/support/v4/aa;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case(Landroid/content/Context;Landroid/support/v4/aa;)V
    .locals 0

    .line 1
    sput-object p0, Landroid/support/v4/aa;->do:Landroid/content/Context;

    .line 2
    sput-object p1, Landroid/support/v4/aa;->if:Landroid/support/v4/aa;

    return-void
.end method

.method public static try()Landroid/support/v4/aa;
    .locals 2

    .line 1
    sget-object v0, Landroid/support/v4/aa;->if:Landroid/support/v4/aa;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BlockCanaryContext not init"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public break()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/aa;->goto()I

    move-result v0

    return v0
.end method

.method public catch()I
    .locals 1

    const v0, 0x1869f

    return v0
.end method

.method public class()Ljava/lang/String;
    .locals 1

    const-string v0, "UNKNOWN"

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

    const-string v0, "Unspecified"

    return-object v0
.end method

.method public for()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goto()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public if()Z
    .locals 1

    const/4 v0, 0x0

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

    const-string v0, "0"

    return-object v0
.end method

.method public this()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/aa;->do:Landroid/content/Context;

    return-object v0
.end method

.method public throw()Ljava/util/List;
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

.method public while()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
