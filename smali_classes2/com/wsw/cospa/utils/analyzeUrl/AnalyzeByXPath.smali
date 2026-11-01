.class public Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private jxDocument:Landroid/support/v4/yo0;

.field private jxNode:Landroid/support/v4/ap0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private strToJXDocument(Ljava/lang/String;)Landroid/support/v4/yo0;
    .locals 3

    const-string v0, "</td>"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "<tr>%s</tr>"

    .line 2
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "</tr>"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "</tbody>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "<table>%s</table>"

    .line 4
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_2
    invoke-static {p1}, Landroid/support/v4/yo0;->do(Ljava/lang/String;)Landroid/support/v4/yo0;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getElements(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v4/ap0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "&&"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "%"

    const-string v4, "|"

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v1, "&"

    goto :goto_0

    :cond_1
    const-string v1, "%%"

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move-object v1, v3

    goto :goto_0

    :cond_2
    const-string v1, "\\|\\|"

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move-object v1, v4

    .line 8
    :goto_0
    array-length v2, p1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v5, :cond_4

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->jxNode:Landroid/support/v4/ap0;

    if-eqz v0, :cond_3

    .line 10
    aget-object p1, p1, v6

    invoke-virtual {v0, p1}, Landroid/support/v4/ap0;->class(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->jxDocument:Landroid/support/v4/yo0;

    aget-object p1, p1, v6

    invoke-virtual {v0, p1}, Landroid/support/v4/yo0;->case(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    array-length v5, p1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_6

    aget-object v8, p1, v7

    .line 14
    invoke-virtual {p0, v8}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->getElements(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 15
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 16
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 18
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a

    .line 19
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    .line 20
    :goto_3
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_a

    .line 21
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 22
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_7

    .line 23
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/ap0;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 24
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    :cond_a
    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "&&"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "|"

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    goto :goto_0

    :cond_0
    const-string v0, "\\|\\|"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    .line 4
    :goto_0
    array-length v3, v0

    const-string v4, ","

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->jxNode:Landroid/support/v4/ap0;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Landroid/support/v4/ap0;->class(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->jxDocument:Landroid/support/v4/yo0;

    invoke-virtual {v0, p1}, Landroid/support/v4/yo0;->case(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_2
    invoke-static {v4, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    array-length v3, v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_5

    aget-object v6, v0, v5

    .line 11
    invoke-virtual {p0, v6}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 13
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 15
    :cond_5
    :goto_3
    invoke-static {v4, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringList(Ljava/lang/String;)Ljava/util/List;
    .locals 10
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

    const-string v1, "&&"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "%"

    const-string v4, "|"

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "&"

    goto :goto_0

    :cond_0
    const-string v1, "%%"

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v2, v3

    goto :goto_0

    :cond_1
    const-string v1, "\\|\\|"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v2, v4

    .line 7
    :goto_0
    array-length v5, v1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->jxNode:Landroid/support/v4/ap0;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1, p1}, Landroid/support/v4/ap0;->class(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->jxDocument:Landroid/support/v4/yo0;

    invoke-virtual {v1, p1}, Landroid/support/v4/yo0;->case(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 11
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/ap0;

    .line 12
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object v0

    .line 13
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v5, :cond_6

    aget-object v8, v1, v7

    .line 15
    invoke-virtual {p0, v8}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 16
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 17
    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 19
    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    .line 21
    :goto_5
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 23
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 24
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 25
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    :cond_a
    return-object v0
.end method

.method public parse(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/support/v4/ap0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/support/v4/ap0;

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->jxNode:Landroid/support/v4/ap0;

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/ap0;->this()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->strToJXDocument(Ljava/lang/String;)Landroid/support/v4/yo0;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->jxDocument:Landroid/support/v4/yo0;

    .line 5
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->jxNode:Landroid/support/v4/ap0;

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p1, Lorg/jsoup/nodes/Document;

    if-eqz v0, :cond_1

    .line 7
    check-cast p1, Lorg/jsoup/nodes/Document;

    invoke-static {p1}, Landroid/support/v4/yo0;->if(Lorg/jsoup/nodes/Document;)Landroid/support/v4/yo0;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->jxDocument:Landroid/support/v4/yo0;

    .line 8
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->jxNode:Landroid/support/v4/ap0;

    goto :goto_0

    .line 9
    :cond_1
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_2

    .line 10
    new-instance v0, Lorg/jsoup/select/Elements;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/jsoup/nodes/Element;

    const/4 v3, 0x0

    check-cast p1, Lorg/jsoup/nodes/Element;

    aput-object p1, v2, v3

    invoke-direct {v0, v2}, Lorg/jsoup/select/Elements;-><init>([Lorg/jsoup/nodes/Element;)V

    invoke-static {v0}, Landroid/support/v4/yo0;->for(Lorg/jsoup/select/Elements;)Landroid/support/v4/yo0;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->jxDocument:Landroid/support/v4/yo0;

    .line 11
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->jxNode:Landroid/support/v4/ap0;

    goto :goto_0

    .line 12
    :cond_2
    instance-of v0, p1, Lorg/jsoup/select/Elements;

    if-eqz v0, :cond_3

    .line 13
    check-cast p1, Lorg/jsoup/select/Elements;

    invoke-static {p1}, Landroid/support/v4/yo0;->for(Lorg/jsoup/select/Elements;)Landroid/support/v4/yo0;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->jxDocument:Landroid/support/v4/yo0;

    .line 14
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->jxNode:Landroid/support/v4/ap0;

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->strToJXDocument(Ljava/lang/String;)Landroid/support/v4/yo0;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->jxDocument:Landroid/support/v4/yo0;

    .line 16
    iput-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->jxNode:Landroid/support/v4/ap0;

    :cond_4
    :goto_0
    return-object p0
.end method
