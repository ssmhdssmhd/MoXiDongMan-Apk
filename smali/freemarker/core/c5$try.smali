.class Lfreemarker/core/c5$try;
.super Landroid/support/v4/ol2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/c5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Legacy operation failed"

    .line 1
    invoke-direct {p0, v0, p1}, Landroid/support/v4/ol2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    instance-of v0, p1, Ljava/lang/ClassNotFoundException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/InstantiationException;

    if-nez v0, :cond_1

    instance-of p1, p1, Ljava/lang/IllegalAccessException;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public rethrowLegacy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/lang/ClassNotFoundException;

    if-nez v1, :cond_2

    .line 3
    instance-of v1, v0, Ljava/lang/InstantiationException;

    if-nez v1, :cond_1

    .line 4
    instance-of v1, v0, Ljava/lang/IllegalAccessException;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/IllegalAccessException;

    throw v0

    .line 5
    :cond_0
    new-instance v0, Landroid/support/v4/mc;

    invoke-direct {v0}, Landroid/support/v4/mc;-><init>()V

    throw v0

    .line 6
    :cond_1
    check-cast v0, Ljava/lang/InstantiationException;

    throw v0

    .line 7
    :cond_2
    check-cast v0, Ljava/lang/ClassNotFoundException;

    throw v0
.end method
