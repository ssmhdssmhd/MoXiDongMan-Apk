.class public Landroid/support/v4/i41;
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
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    invoke-virtual {p1}, Landroid/support/v4/dj2;->do()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Landroid/support/v4/hj2;

    const-string p2, "error param in not(bool) function.Please check."

    invoke-direct {p1, p2}, Landroid/support/v4/hj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "not"

    return-object v0
.end method
