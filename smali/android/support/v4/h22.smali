.class public Landroid/support/v4/h22;
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

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    invoke-virtual {p1}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "string-length"

    return-object v0
.end method
