.class public final Lcom/google/zxing/oned/super;
.super Lcom/google/zxing/oned/while;
.source "SourceFile"


# instance fields
.field private final do:[Lcom/google/zxing/oned/while;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/new;",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/while;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/google/zxing/new;->POSSIBLE_FORMATS:Lcom/google/zxing/new;

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    sget-object v1, Lcom/google/zxing/new;->ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/zxing/new;

    .line 5
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_a

    .line 7
    sget-object v3, Lcom/google/zxing/do;->EAN_13:Lcom/google/zxing/do;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/google/zxing/do;->UPC_A:Lcom/google/zxing/do;

    .line 8
    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/google/zxing/do;->EAN_8:Lcom/google/zxing/do;

    .line 9
    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/google/zxing/do;->UPC_E:Lcom/google/zxing/do;

    .line 10
    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    :cond_2
    new-instance v3, Lcom/google/zxing/oned/throw;

    invoke-direct {v3, p1}, Lcom/google/zxing/oned/throw;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_3
    sget-object v3, Lcom/google/zxing/do;->CODE_39:Lcom/google/zxing/do;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13
    new-instance v3, Lcom/google/zxing/oned/new;

    invoke-direct {v3, v1}, Lcom/google/zxing/oned/new;-><init>(Z)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_4
    sget-object v1, Lcom/google/zxing/do;->CODE_93:Lcom/google/zxing/do;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    new-instance v1, Lcom/google/zxing/oned/case;

    invoke-direct {v1}, Lcom/google/zxing/oned/case;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_5
    sget-object v1, Lcom/google/zxing/do;->CODE_128:Lcom/google/zxing/do;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 17
    new-instance v1, Lcom/google/zxing/oned/if;

    invoke-direct {v1}, Lcom/google/zxing/oned/if;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_6
    sget-object v1, Lcom/google/zxing/do;->ITF:Lcom/google/zxing/do;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 19
    new-instance v1, Lcom/google/zxing/oned/const;

    invoke-direct {v1}, Lcom/google/zxing/oned/const;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_7
    sget-object v1, Lcom/google/zxing/do;->CODABAR:Lcom/google/zxing/do;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 21
    new-instance v1, Lcom/google/zxing/oned/do;

    invoke-direct {v1}, Lcom/google/zxing/oned/do;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_8
    sget-object v1, Lcom/google/zxing/do;->RSS_14:Lcom/google/zxing/do;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 23
    new-instance v1, Lcom/google/zxing/oned/rss/for;

    invoke-direct {v1}, Lcom/google/zxing/oned/rss/for;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_9
    sget-object v1, Lcom/google/zxing/do;->RSS_EXPANDED:Lcom/google/zxing/do;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 25
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/new;

    invoke-direct {v0}, Lcom/google/zxing/oned/rss/expanded/new;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_a
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 27
    new-instance v0, Lcom/google/zxing/oned/throw;

    invoke-direct {v0, p1}, Lcom/google/zxing/oned/throw;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance p1, Lcom/google/zxing/oned/new;

    invoke-direct {p1}, Lcom/google/zxing/oned/new;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance p1, Lcom/google/zxing/oned/do;

    invoke-direct {p1}, Lcom/google/zxing/oned/do;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance p1, Lcom/google/zxing/oned/case;

    invoke-direct {p1}, Lcom/google/zxing/oned/case;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance p1, Lcom/google/zxing/oned/if;

    invoke-direct {p1}, Lcom/google/zxing/oned/if;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance p1, Lcom/google/zxing/oned/const;

    invoke-direct {p1}, Lcom/google/zxing/oned/const;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance p1, Lcom/google/zxing/oned/rss/for;

    invoke-direct {p1}, Lcom/google/zxing/oned/rss/for;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance p1, Lcom/google/zxing/oned/rss/expanded/new;

    invoke-direct {p1}, Lcom/google/zxing/oned/rss/expanded/new;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_b
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/zxing/oned/while;

    invoke-interface {v2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/zxing/oned/while;

    iput-object p1, p0, Lcom/google/zxing/oned/super;->do:[Lcom/google/zxing/oned/while;

    return-void
.end method


# virtual methods
.method public do(ILandroid/support/v4/w8;Ljava/util/Map;)Landroid/support/v4/wn1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/w8;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/new;",
            "*>;)",
            "Landroid/support/v4/wn1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/super;->do:[Lcom/google/zxing/oned/while;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    :try_start_0
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/zxing/oned/while;->do(ILandroid/support/v4/w8;Ljava/util/Map;)Landroid/support/v4/wn1;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/kl1; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroid/support/v4/j41;->getNotFoundInstance()Landroid/support/v4/j41;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public reset()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/super;->do:[Lcom/google/zxing/oned/while;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3}, Lcom/google/zxing/Reader;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
