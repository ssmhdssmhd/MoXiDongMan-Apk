.class final Lfreemarker/core/b0;
.super Lfreemarker/core/h0;
.source "SourceFile"


# static fields
.field private static final catch:I = -0x1

.field private static class:[Ljava/lang/Class;


# instance fields
.field private break:Z

.field private final goto:Lfreemarker/core/h0;

.field private final this:Lfreemarker/core/h0;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lfreemarker/core/u2;->STRING_COERCABLE_TYPES:[Ljava/lang/Class;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lfreemarker/core/b0;->class:[Ljava/lang/Class;

    .line 2
    const-class v1, Lfreemarker/template/TemplateSequenceModel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    :goto_0
    sget-object v0, Lfreemarker/core/u2;->STRING_COERCABLE_TYPES:[Ljava/lang/Class;

    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 4
    sget-object v1, Lfreemarker/core/b0;->class:[Ljava/lang/Class;

    add-int/lit8 v3, v2, 0x1

    aget-object v0, v0, v2

    aput-object v0, v1, v3

    move v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lfreemarker/core/h0;Lfreemarker/core/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/h0;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/b0;->this:Lfreemarker/core/h0;

    .line 3
    iput-object p2, p0, Lfreemarker/core/b0;->goto:Lfreemarker/core/h0;

    .line 4
    invoke-virtual {p1}, Lfreemarker/core/h0;->switch()V

    return-void
.end method

.method public static synthetic d(Lfreemarker/core/b0;II)Landroid/support/v4/vl2;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/core/b0;->l(II)Landroid/support/v4/vl2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lfreemarker/core/b0;Lfreemarker/template/TemplateModelIterator;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/core/b0;->m(Lfreemarker/template/TemplateModelIterator;I)V

    return-void
.end method

.method private f(Lfreemarker/template/TemplateModel;ILfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lfreemarker/template/TemplateSequenceModel;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lfreemarker/template/TemplateSequenceModel;

    .line 3
    :try_start_0
    invoke-interface {v0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const v3, 0x7fffffff

    :goto_0
    if-ge p2, v3, :cond_0

    .line 4
    invoke-interface {v0, p2}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v2

    :cond_0
    return-object v2

    .line 5
    :cond_1
    instance-of v0, p1, Lfreemarker/core/i1;

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lfreemarker/core/i1;

    .line 6
    invoke-virtual {v0}, Lfreemarker/core/i1;->if()Z

    move-result v5

    if-eqz v5, :cond_5

    if-gez p2, :cond_2

    return-object v2

    .line 7
    :cond_2
    invoke-virtual {v0}, Lfreemarker/core/u3;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v0

    .line 8
    :goto_1
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v3

    if-ne p2, v4, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-object v2

    .line 10
    :cond_5
    :try_start_1
    iget-object v0, p0, Lfreemarker/core/b0;->this:Lfreemarker/core/h0;

    invoke-virtual {v0, p3}, Lfreemarker/core/h0;->default(Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Lfreemarker/core/u2; {:try_start_1 .. :try_end_1} :catch_2

    .line 11
    :try_start_2
    new-instance v0, Landroid/support/v4/ez1;

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {v5, p2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lfreemarker/core/u2; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_1
    move-exception v0

    const/4 v6, 0x2

    const/4 v8, 0x1

    if-ltz p2, :cond_7

    .line 12
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lt p2, v9, :cond_6

    .line 13
    new-instance v0, Landroid/support/v4/nl2;

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "String index out of range: The index was "

    aput-object v10, v9, v4

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v8

    const-string v1, " (0-based), but the length of the string is only "

    aput-object v1, v9, v6

    const/4 v1, 0x3

    .line 15
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v1

    const/4 v1, 0x4

    const-string v4, "."

    aput-object v4, v9, v1

    invoke-direct {v0, v9}, Landroid/support/v4/nl2;-><init>([Ljava/lang/Object;)V

    throw v0

    .line 16
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "Can\'t explain exception"

    invoke-direct {v1, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 17
    :cond_7
    new-instance v0, Landroid/support/v4/nl2;

    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "Negative index not allowed: "

    aput-object v6, v5, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-direct {v0, v5}, Landroid/support/v4/nl2;-><init>([Ljava/lang/Object;)V

    throw v0
    :try_end_3
    .catch Lfreemarker/core/u2; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    nop

    .line 18
    new-instance v0, Lfreemarker/core/r4;

    iget-object v4, p0, Lfreemarker/core/b0;->this:Lfreemarker/core/h0;

    sget-object v5, Lfreemarker/core/b0;->class:[Ljava/lang/Class;

    instance-of v1, p1, Lfreemarker/template/TemplateHashModel;

    if-eqz v1, :cond_8

    const-string v1, "You had a numberical value inside the []. Currently that\'s only supported for sequences (lists) and strings. To get a Map item with a non-string key, use myMap?api.get(myKey)."

    move-object v6, v1

    goto :goto_2

    :cond_8
    move-object v6, v2

    :goto_2
    const-string v8, "sequence or string or something automatically convertible to string (number, date or boolean)"

    move-object v1, v0

    move-object v2, v4

    move-object v3, p1

    move-object v4, v8

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/String;Lfreemarker/core/d0;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private g(Lfreemarker/template/TemplateModel;Lfreemarker/core/l3;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    .line 1
    instance-of v3, v1, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v3, :cond_0

    .line 2
    check-cast v1, Lfreemarker/template/TemplateSequenceModel;

    move-object v3, v1

    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x0

    goto :goto_1

    .line 3
    :cond_0
    instance-of v3, v1, Lfreemarker/core/i1;

    if-eqz v3, :cond_1

    check-cast v1, Lfreemarker/core/i1;

    .line 4
    invoke-virtual {v1}, Lfreemarker/core/i1;->if()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v5, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_1

    .line 5
    :cond_1
    :try_start_0
    iget-object v1, v0, Lfreemarker/core/b0;->this:Lfreemarker/core/h0;

    invoke-virtual {v1, v6}, Lfreemarker/core/h0;->default(Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lfreemarker/core/u2; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    goto :goto_0

    .line 6
    :goto_1
    invoke-interface/range {p2 .. p2}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v6

    .line 7
    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/l3;->isRightUnbounded()Z

    move-result v7

    .line 8
    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/l3;->isRightAdaptive()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v7, :cond_3

    if-nez v6, :cond_3

    if-eqz v3, :cond_2

    const/4 v9, 0x1

    .line 9
    :cond_2
    invoke-direct {v0, v9}, Lfreemarker/core/b0;->i(Z)Lfreemarker/template/TemplateModel;

    move-result-object v1

    return-object v1

    .line 10
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/l3;->getBegining()I

    move-result v11

    const-string v12, ") isn\'t allowed for a range used for slicing."

    if-ltz v11, :cond_1c

    .line 11
    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/l3;->getStep()I

    move-result v15

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v16

    :goto_2
    move/from16 v4, v16

    :goto_3
    const/4 v13, 0x1

    goto :goto_4

    :cond_4
    if-eqz v3, :cond_5

    .line 13
    invoke-interface {v3}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v16

    goto :goto_2

    .line 14
    :cond_5
    instance-of v4, v5, Lfreemarker/template/TemplateCollectionModelEx;

    if-eqz v4, :cond_6

    .line 15
    move-object v4, v5

    check-cast v4, Lfreemarker/template/TemplateCollectionModelEx;

    invoke-interface {v4}, Lfreemarker/template/TemplateCollectionModelEx;->size()I

    move-result v4

    goto :goto_3

    :cond_6
    const v4, 0x7fffffff

    const/4 v13, 0x0

    :goto_4
    const/16 v17, 0x8

    const-string v18, "character(s)"

    const-string v19, "element(s)"

    const/16 v20, 0x7

    const-string v21, " "

    const/16 v22, 0x6

    const/16 v23, 0x5

    const-string v24, " has only "

    const-string v25, "string"

    const-string v26, "sequence"

    const-string v27, " is out of bounds, because the sliced "

    const/4 v14, 0x4

    if-eqz v13, :cond_a

    if-eqz v8, :cond_7

    if-ne v15, v10, :cond_7

    if-le v11, v4, :cond_a

    goto :goto_5

    :cond_7
    if-lt v11, v4, :cond_a

    .line 16
    :goto_5
    new-instance v2, Landroid/support/v4/nl2;

    iget-object v3, v0, Lfreemarker/core/b0;->goto:Lfreemarker/core/h0;

    const/16 v5, 0xa

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "Range start index "

    aput-object v6, v5, v9

    .line 17
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const/4 v6, 0x2

    aput-object v27, v5, v6

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    move-object/from16 v25, v26

    :goto_6
    const/4 v6, 0x3

    aput-object v25, v5, v6

    aput-object v24, v5, v14

    .line 18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v23

    aput-object v21, v5, v22

    if-eqz v1, :cond_9

    goto :goto_7

    :cond_9
    move-object/from16 v18, v19

    :goto_7
    aput-object v18, v5, v20

    const-string v1, ". "

    aput-object v1, v5, v17

    const-string v1, "(Note that indices are 0-based)."

    const/16 v4, 0x9

    aput-object v1, v5, v4

    invoke-direct {v2, v3, v5}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;[Ljava/lang/Object;)V

    throw v2

    :cond_a
    const/4 v14, -0x1

    if-nez v7, :cond_10

    add-int/lit8 v7, v6, -0x1

    mul-int v7, v7, v15

    add-int/2addr v7, v11

    if-gez v7, :cond_c

    if-eqz v8, :cond_b

    add-int/lit8 v6, v11, 0x1

    goto :goto_a

    .line 19
    :cond_b
    new-instance v1, Landroid/support/v4/nl2;

    iget-object v2, v0, Lfreemarker/core/b0;->goto:Lfreemarker/core/h0;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Negative range end index ("

    aput-object v4, v3, v9

    .line 20
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    const/4 v4, 0x2

    aput-object v12, v3, v4

    invoke-direct {v1, v2, v3}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;[Ljava/lang/Object;)V

    throw v1

    :cond_c
    if-eqz v13, :cond_12

    if-lt v7, v4, :cond_12

    if-nez v8, :cond_f

    .line 21
    new-instance v2, Landroid/support/v4/nl2;

    iget-object v3, v0, Lfreemarker/core/b0;->goto:Lfreemarker/core/h0;

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "Range end index "

    aput-object v6, v5, v9

    .line 22
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const/4 v6, 0x2

    aput-object v27, v5, v6

    if-eqz v1, :cond_d

    goto :goto_8

    :cond_d
    move-object/from16 v25, v26

    :goto_8
    const/4 v6, 0x3

    aput-object v25, v5, v6

    const/4 v6, 0x4

    aput-object v24, v5, v6

    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v23

    aput-object v21, v5, v22

    if-eqz v1, :cond_e

    goto :goto_9

    :cond_e
    move-object/from16 v18, v19

    :goto_9
    aput-object v18, v5, v20

    const-string v1, ". (Note that indices are 0-based)."

    aput-object v1, v5, v17

    invoke-direct {v2, v3, v5}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;[Ljava/lang/Object;)V

    throw v2

    :cond_f
    sub-int/2addr v4, v11

    .line 24
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    goto :goto_a

    :cond_10
    if-eqz v13, :cond_11

    sub-int/2addr v4, v11

    move v6, v4

    goto :goto_a

    :cond_11
    const/4 v6, -0x1

    :cond_12
    :goto_a
    if-nez v6, :cond_14

    if-eqz v3, :cond_13

    const/4 v9, 0x1

    .line 25
    :cond_13
    invoke-direct {v0, v9}, Lfreemarker/core/b0;->i(Z)Lfreemarker/template/TemplateModel;

    move-result-object v1

    return-object v1

    :cond_14
    if-eqz v3, :cond_16

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    :goto_b
    if-ge v9, v6, :cond_15

    .line 27
    invoke-interface {v3, v11}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v11, v15

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 28
    :cond_15
    new-instance v2, Lfreemarker/template/return;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lfreemarker/template/return;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    return-object v2

    :cond_16
    if-eqz v5, :cond_19

    if-ne v15, v10, :cond_17

    .line 29
    invoke-virtual {v5}, Lfreemarker/core/u3;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    invoke-direct {v0, v1, v2, v6, v13}, Lfreemarker/core/b0;->j(Lfreemarker/template/TemplateModelIterator;Lfreemarker/core/l3;IZ)Lfreemarker/template/TemplateModel;

    move-result-object v1

    return-object v1

    :cond_17
    if-ne v15, v14, :cond_18

    .line 30
    invoke-virtual {v5}, Lfreemarker/core/u3;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    invoke-direct {v0, v1, v2, v6}, Lfreemarker/core/b0;->k(Lfreemarker/template/TemplateModelIterator;Lfreemarker/core/l3;I)Lfreemarker/template/TemplateModel;

    move-result-object v1

    return-object v1

    .line 31
    :cond_18
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_19
    if-gez v15, :cond_1b

    if-le v6, v10, :cond_1b

    .line 32
    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/l3;->isAffectedByStringSlicingBug()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x2

    if-ne v6, v2, :cond_1a

    move v6, v11

    goto :goto_c

    .line 33
    :cond_1a
    new-instance v1, Landroid/support/v4/nl2;

    iget-object v2, v0, Lfreemarker/core/b0;->goto:Lfreemarker/core/h0;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Decreasing ranges aren\'t allowed for slicing strings (as it would give reversed text). The index range was: first = "

    aput-object v4, v3, v9

    .line 34
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    const-string v4, ", last = "

    const/4 v5, 0x2

    aput-object v4, v3, v5

    sub-int/2addr v6, v10

    mul-int v6, v6, v15

    add-int/2addr v11, v6

    .line 35
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-direct {v1, v2, v3}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;[Ljava/lang/Object;)V

    throw v1

    :cond_1b
    add-int/2addr v6, v11

    .line 36
    :goto_c
    new-instance v2, Landroid/support/v4/ez1;

    invoke-virtual {v1, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 37
    :cond_1c
    new-instance v1, Landroid/support/v4/nl2;

    iget-object v2, v0, Lfreemarker/core/b0;->goto:Lfreemarker/core/h0;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Negative range start index ("

    aput-object v4, v3, v9

    .line 38
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    const/4 v4, 0x2

    aput-object v12, v3, v4

    invoke-direct {v1, v2, v3}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;[Ljava/lang/Object;)V

    throw v1

    .line 39
    :catch_0
    new-instance v7, Lfreemarker/core/r4;

    iget-object v2, v0, Lfreemarker/core/b0;->this:Lfreemarker/core/h0;

    .line 40
    invoke-virtual {v2, v6}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    sget-object v5, Lfreemarker/core/b0;->class:[Ljava/lang/Class;

    const-string v4, "sequence or string or something automatically convertible to string (number, date or boolean)"

    move-object v1, v7

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/d0;)V

    goto :goto_e

    :goto_d
    throw v7

    :goto_e
    goto :goto_d
.end method

.method private h(Lfreemarker/template/TemplateModel;Ljava/lang/String;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lfreemarker/template/TemplateHashModel;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lfreemarker/template/TemplateHashModel;

    invoke-interface {p1, p2}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p2, Lfreemarker/core/l2;

    iget-object v0, p0, Lfreemarker/core/b0;->this:Lfreemarker/core/h0;

    invoke-direct {p2, v0, p1, p3}, Lfreemarker/core/l2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    throw p2
.end method

.method private i(Z)Lfreemarker/template/TemplateModel;
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p0}, Landroid/support/v4/ul2;->super(Lfreemarker/core/h4;)I

    move-result p1

    sget v0, Landroid/support/v4/ul2;->new:I

    if-ge p1, v0, :cond_0

    new-instance p1, Lfreemarker/template/return;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lfreemarker/template/return;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lfreemarker/template/utility/for;->this:Lfreemarker/template/TemplateSequenceModel;

    goto :goto_0

    :cond_1
    sget-object p1, Lfreemarker/template/TemplateScalarModel;->EMPTY_STRING:Lfreemarker/template/TemplateModel;

    :goto_0
    return-object p1
.end method

.method private j(Lfreemarker/template/TemplateModelIterator;Lfreemarker/core/l3;IZ)Lfreemarker/template/TemplateModel;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lfreemarker/core/l3;->getBegining()I

    move-result v6

    .line 2
    invoke-interface {p2}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    add-int v3, v6, v0

    .line 3
    invoke-virtual {p2}, Lfreemarker/core/l3;->isRightAdaptive()Z

    move-result v4

    .line 4
    invoke-virtual {p2}, Lfreemarker/core/l3;->isRightUnbounded()Z

    move-result v2

    .line 5
    iget-boolean p2, p0, Lfreemarker/core/b0;->break:Z

    const/4 v8, -0x1

    if-eqz p2, :cond_1

    .line 6
    new-instance p2, Lfreemarker/core/b0$do;

    move-object v0, p2

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/b0$do;-><init>(Lfreemarker/core/b0;ZIZLfreemarker/template/TemplateModelIterator;I)V

    if-eq p3, v8, :cond_0

    if-eqz p4, :cond_0

    .line 7
    new-instance p1, Lfreemarker/core/k1;

    invoke-direct {p1, p2, p3, v7}, Lfreemarker/core/k1;-><init>(Lfreemarker/template/TemplateModelIterator;IZ)V

    goto :goto_0

    :cond_0
    new-instance p1, Lfreemarker/core/n1;

    invoke-direct {p1, p2, v7}, Lfreemarker/core/n1;-><init>(Lfreemarker/template/TemplateModelIterator;Z)V

    :goto_0
    return-object p1

    .line 8
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    if-eq p3, v8, :cond_2

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_1

    :cond_2
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :goto_1
    invoke-direct {p0, p1, v6}, Lfreemarker/core/b0;->m(Lfreemarker/template/TemplateModelIterator;I)V

    :goto_2
    if-nez v2, :cond_3

    if-gt v6, v3, :cond_4

    .line 10
    :cond_3
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_6

    if-eqz v4, :cond_5

    .line 11
    :cond_4
    new-instance p1, Lfreemarker/template/return;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lfreemarker/template/return;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    return-object p1

    .line 12
    :cond_5
    invoke-direct {p0, v6, v3}, Lfreemarker/core/b0;->l(II)Landroid/support/v4/vl2;

    move-result-object p1

    throw p1

    .line 13
    :cond_6
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private k(Lfreemarker/template/TemplateModelIterator;Lfreemarker/core/l3;I)Lfreemarker/template/TemplateModel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lfreemarker/core/l3;->getBegining()I

    move-result p3

    .line 2
    invoke-interface {p2}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    sub-int p2, p3, p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int v1, p3, p2

    add-int/lit8 v1, v1, 0x1

    .line 3
    new-array v2, v1, [Lfreemarker/template/TemplateModel;

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gt v0, p3, :cond_1

    .line 4
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v3

    if-lt v0, p2, :cond_0

    add-int/lit8 v4, v1, -0x1

    .line 6
    aput-object v3, v2, v1

    move v1, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-ne v1, p1, :cond_2

    .line 7
    new-instance p1, Lfreemarker/template/return;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lfreemarker/template/return;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    return-object p1

    .line 8
    :cond_2
    new-instance p1, Landroid/support/v4/nl2;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Range top index "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " (0-based) is outside the sliced sequence of length "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private l(II)Landroid/support/v4/vl2;
    .locals 5

    .line 1
    new-instance v0, Landroid/support/v4/vl2;

    iget-object v1, p0, Lfreemarker/core/b0;->goto:Lfreemarker/core/h0;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Range end index "

    aput-object v4, v2, v3

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 p2, 0x2

    const-string v3, " is out of bounds, as sliced sequence only has "

    aput-object v3, v2, p2

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v2, p2

    const/4 p1, 0x4

    const-string p2, " elements."

    aput-object p2, v2, p1

    invoke-direct {v0, v1, v2}, Landroid/support/v4/vl2;-><init>(Lfreemarker/core/h0;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private m(Lfreemarker/template/TemplateModelIterator;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 1
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Landroid/support/v4/vl2;

    iget-object v2, p0, Lfreemarker/core/b0;->goto:Lfreemarker/core/h0;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Range start index "

    aput-object v4, v3, v0

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, v3, v0

    const/4 p2, 0x2

    const-string v0, " is out of bounds, as the sliced sequence only has "

    aput-object v0, v3, p2

    const/4 p2, 0x3

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p2

    const/4 p2, 0x4

    const-string v0, " elements."

    aput-object v0, v3, p2

    invoke-direct {p1, v2, v3}, Landroid/support/v4/vl2;-><init>(Lfreemarker/core/h0;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    const-string v0, "...[...]"

    return-object v0
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public for()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfreemarker/core/b0;->this:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/core/b0;->goto:Lfreemarker/core/h0;

    .line 2
    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lfreemarker/core/f3;->for:Lfreemarker/core/f3;

    goto :goto_0

    :cond_0
    sget-object p1, Lfreemarker/core/f3;->try:Lfreemarker/core/f3;

    :goto_0
    return-object p1
.end method

.method public instanceof()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/h0;->else:Lfreemarker/template/TemplateModel;

    if-nez v0, :cond_1

    iget-object v0, p0, Lfreemarker/core/b0;->this:Lfreemarker/core/h0;

    invoke-virtual {v0}, Lfreemarker/core/h0;->instanceof()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfreemarker/core/b0;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0}, Lfreemarker/core/h0;->instanceof()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/b0;->this:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lfreemarker/core/t;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/core/b0;->this:Lfreemarker/core/h0;

    invoke-static {v0, p1}, Lfreemarker/core/b1;->getInstance(Lfreemarker/core/h0;Lfreemarker/core/d0;)Lfreemarker/core/b1;

    move-result-object p1

    throw p1

    .line 4
    :cond_1
    iget-object v2, p0, Lfreemarker/core/b0;->goto:Lfreemarker/core/h0;

    invoke-virtual {v2, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v2

    if-nez v2, :cond_3

    .line 5
    invoke-virtual {p1}, Lfreemarker/core/t;->y()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    sget-object v2, Lfreemarker/template/TemplateScalarModel;->EMPTY_STRING:Lfreemarker/template/TemplateModel;

    goto :goto_0

    .line 7
    :cond_2
    iget-object v3, p0, Lfreemarker/core/b0;->goto:Lfreemarker/core/h0;

    invoke-virtual {v3, v1, p1}, Lfreemarker/core/h0;->public(Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    :cond_3
    :goto_0
    move-object v6, v2

    .line 8
    instance-of v1, v6, Lfreemarker/template/TemplateNumberModel;

    if-eqz v1, :cond_4

    .line 9
    iget-object v1, p0, Lfreemarker/core/b0;->goto:Lfreemarker/core/h0;

    invoke-virtual {v1, v6, p1}, Lfreemarker/core/h0;->c(Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 10
    invoke-direct {p0, v0, v1, p1}, Lfreemarker/core/b0;->f(Lfreemarker/template/TemplateModel;ILfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    instance-of v1, v6, Lfreemarker/template/TemplateScalarModel;

    if-eqz v1, :cond_5

    .line 12
    check-cast v6, Lfreemarker/template/TemplateScalarModel;

    iget-object v1, p0, Lfreemarker/core/b0;->goto:Lfreemarker/core/h0;

    invoke-static {v6, v1, p1}, Lfreemarker/core/f0;->native(Lfreemarker/template/TemplateScalarModel;Lfreemarker/core/h0;Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-direct {p0, v0, v1, p1}, Lfreemarker/core/b0;->h(Lfreemarker/template/TemplateModel;Ljava/lang/String;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 14
    :cond_5
    instance-of v1, v6, Lfreemarker/core/l3;

    if-eqz v1, :cond_6

    .line 15
    check-cast v6, Lfreemarker/core/l3;

    invoke-direct {p0, v0, v6, p1}, Lfreemarker/core/b0;->g(Lfreemarker/template/TemplateModel;Lfreemarker/core/l3;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 16
    :cond_6
    new-instance v0, Lfreemarker/core/r4;

    iget-object v5, p0, Lfreemarker/core/b0;->goto:Lfreemarker/core/h0;

    const/4 v1, 0x3

    new-array v8, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lfreemarker/template/TemplateNumberModel;

    aput-object v2, v8, v1

    const/4 v1, 0x1

    const-class v2, Lfreemarker/template/TemplateScalarModel;

    aput-object v2, v8, v1

    const/4 v1, 0x2

    const-class v2, Lfreemarker/core/k3;

    aput-object v2, v8, v1

    const-string v7, "number, range, or string"

    move-object v4, v0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lfreemarker/core/r4;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/d0;)V

    throw v0
.end method

.method public static(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;
    .locals 3

    .line 1
    new-instance v0, Lfreemarker/core/b0;

    iget-object v1, p0, Lfreemarker/core/b0;->this:Lfreemarker/core/h0;

    .line 2
    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/b0;->goto:Lfreemarker/core/h0;

    .line 3
    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lfreemarker/core/b0;-><init>(Lfreemarker/core/h0;Lfreemarker/core/h0;)V

    return-object v0
.end method

.method public switch()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lfreemarker/core/b0;->break:Z

    return-void
.end method

.method public this(I)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lfreemarker/core/b0;->this:Lfreemarker/core/h0;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lfreemarker/core/b0;->goto:Lfreemarker/core/h0;

    :goto_0
    return-object p1
.end method
