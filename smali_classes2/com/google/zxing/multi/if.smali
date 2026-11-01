.class public final Lcom/google/zxing/multi/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/multi/MultipleBarcodeReader;


# static fields
.field private static final for:I = 0x4

.field private static final if:I = 0x64


# instance fields
.field private final do:Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/zxing/multi/if;->do:Lcom/google/zxing/Reader;

    return-void
.end method

.method private do(Lcom/google/zxing/for;Ljava/util/Map;Ljava/util/List;III)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/for;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/new;",
            "*>;",
            "Ljava/util/List<",
            "Landroid/support/v4/wn1;",
            ">;III)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    const/4 v1, 0x4

    if-le v10, v1, :cond_0

    return-void

    :cond_0
    move-object/from16 v11, p0

    .line 1
    :try_start_0
    iget-object v1, v11, Lcom/google/zxing/multi/if;->do:Lcom/google/zxing/Reader;

    move-object/from16 v12, p2

    invoke-interface {v1, v0, v12}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/for;Ljava/util/Map;)Landroid/support/v4/wn1;

    move-result-object v1
    :try_end_0
    .catch Landroid/support/v4/kl1; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/wn1;

    .line 3
    invoke-virtual {v3}, Landroid/support/v4/wn1;->else()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v4/wn1;->else()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    .line 4
    invoke-static {v1, v8, v9}, Lcom/google/zxing/multi/if;->if(Landroid/support/v4/wn1;II)Landroid/support/v4/wn1;

    move-result-object v2

    move-object/from16 v15, p3

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object/from16 v15, p3

    .line 5
    :goto_1
    invoke-virtual {v1}, Landroid/support/v4/wn1;->case()[Landroid/support/v4/yn1;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 6
    array-length v2, v1

    if-nez v2, :cond_4

    goto/16 :goto_4

    .line 7
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/for;->try()I

    move-result v7

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/for;->new()I

    move-result v6

    int-to-float v2, v7

    int-to-float v3, v6

    .line 9
    array-length v4, v1

    const/4 v5, 0x0

    move v5, v3

    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v4, :cond_9

    aget-object v16, v1, v14

    if-eqz v16, :cond_8

    .line 10
    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/yn1;->for()F

    move-result v17

    .line 11
    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/yn1;->new()F

    move-result v16

    cmpg-float v18, v17, v2

    if-gez v18, :cond_5

    move/from16 v2, v17

    :cond_5
    cmpg-float v18, v16, v5

    if-gez v18, :cond_6

    move/from16 v5, v16

    :cond_6
    cmpl-float v18, v17, v3

    if-lez v18, :cond_7

    move/from16 v3, v17

    :cond_7
    cmpl-float v17, v16, v13

    if-lez v17, :cond_8

    move/from16 v13, v16

    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_9
    const/high16 v14, 0x42c80000    # 100.0f

    cmpl-float v1, v2, v14

    if-lez v1, :cond_a

    float-to-int v1, v2

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v2, v2, v1, v6}, Lcom/google/zxing/for;->do(IIII)Lcom/google/zxing/for;

    move-result-object v4

    add-int/lit8 v16, v10, 0x1

    move-object/from16 v1, p0

    move-object v2, v4

    move v4, v3

    move-object/from16 v3, p2

    move/from16 v19, v4

    move-object/from16 v4, p3

    move v14, v5

    move/from16 v5, p4

    move v11, v6

    move/from16 v6, p5

    move v12, v7

    move/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/multi/if;->do(Lcom/google/zxing/for;Ljava/util/Map;Ljava/util/List;III)V

    goto :goto_3

    :cond_a
    move/from16 v19, v3

    move v14, v5

    move v11, v6

    move v12, v7

    :goto_3
    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, v14, v1

    if-lez v1, :cond_b

    float-to-int v1, v14

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v2, v2, v12, v1}, Lcom/google/zxing/for;->do(IIII)Lcom/google/zxing/for;

    move-result-object v3

    add-int/lit8 v7, v10, 0x1

    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/multi/if;->do(Lcom/google/zxing/for;Ljava/util/Map;Ljava/util/List;III)V

    :cond_b
    add-int/lit8 v7, v12, -0x64

    int-to-float v1, v7

    move/from16 v3, v19

    cmpg-float v1, v3, v1

    if-gez v1, :cond_c

    float-to-int v1, v3

    sub-int v7, v12, v1

    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2, v7, v11}, Lcom/google/zxing/for;->do(IIII)Lcom/google/zxing/for;

    move-result-object v3

    add-int v5, v8, v1

    add-int/lit8 v7, v10, 0x1

    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/multi/if;->do(Lcom/google/zxing/for;Ljava/util/Map;Ljava/util/List;III)V

    :cond_c
    add-int/lit8 v6, v11, -0x64

    int-to-float v1, v6

    cmpg-float v1, v13, v1

    if-gez v1, :cond_d

    float-to-int v1, v13

    sub-int v6, v11, v1

    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2, v1, v12, v6}, Lcom/google/zxing/for;->do(IIII)Lcom/google/zxing/for;

    move-result-object v2

    add-int v5, v9, v1

    const/4 v0, 0x1

    add-int/lit8 v6, v10, 0x1

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/multi/if;->do(Lcom/google/zxing/for;Ljava/util/Map;Ljava/util/List;III)V

    :catch_0
    :cond_d
    :goto_4
    return-void
.end method

.method private static if(Landroid/support/v4/wn1;II)Landroid/support/v4/wn1;
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/wn1;->case()[Landroid/support/v4/yn1;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    array-length v1, v0

    new-array v6, v1, [Landroid/support/v4/yn1;

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 4
    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 5
    new-instance v3, Landroid/support/v4/yn1;

    invoke-virtual {v2}, Landroid/support/v4/yn1;->for()F

    move-result v4

    int-to-float v5, p1

    add-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/support/v4/yn1;->new()F

    move-result v2

    int-to-float v5, p2

    add-float/2addr v2, v5

    invoke-direct {v3, v4, v2}, Landroid/support/v4/yn1;-><init>(FF)V

    aput-object v3, v6, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    new-instance p1, Landroid/support/v4/wn1;

    invoke-virtual {p0}, Landroid/support/v4/wn1;->else()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p0}, Landroid/support/v4/wn1;->new()[B

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Landroid/support/v4/wn1;->for()I

    move-result v5

    .line 9
    invoke-virtual {p0}, Landroid/support/v4/wn1;->if()Lcom/google/zxing/do;

    move-result-object v7

    .line 10
    invoke-virtual {p0}, Landroid/support/v4/wn1;->goto()J

    move-result-wide v8

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Landroid/support/v4/wn1;-><init>(Ljava/lang/String;[BI[Landroid/support/v4/yn1;Lcom/google/zxing/do;J)V

    .line 11
    invoke-virtual {p0}, Landroid/support/v4/wn1;->try()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/support/v4/wn1;->this(Ljava/util/Map;)V

    return-object p1
.end method


# virtual methods
.method public decodeMultiple(Lcom/google/zxing/for;)[Landroid/support/v4/wn1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/multi/if;->decodeMultiple(Lcom/google/zxing/for;Ljava/util/Map;)[Landroid/support/v4/wn1;

    move-result-object p1

    return-object p1
.end method

.method public decodeMultiple(Lcom/google/zxing/for;Ljava/util/Map;)[Landroid/support/v4/wn1;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/for;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/new;",
            "*>;)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;
        }
    .end annotation

    .line 2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v7

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/multi/if;->do(Lcom/google/zxing/for;Ljava/util/Map;Ljava/util/List;III)V

    .line 4
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/support/v4/wn1;

    invoke-interface {v7, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/support/v4/wn1;

    return-object p1

    .line 6
    :cond_0
    invoke-static {}, Landroid/support/v4/j41;->getNotFoundInstance()Landroid/support/v4/j41;

    move-result-object p1

    throw p1
.end method
