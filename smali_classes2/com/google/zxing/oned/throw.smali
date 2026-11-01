.class public final Lcom/google/zxing/oned/throw;
.super Lcom/google/zxing/oned/while;
.source "SourceFile"


# instance fields
.field private final do:[Lcom/google/zxing/oned/throws;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
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

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/google/zxing/new;->POSSIBLE_FORMATS:Lcom/google/zxing/new;

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 4
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    .line 5
    sget-object v1, Lcom/google/zxing/do;->EAN_13:Lcom/google/zxing/do;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Lcom/google/zxing/oned/goto;

    invoke-direct {v1}, Lcom/google/zxing/oned/goto;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_1
    sget-object v1, Lcom/google/zxing/do;->UPC_A:Lcom/google/zxing/do;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    new-instance v1, Lcom/google/zxing/oned/native;

    invoke-direct {v1}, Lcom/google/zxing/oned/native;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_2
    :goto_1
    sget-object v1, Lcom/google/zxing/do;->EAN_8:Lcom/google/zxing/do;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    new-instance v1, Lcom/google/zxing/oned/break;

    invoke-direct {v1}, Lcom/google/zxing/oned/break;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_3
    sget-object v1, Lcom/google/zxing/do;->UPC_E:Lcom/google/zxing/do;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    new-instance p1, Lcom/google/zxing/oned/default;

    invoke-direct {p1}, Lcom/google/zxing/oned/default;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 14
    new-instance p1, Lcom/google/zxing/oned/goto;

    invoke-direct {p1}, Lcom/google/zxing/oned/goto;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance p1, Lcom/google/zxing/oned/break;

    invoke-direct {p1}, Lcom/google/zxing/oned/break;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance p1, Lcom/google/zxing/oned/default;

    invoke-direct {p1}, Lcom/google/zxing/oned/default;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_5
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/zxing/oned/throws;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/zxing/oned/throws;

    iput-object p1, p0, Lcom/google/zxing/oned/throw;->do:[Lcom/google/zxing/oned/throws;

    return-void
.end method


# virtual methods
.method public do(ILandroid/support/v4/w8;Ljava/util/Map;)Landroid/support/v4/wn1;
    .locals 11
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
    invoke-static {p2}, Lcom/google/zxing/oned/throws;->final(Landroid/support/v4/w8;)[I

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/zxing/oned/throw;->do:[Lcom/google/zxing/oned/throws;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v1, v4

    .line 3
    :try_start_0
    invoke-virtual {v5, p1, p2, v0, p3}, Lcom/google/zxing/oned/throws;->catch(ILandroid/support/v4/w8;[ILjava/util/Map;)Landroid/support/v4/wn1;

    move-result-object v5

    .line 4
    invoke-virtual {v5}, Landroid/support/v4/wn1;->if()Lcom/google/zxing/do;

    move-result-object v6

    sget-object v7, Lcom/google/zxing/do;->EAN_13:Lcom/google/zxing/do;

    const/4 v8, 0x1

    if-ne v6, v7, :cond_0

    .line 5
    invoke-virtual {v5}, Landroid/support/v4/wn1;->else()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-nez p3, :cond_1

    const/4 v7, 0x0

    goto :goto_2

    .line 6
    :cond_1
    sget-object v7, Lcom/google/zxing/new;->POSSIBLE_FORMATS:Lcom/google/zxing/new;

    .line 7
    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    :goto_2
    if-eqz v7, :cond_3

    .line 8
    sget-object v9, Lcom/google/zxing/do;->UPC_A:Lcom/google/zxing/do;

    invoke-interface {v7, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v7, 0x1

    :goto_4
    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    .line 9
    new-instance v6, Landroid/support/v4/wn1;

    invoke-virtual {v5}, Landroid/support/v4/wn1;->else()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-virtual {v5}, Landroid/support/v4/wn1;->new()[B

    move-result-object v8

    .line 11
    invoke-virtual {v5}, Landroid/support/v4/wn1;->case()[Landroid/support/v4/yn1;

    move-result-object v9

    sget-object v10, Lcom/google/zxing/do;->UPC_A:Lcom/google/zxing/do;

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/support/v4/wn1;-><init>(Ljava/lang/String;[B[Landroid/support/v4/yn1;Lcom/google/zxing/do;)V

    .line 12
    invoke-virtual {v5}, Landroid/support/v4/wn1;->try()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/support/v4/wn1;->this(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/support/v4/kl1; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :cond_4
    return-object v5

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_5
    invoke-static {}, Landroid/support/v4/j41;->getNotFoundInstance()Landroid/support/v4/j41;

    move-result-object p1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public reset()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/zxing/oned/throw;->do:[Lcom/google/zxing/oned/throws;

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
