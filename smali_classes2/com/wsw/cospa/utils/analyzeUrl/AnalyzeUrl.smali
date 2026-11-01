.class public Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$UrlMode;,
        Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$EngineHelper;
    }
.end annotation


# static fields
.field private static final REFERER_HOST:Ljava/lang/String; = "host"

.field private static final REFERER_PRE_PAGE:Ljava/lang/String; = "prePage"

.field private static final REFERER_THIS_PAGE:Ljava/lang/String; = "thisPage"

.field private static final bodyPattern:Ljava/util/regex/Pattern;

.field private static final expPattern:Ljava/util/regex/Pattern;

.field private static final expRegex:Ljava/lang/String; = "\\{\\{([\\w\\W]*?)\\}\\}"

.field private static final headerPattern:Ljava/util/regex/Pattern;

.field private static final pagePattern:Ljava/util/regex/Pattern;

.field private static final pageRegex:Ljava/lang/String; = "\\{([^\"\\{\\}\':]*)\\}"


# instance fields
.field private body:Lokhttp3/RequestBody;

.field private charCode:Ljava/lang/String;

.field private final errorTag:Ljava/lang/String;

.field private headerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hostUrl:Ljava/lang/String;

.field private queryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private queryStr:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private urlMode:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$UrlMode;

.field private urlPath:Ljava/lang/String;

.field private variableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "@Header:\\{.+?\\}"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->headerPattern:Ljava/util/regex/Pattern;

    const-string v0, "@Body:\\{.+?\\}"

    .line 2
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->bodyPattern:Ljava/util/regex/Pattern;

    const-string v0, "\\{([^\"\\{\\}\':]*)\\}"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->pagePattern:Ljava/util/regex/Pattern;

    const-string v0, "\\{\\{([\\w\\W]*?)\\}\\}"

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->expPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v5, "JS_CODE_ERROR: "

    .line 5
    iput-object v5, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->errorTag:Ljava/lang/String;

    .line 6
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->queryMap:Ljava/util/Map;

    .line 7
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    iput-object v6, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->headerMap:Ljava/util/Map;

    .line 8
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    iput-object v6, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->variableMap:Ljava/util/Map;

    .line 9
    sget-object v6, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$UrlMode;->DEFAULT:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$UrlMode;

    iput-object v6, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->urlMode:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$UrlMode;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v4, :cond_1

    .line 10
    invoke-virtual {v1, v4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->setVariableMap(Ljava/util/Map;)V

    :cond_1
    const-string v4, "{{"

    .line 11
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    const-string v6, "}}"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 12
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 13
    new-instance v9, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$1;

    invoke-direct {v9, v1, v2, v3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$1;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    new-instance v10, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeYCYJS;

    invoke-direct {v10}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeYCYJS;-><init>()V

    invoke-virtual {v10, v9}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeYCYJS;->setBindings(Ljavax/script/SimpleBindings;)V

    const-string v10, ""

    .line 15
    invoke-static {v0, v10, v4, v6}, Landroid/support/v4/p32;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/p32$do;

    move-result-object v11

    :goto_0
    if-eqz v11, :cond_4

    .line 16
    :try_start_0
    invoke-virtual {v11}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 17
    invoke-virtual {v11}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x2

    sub-int/2addr v12, v13

    invoke-virtual {v0, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$EngineHelper;->access$000()Ljavax/script/ScriptEngine;

    move-result-object v12

    invoke-interface {v12, v0, v9}, Ljavax/script/ScriptEngine;->eval(Ljava/lang/String;Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    instance-of v12, v0, Ljava/lang/String;

    if-eqz v12, :cond_2

    .line 20
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v11, v0}, Landroid/support/v4/p32$do;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 21
    :cond_2
    instance-of v12, v0, Ljava/lang/Double;

    if-eqz v12, :cond_3

    move-object v12, v0

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v12, v14

    const-wide/16 v14, 0x0

    cmpl-double v16, v12, v14

    if-nez v16, :cond_3

    const-string v12, "%.0f"

    new-array v13, v8, [Ljava/lang/Object;

    .line 22
    check-cast v0, Ljava/lang/Double;

    aput-object v0, v13, v7

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/support/v4/p32$do;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 23
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/support/v4/p32$do;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    :goto_1
    invoke-static {v0, v10, v4, v6}, Landroid/support/v4/p32;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/p32$do;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    :cond_4
    invoke-static/range {p2 .. p2}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "searchKey"

    .line 27
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    const-string v2, "\\|"

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 29
    array-length v2, v0

    if-le v2, v8, :cond_6

    .line 30
    aget-object v2, v0, v8

    invoke-direct {v1, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->analyzeOther(Ljava/lang/String;)V

    :cond_6
    if-eqz v3, :cond_7

    .line 31
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->setPage([Ljava/lang/String;I)V

    .line 32
    :cond_7
    aget-object v2, v0, v7

    move-object/from16 v3, p4

    invoke-direct {v1, v2, v3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->analyzeHeader(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    .line 33
    aget-object v0, v0, v7

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 34
    array-length v2, v0

    const-string v3, "#"

    if-le v2, v8, :cond_8

    .line 35
    sget-object v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$UrlMode;->POST:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$UrlMode;

    iput-object v2, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->urlMode:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$UrlMode;

    .line 36
    aget-object v2, v0, v8

    invoke-static {v2}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    aget-object v2, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 37
    aget-object v2, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v8

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    .line 39
    aget-object v3, v0, v8

    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    goto :goto_2

    .line 40
    :cond_8
    aget-object v0, v0, v7

    const-string v2, "\\?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 41
    array-length v2, v0

    if-le v2, v8, :cond_9

    .line 42
    sget-object v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$UrlMode;->GET:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$UrlMode;

    iput-object v2, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->urlMode:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$UrlMode;

    .line 43
    aget-object v2, v0, v8

    invoke-static {v2}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    aget-object v2, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 44
    aget-object v2, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v8

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    .line 46
    aget-object v3, v0, v8

    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    .line 47
    :cond_9
    :goto_2
    aget-object v2, v0, v7

    invoke-direct {v1, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->generateUrlPath(Ljava/lang/String;)V

    .line 48
    iget-object v2, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->urlMode:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$UrlMode;

    sget-object v3, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$UrlMode;->DEFAULT:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$UrlMode;

    if-eq v2, v3, :cond_a

    .line 49
    aget-object v0, v0, v8

    invoke-direct {v1, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->analyzeQuery(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    return-void
.end method

.method private analyzeHeader(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "&"

    const-string v2, "#"

    const-string v3, ""

    const-string v4, "="

    .line 1
    iget-object v5, v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->headerMap:Ljava/util/Map;

    move-object/from16 v6, p2

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v5, "@Header:"

    const-string v6, "{"

    const-string v7, "}"

    move-object/from16 v8, p1

    .line 2
    invoke-static {v8, v5, v6, v7}, Landroid/support/v4/p32;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/p32$do;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 3
    invoke-virtual {v5}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 4
    invoke-virtual {v5}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 5
    :try_start_0
    new-instance v7, Lcom/google/gson/GsonBuilder;

    invoke-direct {v7}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 6
    invoke-virtual {v7}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v7

    .line 7
    invoke-virtual {v7}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v7

    .line 8
    new-instance v9, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$2;

    invoke-direct {v9, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$2;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;)V

    .line 9
    invoke-virtual {v9}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    .line 10
    invoke-virtual {v7, v6, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 11
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 12
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 13
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 15
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, "host"

    .line 16
    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 17
    invoke-static/range {p1 .. p1}, Landroid/support/v4/fd2;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v7

    goto/16 :goto_5

    :cond_0
    const-string v11, "thisPage"

    .line 18
    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 19
    invoke-virtual {v5, v3}, Landroid/support/v4/p32$do;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "@"

    .line 20
    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    .line 21
    aget-object v12, v9, v11

    invoke-static {v12}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    aget-object v12, v9, v11

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 22
    aget-object v12, v9, v11

    invoke-virtual {v12, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 23
    aget-object v13, v9, v11

    invoke-virtual {v13, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    .line 24
    :cond_1
    aget-object v9, v9, v11

    const-string v12, "\\?"

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 25
    array-length v12, v9

    const/4 v13, 0x1

    if-le v12, v13, :cond_8

    .line 26
    aget-object v12, v9, v13

    invoke-static {v12}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 27
    aget-object v12, v9, v13

    .line 28
    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 29
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "?"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    array-length v15, v12

    const/16 v16, 0x1

    :goto_1
    if-ge v11, v15, :cond_6

    aget-object v13, v12, v11

    if-nez v16, :cond_2

    .line 31
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :cond_2
    invoke-virtual {v13, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v1

    .line 33
    array-length v1, v13

    move-object/from16 v17, v2

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    aget-object v1, v13, v2

    goto :goto_2

    :cond_3
    move-object v1, v3

    .line 34
    :goto_2
    iget-object v2, v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->charCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 35
    aget-object v13, v13, v2

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v7

    goto :goto_3

    .line 36
    :cond_4
    iget-object v2, v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->charCode:Ljava/lang/String;

    move-object/from16 v18, v7

    const-string v7, "escape"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    .line 37
    aget-object v7, v13, v2

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/support/v4/l22;->try(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    .line 38
    aget-object v7, v13, v2

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->charCode:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v7, v18

    const/4 v13, 0x1

    const/16 v16, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v7

    .line 39
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v9, v2

    goto :goto_4

    :cond_7
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v7

    .line 40
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v2, v9, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v7

    const/4 v1, 0x0

    .line 41
    aget-object v1, v9, v1

    invoke-interface {v6, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v7

    const-string v1, "prePage"

    .line 42
    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 43
    invoke-static/range {p1 .. p1}, Landroid/support/v4/fd2;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 44
    :cond_a
    invoke-interface {v6, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v7, v18

    goto/16 :goto_0

    .line 45
    :cond_b
    iget-object v1, v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->headerMap:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :catch_0
    invoke-virtual {v5, v3}, Landroid/support/v4/p32$do;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_c
    move-object v1, v8

    :goto_6
    return-object v1
.end method

.method private analyzeOther(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "&"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    const-string v4, "="

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 5
    aget-object v4, v3, v1

    const-string v5, "char"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 6
    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->charCode:Ljava/lang/String;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private analyzeQuery(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->charCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UTF-8"

    .line 2
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->queryStr:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->charCode:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->queryStr:Ljava/lang/String;

    .line 4
    :goto_0
    invoke-static {p1}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "application/json; charset=utf-8"

    .line 5
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->body:Lokhttp3/RequestBody;

    goto :goto_4

    :cond_1
    const-string v0, "&"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    aget-object v3, p1, v2

    const-string v4, "="

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 9
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    aget-object v4, v3, v5

    goto :goto_2

    :cond_2
    const-string v4, ""

    .line 10
    :goto_2
    iget-object v5, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->charCode:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 11
    iget-object v5, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->queryMap:Ljava/util/Map;

    aget-object v3, v3, v1

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 12
    :cond_3
    iget-object v5, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->charCode:Ljava/lang/String;

    const-string v6, "escape"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 13
    iget-object v5, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->queryMap:Ljava/util/Map;

    aget-object v3, v3, v1

    invoke-static {v4}, Landroid/support/v4/l22;->try(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 14
    :cond_4
    iget-object v5, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->queryMap:Ljava/util/Map;

    aget-object v3, v3, v1

    iget-object v6, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->charCode:Ljava/lang/String;

    invoke-static {v4, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    return-void
.end method

.method private generateUrlPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->url:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/support/v4/l22;->goto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->hostUrl:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->urlPath:Ljava/lang/String;

    return-void
.end method

.method private setPage([Ljava/lang/String;I)V
    .locals 6

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->pagePattern:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    array-length v3, v0

    const-string v4, "\\{([^\"\\{\\}\':]*)\\}"

    if-gt p2, v3, :cond_0

    .line 5
    aget-object v2, p1, v1

    add-int/lit8 v3, p2, -0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    goto :goto_0

    .line 6
    :cond_0
    aget-object v3, p1, v1

    array-length v5, v0

    sub-int/2addr v5, v2

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    .line 7
    :cond_1
    :goto_0
    aget-object v0, p1, v1

    add-int/lit8 v2, p2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "searchPage-1"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, p2, 0x1

    .line 8
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "searchPage+1"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "searchPage"

    invoke-virtual {v0, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    return-void
.end method


# virtual methods
.method public analyzeByWebView(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->parse(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public analyzeByWebViewMobile(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36"

    .line 1
    invoke-static {p1, p2, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->parse(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public analyzeByWebViewPC(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36"

    .line 1
    invoke-static {p1, p2, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->parse(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->variableMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public getBody()Lokhttp3/RequestBody;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->body:Lokhttp3/RequestBody;

    return-object v0
.end method

.method public getHeaderMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->headerMap:Ljava/util/Map;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->hostUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->urlPath:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->queryMap:Ljava/util/Map;

    return-object v0
.end method

.method public getQueryStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->queryStr:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlMode()Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$UrlMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->urlMode:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$UrlMode;

    return-object v0
.end method

.method public getVariableMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->variableMap:Ljava/util/Map;

    return-object v0
.end method

.method public getWebViewFinalResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->getInstance()Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->getFinalResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWebViewFinalResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->getInstance()Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->getFinalResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWebViewFinalResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->getInstance()Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->getFinalResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWebViewFinalResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 6

    .line 4
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->getInstance()Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->getFinalResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWebViewResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->getInstance()Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->getResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWebViewResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->getInstance()Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->getResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWebViewResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->getInstance()Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->getResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWebViewResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 6

    .line 4
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->getInstance()Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->getResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->variableMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public setVariableMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->variableMap:Ljava/util/Map;

    return-void
.end method
