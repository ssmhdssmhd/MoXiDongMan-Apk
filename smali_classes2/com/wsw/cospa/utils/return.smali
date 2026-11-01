.class public Lcom/wsw/cospa/utils/return;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Lorg/mozilla/javascript/Context;->enter()Lorg/mozilla/javascript/Context;

    move-result-object v0

    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->setOptimizationLevel(I)V

    .line 3
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->initStandardObjects()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, v6

    move-object v2, p0

    .line 4
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/Context;->evaluateString(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p1, :cond_0

    .line 5
    invoke-static {p0}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-interface {v6, p1, v6}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string p1, ""

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2c

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static do(II[C[CI)Ljava/lang/String;
    .locals 18

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-nez p3, :cond_0

    .line 3
    aget-char v3, p2, v2

    add-int v3, v3, p4

    int-to-char v3, v3

    goto :goto_0

    :cond_0
    aget-char v3, p2, v2

    aget-char v3, p3, v3

    :goto_0
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 4
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    int-to-char v4, v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    move/from16 v8, p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    :goto_2
    const/4 v10, 0x2

    if-eq v6, v10, :cond_5

    and-int v10, v3, v8

    shr-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_3

    add-int/lit8 v3, v9, 0x1

    if-nez p3, :cond_2

    .line 5
    aget-char v8, p2, v9

    add-int v8, v8, p4

    int-to-char v8, v8

    goto :goto_3

    :cond_2
    aget-char v8, p2, v9

    aget-char v8, p3, v8

    :goto_3
    move v9, v3

    move v3, v8

    move/from16 v8, p1

    :cond_3
    if-lez v10, :cond_4

    const/4 v10, 0x1

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_4
    add-int/lit8 v11, v6, 0x1

    shl-int v6, v10, v6

    or-int/2addr v6, v7

    int-to-char v7, v6

    move v6, v11

    goto :goto_2

    :cond_5
    const/16 v6, 0x10

    const/16 v11, 0x8

    const-string v12, ""

    if-eqz v7, :cond_b

    if-eq v7, v4, :cond_6

    return-object v12

    :cond_6
    const/4 v7, 0x0

    const/4 v13, 0x0

    :goto_5
    if-eq v7, v6, :cond_a

    and-int v14, v3, v8

    shr-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_8

    add-int/lit8 v3, v9, 0x1

    if-nez p3, :cond_7

    .line 6
    aget-char v8, p2, v9

    add-int v8, v8, p4

    int-to-char v8, v8

    goto :goto_6

    :cond_7
    aget-char v8, p2, v9

    aget-char v8, p3, v8

    :goto_6
    move v9, v3

    move v3, v8

    move/from16 v8, p1

    :cond_8
    if-lez v14, :cond_9

    const/4 v14, 0x1

    goto :goto_7

    :cond_9
    const/4 v14, 0x0

    :goto_7
    add-int/lit8 v15, v7, 0x1

    shl-int v7, v14, v7

    or-int/2addr v7, v13

    int-to-char v13, v7

    move v7, v15

    goto :goto_5

    .line 7
    :cond_a
    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    :cond_b
    const/4 v7, 0x0

    const/4 v13, 0x0

    :goto_8
    if-eq v7, v11, :cond_f

    and-int v14, v3, v8

    shr-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_d

    add-int/lit8 v3, v9, 0x1

    if-nez p3, :cond_c

    .line 8
    aget-char v8, p2, v9

    add-int v8, v8, p4

    int-to-char v8, v8

    goto :goto_9

    :cond_c
    aget-char v8, p2, v9

    aget-char v8, p3, v8

    :goto_9
    move v9, v3

    move v3, v8

    move/from16 v8, p1

    :cond_d
    if-lez v14, :cond_e

    const/4 v14, 0x1

    goto :goto_a

    :cond_e
    const/4 v14, 0x0

    :goto_a
    add-int/lit8 v15, v7, 0x1

    shl-int v7, v14, v7

    or-int/2addr v7, v13

    int-to-char v13, v7

    move v7, v15

    goto :goto_8

    .line 9
    :cond_f
    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    .line 10
    :goto_b
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    const/4 v14, 0x4

    move/from16 v15, p0

    :goto_c
    if-le v9, v15, :cond_10

    return-object v12

    :cond_10
    const/4 v11, 0x0

    :goto_d
    if-eq v2, v5, :cond_14

    and-int v16, v3, v8

    shr-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_12

    add-int/lit8 v3, v9, 0x1

    if-nez p3, :cond_11

    .line 12
    aget-char v8, p2, v9

    add-int v8, v8, p4

    int-to-char v8, v8

    goto :goto_e

    :cond_11
    aget-char v8, p2, v9

    aget-char v8, p3, v8

    :goto_e
    move v9, v3

    move v3, v8

    move/from16 v8, p1

    :cond_12
    if-lez v16, :cond_13

    const/16 v16, 0x1

    goto :goto_f

    :cond_13
    const/16 v16, 0x0

    :goto_f
    add-int/lit8 v17, v2, 0x1

    shl-int v2, v16, v2

    or-int/2addr v2, v11

    int-to-char v11, v2

    move/from16 v2, v17

    goto :goto_d

    :cond_14
    if-eqz v11, :cond_1c

    if-eq v11, v4, :cond_17

    if-eq v11, v10, :cond_15

    move v2, v14

    const/16 v6, 0x8

    move v14, v11

    goto/16 :goto_17

    .line 13
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 16
    :cond_16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_11
    if-eq v2, v6, :cond_1b

    and-int v16, v3, v8

    shr-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_19

    add-int/lit8 v3, v9, 0x1

    if-nez p3, :cond_18

    .line 17
    aget-char v8, p2, v9

    add-int v8, v8, p4

    int-to-char v8, v8

    goto :goto_12

    :cond_18
    aget-char v8, p2, v9

    aget-char v8, p3, v8

    :goto_12
    move v9, v3

    move v3, v8

    move/from16 v8, p1

    :cond_19
    if-lez v16, :cond_1a

    const/16 v16, 0x1

    goto :goto_13

    :cond_1a
    const/16 v16, 0x0

    :goto_13
    add-int/lit8 v17, v2, 0x1

    shl-int v2, v16, v2

    or-int/2addr v2, v11

    int-to-char v11, v2

    move/from16 v2, v17

    goto :goto_11

    .line 18
    :cond_1b
    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v14, 0x1

    add-int/lit8 v13, v13, -0x1

    const/16 v6, 0x8

    goto :goto_17

    :cond_1c
    const/4 v2, 0x0

    const/16 v6, 0x8

    const/4 v11, 0x0

    :goto_14
    if-eq v2, v6, :cond_20

    and-int v16, v3, v8

    shr-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_1e

    add-int/lit8 v3, v9, 0x1

    if-nez p3, :cond_1d

    .line 19
    aget-char v8, p2, v9

    add-int v8, v8, p4

    int-to-char v8, v8

    goto :goto_15

    :cond_1d
    aget-char v8, p2, v9

    aget-char v8, p3, v8

    :goto_15
    move v9, v3

    move v3, v8

    move/from16 v8, p1

    :cond_1e
    if-lez v16, :cond_1f

    const/16 v16, 0x1

    goto :goto_16

    :cond_1f
    const/16 v16, 0x0

    :goto_16
    add-int/lit8 v17, v2, 0x1

    shl-int v2, v16, v2

    or-int/2addr v2, v11

    int-to-char v11, v2

    move/from16 v2, v17

    goto :goto_14

    .line 20
    :cond_20
    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v14, 0x1

    add-int/lit8 v13, v13, -0x1

    :goto_17
    if-nez v13, :cond_21

    shl-int v13, v4, v5

    add-int/lit8 v5, v5, 0x1

    .line 21
    :cond_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v14, v11, :cond_22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_22

    .line 22
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/4 v14, 0x0

    goto :goto_18

    :cond_22
    if-ne v14, v2, :cond_24

    .line 23
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v11, v6

    .line 24
    :goto_18
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v13, v13, -0x1

    if-nez v13, :cond_23

    shl-int v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    move v13, v6

    :cond_23
    move v14, v2

    move-object v7, v11

    const/4 v2, 0x0

    const/16 v6, 0x10

    const/16 v11, 0x8

    goto/16 :goto_c

    :cond_24
    return-object v12
.end method

.method public static else(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "[`~!@#$%^&*()+=|{}\':;\',\\[\\].<>/?~\uff01@#\uffe5%\u2026\u2026&*\uff08\uff09\u2014\u2014+|{}\u3010\u3011\u2018\uff1b\uff1a\u201d\u201c\u2019\u3002\uff0c\u3001\uff1f]"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static for(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static goto(Lcom/wsw/cospa/bean/ChapterListBean;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "^\u7b2c.*?\u7ae0|\u7b2c.*?\u8bdd|\u7b2c.*?\u8282"

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterName()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7b2c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u7ae0 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 4
    :catch_0
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static if(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x7b

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, ""

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 4
    array-length v1, p0

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-static {v1, v2, p0, v0, v3}, Lcom/wsw/cospa/utils/return;->do(II[C[CI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x3es
        0x0s
        0x0s
        0x0s
        0x3fs
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x0s
        0x0s
        0x0s
        0x40s
        0x0s
        0x0s
        0x0s
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xas
        0xbs
        0xcs
        0xds
        0xes
        0xfs
        0x10s
        0x11s
        0x12s
        0x13s
        0x14s
        0x15s
        0x16s
        0x17s
        0x18s
        0x19s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1es
        0x1fs
        0x20s
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x30s
        0x31s
        0x32s
        0x33s
    .end array-data
.end method

.method public static new(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 2
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    const-string p0, "DES"

    .line 3
    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 4
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 6
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 7
    new-instance p1, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method public static this(Lcom/wsw/cospa/bean/Task;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "^\u7b2c.*?\u7ae0|\u7b2c.*?\u8bdd|\u7b2c.*?\u8282"

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/Task;->getDurChapterName()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "utf-8"

    if-eqz v0, :cond_0

    .line 5
    :try_start_1
    invoke-static {v1}, Lcom/wsw/cospa/utils/return;->else(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7b2c"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/wsw/cospa/bean/Task;->getDurChapterIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u7ae0 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/wsw/cospa/utils/return;->else(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/Task;->getDurChapterName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static try(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/return;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
