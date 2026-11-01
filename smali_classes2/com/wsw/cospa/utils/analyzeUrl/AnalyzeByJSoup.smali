.class public Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;
    }
.end annotation


# instance fields
.field private element:Lorg/jsoup/nodes/Element;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private filterElements(Lorg/jsoup/select/Elements;[Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 8

    if-eqz p2, :cond_8

    .line 1
    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    const/4 v3, 0x0

    .line 4
    aget-object v4, p2, v3

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "class"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x3

    goto :goto_1

    :sswitch_1
    const-string v6, "text"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_2
    const-string v6, "tag"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_3
    const-string v6, "id"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_3

    .line 5
    :pswitch_0
    aget-object v4, p2, v7

    invoke-virtual {v2, v4}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    :goto_2
    const/4 v3, 0x1

    goto :goto_3

    .line 6
    :pswitch_1
    aget-object v4, p2, v7

    invoke-virtual {v2, v4}, Lorg/jsoup/nodes/Element;->getElementsContainingOwnText(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    goto :goto_2

    .line 7
    :pswitch_2
    aget-object v4, p2, v7

    invoke-virtual {v2, v4}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    goto :goto_2

    .line 8
    :pswitch_3
    aget-object v4, p2, v7

    invoke-virtual {v2, v4}, Lorg/jsoup/nodes/Element;->getElementById(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    return-object v0

    :cond_8
    :goto_4
    return-object p1

    :sswitch_data_0
    .sparse-switch
        0xd1b -> :sswitch_3
        0x1bf9a -> :sswitch_2
        0x36452d -> :sswitch_1
        0x5a5a978 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getElements(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 9

    .line 2
    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    if-eqz p1, :cond_b

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_8

    .line 4
    :cond_0
    new-instance v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;

    invoke-direct {v1, p0, p2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;Ljava/lang/String;)V

    .line 5
    iget-object p2, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->elementsRule:Ljava/lang/String;

    const-string v2, "&"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v3, "|"

    const-string v4, "%"

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->elementsRule:Ljava/lang/String;

    const-string v5, "&+"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 7
    :cond_1
    iget-object p2, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->elementsRule:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    iget-object p2, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->elementsRule:Ljava/lang/String;

    const-string v2, "%+"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    move-object v2, v4

    goto :goto_1

    .line 9
    :cond_2
    iget-boolean p2, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->isCss:Z

    if-eqz p2, :cond_3

    .line 10
    iget-object p2, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->elementsRule:Ljava/lang/String;

    const-string v2, "\\|\\|"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 11
    :cond_3
    iget-object p2, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->elementsRule:Ljava/lang/String;

    const-string v2, "\\|+"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object v2, v3

    .line 12
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-boolean v1, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->isCss:Z

    const/4 v6, 0x0

    if-eqz v1, :cond_5

    .line 14
    array-length v1, p2

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v1, :cond_7

    aget-object v8, p2, v7

    .line 15
    invoke-virtual {p1, v8}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v8

    .line 16
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 18
    :cond_5
    array-length v1, p2

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v1, :cond_7

    aget-object v8, p2, v7

    .line 19
    invoke-direct {p0, p1, v8}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->getElementsSingle(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v8

    .line 20
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 22
    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_b

    .line 23
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    .line 24
    :goto_5
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jsoup/select/Elements;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_b

    .line 25
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/select/Elements;

    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_8

    .line 27
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 28
    :cond_a
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jsoup/select/Elements;

    .line 29
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    :cond_b
    :goto_8
    return-object v0
.end method

.method private getElementsSingle(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "\\."

    .line 1
    new-instance v3, Lorg/jsoup/select/Elements;

    invoke-direct {v3}, Lorg/jsoup/select/Elements;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3
    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le v5, v7, :cond_1

    .line 4
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    array-length v1, v4

    :goto_0
    if-ge v6, v1, :cond_17

    aget-object v2, v4, v6

    .line 6
    new-instance v5, Lorg/jsoup/select/Elements;

    invoke-direct {v5}, Lorg/jsoup/select/Elements;-><init>()V

    .line 7
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jsoup/nodes/Element;

    .line 8
    invoke-direct {v0, v8, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->getElements(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 10
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "!"

    move-object/from16 v5, p2

    .line 11
    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 12
    aget-object v5, v4, v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v8, ">"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 13
    aget-object v8, v5, v6

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 14
    array-length v9, v5

    if-le v9, v7, :cond_2

    aget-object v9, v5, v7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v9, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    const-string v10, "class"

    const-string v11, "text"

    const-string v12, "tag"

    const-string v13, "id"

    const/4 v15, 0x2

    if-eqz v9, :cond_5

    .line 15
    :try_start_1
    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 16
    aget-object v5, v2, v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v6

    .line 17
    filled-new-array {v10, v13, v12, v11}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 18
    array-length v14, v2

    if-lt v14, v15, :cond_3

    aget-object v14, v2, v6

    invoke-interface {v5, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    aget-object v5, v2, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const/4 v9, 0x0

    .line 19
    :cond_4
    aget-object v5, v2, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    .line 20
    :goto_3
    aget-object v5, v8, v6

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v16

    const/4 v14, 0x4

    const/4 v6, 0x3

    sparse-switch v16, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v10, "children"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    goto :goto_5

    :sswitch_1
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_5

    :sswitch_2
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x4

    goto :goto_5

    :sswitch_3
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x2

    goto :goto_5

    :sswitch_4
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x3

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v5, -0x1

    :goto_5
    if-eqz v5, :cond_12

    if-eq v5, v7, :cond_e

    if-eq v5, v15, :cond_a

    if-eq v5, v6, :cond_9

    if-eq v5, v14, :cond_7

    const/4 v5, 0x0

    .line 21
    aget-object v2, v4, v5

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6

    :cond_7
    const/4 v5, 0x0

    .line 22
    aget-object v6, v8, v7

    invoke-virtual {v1, v6}, Lorg/jsoup/nodes/Element;->getElementsContainingOwnText(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    if-eqz v9, :cond_8

    .line 23
    invoke-direct {v0, v1, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->filterElements(Lorg/jsoup/select/Elements;[Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 24
    :cond_8
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6

    :cond_9
    const/4 v5, 0x0

    .line 25
    aget-object v2, v8, v7

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->getElementById(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_a
    const/4 v5, 0x0

    .line 26
    aget-object v10, v8, v7

    invoke-virtual {v1, v10}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 27
    array-length v10, v8

    if-ne v10, v6, :cond_c

    .line 28
    aget-object v2, v8, v15

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_b

    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 30
    :cond_b
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    if-eqz v9, :cond_d

    .line 31
    invoke-direct {v0, v1, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->filterElements(Lorg/jsoup/select/Elements;[Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 32
    :cond_d
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_e
    const/4 v5, 0x0

    .line 33
    aget-object v10, v8, v7

    invoke-virtual {v1, v10}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 34
    array-length v10, v8

    if-ne v10, v6, :cond_10

    .line 35
    aget-object v2, v8, v15

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_f

    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 37
    :cond_f
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_10
    if-eqz v9, :cond_11

    .line 38
    invoke-direct {v0, v1, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->filterElements(Lorg/jsoup/select/Elements;[Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 39
    :cond_11
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_12
    const/4 v5, 0x0

    .line 40
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v1

    if-eqz v9, :cond_13

    .line 41
    invoke-direct {v0, v1, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->filterElements(Lorg/jsoup/select/Elements;[Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 42
    :cond_13
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    :goto_6
    array-length v1, v4

    if-le v1, v7, :cond_17

    .line 44
    aget-object v1, v4, v7

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 45
    array-length v2, v1

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v2, :cond_16

    aget-object v4, v1, v6

    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_14

    .line 47
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v5

    if-ltz v7, :cond_14

    .line 48
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 49
    :cond_14
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_15

    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 51
    :cond_16
    new-instance v1, Lorg/jsoup/select/Elements;

    invoke-direct {v1}, Lorg/jsoup/select/Elements;-><init>()V

    const/4 v2, 0x0

    .line 52
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_17
    return-object v3

    :sswitch_data_0
    .sparse-switch
        0xd1b -> :sswitch_4
        0x1bf9a -> :sswitch_3
        0x36452d -> :sswitch_2
        0x5a5a978 -> :sswitch_1
        0x62ea5dff -> :sswitch_0
    .end sparse-switch
.end method

.method private getResultLast(Lorg/jsoup/select/Elements;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/select/Elements;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    .line 2
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "text"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "html"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "textNodes"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "ownText"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    :cond_0
    :goto_0
    if-eqz v1, :cond_6

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 4
    invoke-virtual {v1, p2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string p2, "script"

    .line 7
    invoke-virtual {p1, p2}, Lorg/jsoup/select/Elements;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jsoup/select/Elements;->remove()Lorg/jsoup/select/Elements;

    .line 8
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->html()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 10
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jsoup/nodes/Element;

    .line 11
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->textNodes()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    .line 12
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 13
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {v2}, Lorg/jsoup/nodes/TextNode;->text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 15
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 16
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jsoup/nodes/Element;

    .line 17
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    :cond_7
    :goto_4
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x3ee5ca2d -> :sswitch_3
        -0x3ec9ee7c -> :sswitch_2
        0x3107ab -> :sswitch_1
        0x36452d -> :sswitch_0
    .end sparse-switch
.end method

.method private getResultList(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->element:Lorg/jsoup/nodes/Element;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "@"

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 6
    new-instance v3, Lorg/jsoup/select/Elements;

    invoke-direct {v3}, Lorg/jsoup/select/Elements;-><init>()V

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 8
    aget-object v6, p1, v2

    invoke-direct {p0, v5, v6}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->getElementsSingle(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v2, v2, 0x1

    move-object v0, v3

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    .line 11
    :cond_3
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1

    invoke-direct {p0, v0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->getResultLast(Lorg/jsoup/select/Elements;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getElements(Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->element:Lorg/jsoup/nodes/Element;

    invoke-direct {p0, v0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->getElements(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "\n"

    .line 4
    invoke-static {v0, p1}, Landroid/support/v4/l22;->static(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getStringList(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;

    invoke-direct {v1, p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;Ljava/lang/String;)V

    .line 4
    iget-object p1, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->elementsRule:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->element:Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->data()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 6
    :cond_1
    iget-object p1, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->elementsRule:Ljava/lang/String;

    const-string v2, "&"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v3, "%"

    const-string v4, "|"

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->elementsRule:Ljava/lang/String;

    const-string v5, "&+"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->elementsRule:Ljava/lang/String;

    const-string v2, "%%"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->elementsRule:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move-object v2, v3

    goto :goto_1

    .line 10
    :cond_3
    iget-boolean p1, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->isCss:Z

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->elementsRule:Ljava/lang/String;

    const-string v2, "\\|\\|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_4
    iget-object p1, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->elementsRule:Ljava/lang/String;

    const-string v2, "\\|+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v2, v4

    .line 13
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 14
    array-length v6, p1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_7

    aget-object v9, p1, v8

    .line 15
    iget-boolean v10, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->isCss:Z

    if-eqz v10, :cond_5

    const/16 v10, 0x40

    .line 16
    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 17
    iget-object v11, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->element:Lorg/jsoup/nodes/Element;

    invoke-virtual {v9, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v11, v9}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->getResultLast(Lorg/jsoup/select/Elements;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    goto :goto_3

    .line 18
    :cond_5
    invoke-direct {p0, v9}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->getResultList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    :goto_3
    if-eqz v9, :cond_6

    .line 19
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 20
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 22
    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_b

    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    .line 24
    :goto_5
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_b

    .line 25
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 26
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_8

    .line 27
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 28
    :cond_a
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 29
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    .line 30
    :cond_b
    :goto_8
    iget-object p1, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->replaceRegex:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 32
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 34
    iget-object v3, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->replaceRegex:Ljava/lang/String;

    iget-object v4, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup$SourceRule;->replacement:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c

    .line 36
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    return-object v0
.end method

.method public parse(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/jsoup/nodes/Element;

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->element:Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Landroid/support/v4/ap0;

    if-eqz v0, :cond_2

    .line 4
    check-cast p1, Landroid/support/v4/ap0;

    .line 5
    invoke-virtual {p1}, Landroid/support/v4/ap0;->this()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/support/v4/ap0;->new()Lorg/jsoup/nodes/Element;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->element:Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/ap0;->final()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->element:Lorg/jsoup/nodes/Element;

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->element:Lorg/jsoup/nodes/Element;

    :goto_0
    return-object p0
.end method
