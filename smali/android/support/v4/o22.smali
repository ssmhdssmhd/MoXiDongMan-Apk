.class public Landroid/support/v4/o22;
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
    .locals 4
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

    .line 1
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dj2;

    invoke-virtual {v0}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/dj2;

    invoke-virtual {v2}, Landroid/support/v4/dj2;->case()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    sub-int/2addr v2, v1

    .line 3
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x2

    .line 4
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/dj2;

    invoke-virtual {p2}, Landroid/support/v4/dj2;->case()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result p2

    add-int/2addr p2, v1

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 7
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 8
    invoke-static {v0, v1, p1}, Lorg/apache/commons/lang3/class;->I1(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/class;->H1(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "substring"

    return-object v0
.end method
