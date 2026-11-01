.class public Landroid/support/v4/kq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/seimicrawler/xpath/core/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/support/v4/es1;Ljava/util/List;)Landroid/support/v4/dj2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/es1;",
            "Ljava/util/List<",
            "Landroid/support/v4/dj2;",
            ">;)",
            "Landroid/support/v4/dj2;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dj2;

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "concat"

    return-object v0
.end method
