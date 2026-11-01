.class public Landroid/support/v4/i22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/ricecode/similarity/StringSimilarityService;


# instance fields
.field private do:Lnet/ricecode/similarity/SimilarityStrategy;


# direct methods
.method public constructor <init>(Lnet/ricecode/similarity/SimilarityStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/i22;->do:Lnet/ricecode/similarity/SimilarityStrategy;

    return-void
.end method


# virtual methods
.method public findTop(Ljava/util/List;Ljava/lang/String;)Landroid/support/v4/vy1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/support/v4/vy1;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/lz;

    invoke-direct {v0}, Landroid/support/v4/lz;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/i22;->findTop(Ljava/util/List;Ljava/lang/String;Ljava/util/Comparator;)Landroid/support/v4/vy1;

    move-result-object p1

    return-object p1
.end method

.method public findTop(Ljava/util/List;Ljava/lang/String;Ljava/util/Comparator;)Landroid/support/v4/vy1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Comparator<",
            "Landroid/support/v4/vy1;",
            ">;)",
            "Landroid/support/v4/vy1;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/i22;->scoreAll(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-static {p1, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p2, 0x0

    .line 5
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/vy1;

    return-object p1
.end method

.method public score(Ljava/lang/String;Ljava/lang/String;)D
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/i22;->do:Lnet/ricecode/similarity/SimilarityStrategy;

    invoke-interface {v0, p1, p2}, Lnet/ricecode/similarity/SimilarityStrategy;->score(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p1

    return-wide p1
.end method

.method public scoreAll(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v4/vy1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    iget-object v2, p0, Landroid/support/v4/i22;->do:Lnet/ricecode/similarity/SimilarityStrategy;

    invoke-interface {v2, v1, p2}, Lnet/ricecode/similarity/SimilarityStrategy;->score(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v2

    .line 4
    new-instance v4, Landroid/support/v4/vy1;

    invoke-direct {v4, v1, v2, v3}, Landroid/support/v4/vy1;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
