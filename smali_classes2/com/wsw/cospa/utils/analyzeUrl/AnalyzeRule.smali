.class public Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;,
        Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;,
        Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$EngineHelper;
    }
.end annotation


# static fields
.field private static final ECB_PADDING:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final ENCRYPT_BLOCK:I = 0xf5

.field private static KEYSIZE:I = 0x0

.field private static final MAX_DECRYPT_BLOCK:I = 0x80

.field private static final MAX_ENCRYPT_BLOCK:I = 0x75

.field private static final RSA:Ljava/lang/String; = "RSA"

.field private static final expPattern:Ljava/util/regex/Pattern;

.field private static final getPattern:Ljava/util/regex/Pattern;

.field private static final headerPattern:Ljava/util/regex/Pattern;

.field private static final jsArray:Lorg/mozilla/javascript/Scriptable;

.field private static final jsObject:Lorg/mozilla/javascript/Scriptable;

.field private static final jsPattern:Ljava/util/regex/Pattern;

.field private static final putPattern:Ljava/util/regex/Pattern;


# instance fields
.field private _map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private analyzeByJSonPath:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;

.field private analyzeByJSoup:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;

.field private analyzeByXPath:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;

.field private baseUrl:Ljava/lang/String;

.field private book:Lcom/wsw/cospa/bean/BaseComicBean;

.field private bookContentVariable:Ljava/lang/String;

.field private final errorTag:Ljava/lang/String;

.field private headersJson:Ljava/lang/String;

.field private imgPage:I

.field private isJSON:Ljava/lang/Boolean;

.field private object:Ljava/lang/Object;

.field private objectChangedJP:Z

.field private objectChangedJS:Z

.field private objectChangedXP:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "@put:\\{.+?\\}"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->putPattern:Ljava/util/regex/Pattern;

    const-string v0, "@get:\\{.+?\\}"

    .line 2
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getPattern:Ljava/util/regex/Pattern;

    const-string v0, "(<js>[\\w\\W]*?</js>|@js:[\\w\\W]*$)"

    .line 3
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->jsPattern:Ljava/util/regex/Pattern;

    const-string v0, "\\{\\{([\\w\\W]*?)\\}\\}"

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->expPattern:Ljava/util/regex/Pattern;

    const-string v0, "@Header:\\{.+?\\}"

    .line 5
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->headerPattern:Ljava/util/regex/Pattern;

    .line 6
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getJsArray()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->jsArray:Lorg/mozilla/javascript/Scriptable;

    .line 7
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getJsObject()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->jsObject:Lorg/mozilla/javascript/Scriptable;

    const/16 v0, 0x800

    .line 8
    sput v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->KEYSIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "JS_CODE_ERROR: "

    .line 15
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->errorTag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->baseUrl:Ljava/lang/String;

    const/4 v1, -0x1

    .line 17
    iput v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->imgPage:I

    .line 18
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->analyzeByXPath:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;

    .line 19
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->analyzeByJSoup:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;

    .line 20
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->analyzeByJSonPath:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;

    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->objectChangedXP:Z

    .line 22
    iput-boolean v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->objectChangedJS:Z

    .line 23
    iput-boolean v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->objectChangedJP:Z

    .line 24
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->_map:Ljava/util/Map;

    .line 25
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->bookContentVariable:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/wsw/cospa/bean/BaseComicBean;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "JS_CODE_ERROR: "

    .line 2
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->errorTag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->baseUrl:Ljava/lang/String;

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->imgPage:I

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->analyzeByXPath:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;

    .line 6
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->analyzeByJSoup:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;

    .line 7
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->analyzeByJSonPath:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->objectChangedXP:Z

    .line 9
    iput-boolean v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->objectChangedJS:Z

    .line 10
    iput-boolean v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->objectChangedJP:Z

    .line 11
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->_map:Ljava/util/Map;

    .line 12
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->bookContentVariable:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->book:Lcom/wsw/cospa/bean/BaseComicBean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "JS_CODE_ERROR: "

    .line 27
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->errorTag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->baseUrl:Ljava/lang/String;

    const/4 v1, -0x1

    .line 29
    iput v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->imgPage:I

    .line 30
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->analyzeByXPath:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;

    .line 31
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->analyzeByJSoup:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;

    .line 32
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->analyzeByJSonPath:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;

    const/4 v1, 0x0

    .line 33
    iput-boolean v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->objectChangedXP:Z

    .line 34
    iput-boolean v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->objectChangedJS:Z

    .line 35
    iput-boolean v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->objectChangedJP:Z

    .line 36
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->_map:Ljava/util/Map;

    .line 37
    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->bookContentVariable:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 40
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$1;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$1;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;)V

    .line 43
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 44
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->_map:Ljava/util/Map;

    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->_map:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method private ByteBufferToBytes(Ljava/nio/ByteBuffer;)[B
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3
    new-array v0, v0, [B

    .line 4
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private UnWrapFromJS(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lorg/mozilla/javascript/ConsString;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v1, v3

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    instance-of v0, p1, Lorg/mozilla/javascript/NativeObject;

    if-eqz v0, :cond_3

    .line 6
    check-cast p1, Lorg/mozilla/javascript/NativeObject;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->UnWrapFromJS(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0

    .line 10
    :cond_3
    instance-of v0, p1, Lorg/mozilla/javascript/NativeArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 11
    check-cast p1, Lorg/mozilla/javascript/NativeArray;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    :goto_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 14
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->UnWrapFromJS(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object v0

    .line 15
    :cond_5
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 16
    check-cast p1, [Ljava/lang/Object;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    array-length v2, p1

    :goto_2
    if-ge v1, v2, :cond_6

    aget-object v3, p1, v1

    .line 19
    invoke-direct {p0, v3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->UnWrapFromJS(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-object v0

    :cond_7
    return-object p1
.end method

.method private WrapForJS(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Lorg/jsoup/select/Elements;

    if-nez v0, :cond_5

    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 3
    check-cast p1, Ljava/util/Map;

    .line 4
    new-instance v0, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    .line 5
    sget-object v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->jsObject:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 7
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->WrapForJS(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v0

    .line 8
    :cond_2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 9
    check-cast p1, Ljava/util/List;

    .line 10
    new-instance v0, Lorg/mozilla/javascript/NativeArray;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeArray;-><init>(J)V

    .line 11
    sget-object v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->jsArray:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    const/4 v1, 0x0

    .line 12
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 13
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->WrapForJS(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    return-object p1

    .line 14
    :cond_5
    :goto_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static aJaxUrls([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 2
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 4
    new-instance v2, Landroid/support/v4/n1;

    invoke-direct {v2, v0, v1, p0}, Landroid/support/v4/n1;-><init>([Ljava/lang/String;I[Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 6
    :goto_1
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    const-wide/16 v1, 0x32

    .line 7
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1
.end method

.method public static aJaxUrls([Ljava/lang/String;[Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3

    .line 8
    invoke-static {p2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    .line 9
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 10
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 11
    new-instance v2, Landroid/support/v4/o1;

    invoke-direct {v2, p0, v1, p1, v0}, Landroid/support/v4/o1;-><init>([Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 13
    :goto_1
    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    const-wide/16 p0, 0x32

    .line 14
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1
.end method

.method private analyzeVariable(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->book:Lcom/wsw/cospa/bean/BaseComicBean;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/wsw/cospa/bean/BaseComicBean;->putVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->_map:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private crawl(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "location"

    if-eqz p4, :cond_2

    .line 18
    :try_start_0
    invoke-static {p1}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 19
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 20
    invoke-interface {v1, p2}, Lorg/jsoup/Connection;->headers(Ljava/util/Map;)Lorg/jsoup/Connection;

    move-result-object v1

    .line 21
    :cond_0
    invoke-static {p3}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 22
    invoke-interface {v1, p3}, Lorg/jsoup/Connection;->requestBody(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v1

    .line 23
    :cond_1
    invoke-static {}, Lcom/wsw/cospa/model/impl/try;->new()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    invoke-interface {v1, p2}, Lorg/jsoup/Connection;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lorg/jsoup/Connection;

    move-result-object p2

    const/4 p3, 0x0

    .line 24
    invoke-interface {p2, p3}, Lorg/jsoup/Connection;->followRedirects(Z)Lorg/jsoup/Connection;

    move-result-object p2

    invoke-interface {p2}, Lorg/jsoup/Connection;->execute()Lorg/jsoup/Connection$Response;

    move-result-object p2

    .line 25
    invoke-interface {p2, v0}, Lorg/jsoup/Connection$Base;->hasHeader(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 26
    invoke-interface {p2, v0}, Lorg/jsoup/Connection$Base;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 27
    invoke-interface {p2}, Lorg/jsoup/Connection$Base;->headers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2}, Lorg/jsoup/Connection$Response;->body()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 p4, p4, -0x1

    invoke-direct {p0, p3, v0, p2, p4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->crawl(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object p1
.end method

.method public static decryptRSAWithPrivateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5

    const-string v0, " "

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "+"

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 4
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 5
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 v1, 0x2

    .line 6
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getPrivateKey([B)Ljava/security/PrivateKey;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 7
    array-length p1, p0

    .line 8
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    :goto_0
    sub-int v3, p1, v0

    if-lez v3, :cond_2

    const/16 v4, 0x80

    if-le v3, v4, :cond_1

    .line 9
    invoke-virtual {p2, p0, v0, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p2, p0, v0, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .line 11
    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v0, v2, 0x80

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 13
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic do([Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->lambda$aJaxUrls$0([Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method private evalJS(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 2
    :cond_0
    new-instance v0, Ljavax/script/SimpleBindings;

    invoke-direct {v0}, Ljavax/script/SimpleBindings;-><init>()V

    const-string v1, "java"

    .line 3
    invoke-virtual {v0, v1, p0}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->headersJson:Ljava/lang/String;

    const-string v2, "headers"

    invoke-virtual {v0, v2, v1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-direct {p0, p2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->WrapForJS(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->baseUrl:Ljava/lang/String;

    const-string v1, "baseUrl"

    invoke-virtual {v0, v1, p2}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeYCYJS;

    invoke-direct {p2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeYCYJS;-><init>()V

    invoke-virtual {p2, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeYCYJS;->setBindings(Ljavax/script/SimpleBindings;)V

    const/4 p2, -0x1

    .line 8
    iget v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->imgPage:I

    if-eq p2, v1, :cond_1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "imgPage"

    invoke-virtual {v0, v1, p2}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$EngineHelper;->access$000()Ljavax/script/ScriptEngine;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Ljavax/script/ScriptEngine;->eval(Ljava/lang/String;Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->UnWrapFromJS(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAnalyzeByJSonPath()Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->analyzeByJSonPath:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->objectChangedJP:Z

    if-eqz v0, :cond_2

    .line 6
    :cond_0
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;

    invoke-direct {v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->analyzeByJSonPath:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;

    .line 7
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->object:Ljava/lang/Object;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 8
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;->parse(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;->parse(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;

    :goto_0
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->objectChangedJP:Z

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->analyzeByJSonPath:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;

    return-object v0
.end method

.method private getAnalyzeByJSonPath(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;

    invoke-direct {v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;->parse(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;

    invoke-direct {v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;-><init>()V

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;->parse(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getAnalyzeByJSonPath()Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;

    move-result-object p1

    return-object p1
.end method

.method private getAnalyzeByJSoup()Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->analyzeByJSoup:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->objectChangedJS:Z

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;

    invoke-direct {v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->analyzeByJSoup:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->object:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->parse(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->objectChangedJS:Z

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->analyzeByJSoup:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;

    return-object v0
.end method

.method private getAnalyzeByJSoup(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;

    invoke-direct {v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->parse(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getAnalyzeByJSoup()Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;

    move-result-object p1

    return-object p1
.end method

.method private getAnalyzeByXPath()Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->analyzeByXPath:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->objectChangedXP:Z

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;

    invoke-direct {v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->analyzeByXPath:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->object:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->parse(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->objectChangedXP:Z

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->analyzeByXPath:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;

    return-object v0
.end method

.method private getAnalyzeByXPath(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;

    invoke-direct {v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->parse(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getAnalyzeByXPath()Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;

    move-result-object p1

    return-object p1
.end method

.method public static getDMZJChapterResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->decryptRSAWithPrivateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    .line 2
    :try_start_0
    new-instance p1, Lcom/googlecode/protobuf/format/case;

    invoke-direct {p1}, Lcom/googlecode/protobuf/format/case;-><init>()V

    invoke-static {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailResponse;->parseFrom([B)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailResponse;->getDataOrBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/ChapterDetailResponseOuterClass$ChapterDetailInfoResponseOrBuilder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Message;

    invoke-virtual {p1, p0}, Lcom/googlecode/protobuf/format/goto;->break(Lcom/google/protobuf/Message;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDMZJDetailResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->decryptRSAWithPrivateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    .line 2
    :try_start_0
    new-instance p1, Lcom/googlecode/protobuf/format/case;

    invoke-direct {p1}, Lcom/googlecode/protobuf/format/case;-><init>()V

    invoke-static {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailResponse;->parseFrom([B)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailResponse;->getDataOrBuilder()Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/comic/DetailResponse$ComicDetailInfoResponseOrBuilder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Message;

    invoke-virtual {p1, p0}, Lcom/googlecode/protobuf/format/goto;->break(Lcom/google/protobuf/Message;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getJsArray()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .line 1
    invoke-static {}, Lorg/mozilla/javascript/Context;->enter()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->initStandardObjects()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->getArrayPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 3
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    return-object v0
.end method

.method private static getJsObject()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .line 1
    invoke-static {}, Lorg/mozilla/javascript/Context;->enter()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->initStandardObjects()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 3
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    return-object v0
.end method

.method public static getPrivateKey([B)Ljava/security/PrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "RSA"

    .line 1
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static getPublicKey([B)Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "RSA"

    .line 1
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic if([Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->lambda$aJaxUrls$1([Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$aJaxUrls$0([Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/wsw/cospa/utils/volatile;->else()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    aget-object p2, p2, p1

    invoke-virtual {v1, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {v0, p2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p2

    .line 2
    invoke-interface {p2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    .line 3
    aput-object p2, p0, p1

    :goto_0
    return-void
.end method

.method private static synthetic lambda$aJaxUrls$1([Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 11

    const-string v0, "-- "

    const-string v1, "AnalyzeRule"

    .line 1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/vv0;->do(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    aget-object p2, p2, p1

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    const-string v2, "headers"

    .line 3
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/support/v4/vv0;->do(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    if-eqz v2, :cond_0

    .line 7
    invoke-static {v2}, Lokhttp3/Headers;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p0

    :cond_0
    const-string v0, "body"

    .line 8
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "content-type"

    .line 9
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "method"

    .line 10
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_10

    const-string v3, "="

    const-string v4, "text/xml; charset=utf-8"

    const-string v5, "application/json; charset=utf-8"

    const-string v6, "&"

    const-string v7, "text/xml"

    const-string v8, "application/json"

    const/4 v9, 0x0

    if-eqz p2, :cond_4

    :try_start_1
    const-string v10, "POST"

    .line 11
    invoke-virtual {p2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 13
    invoke-static {v5}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    .line 14
    invoke-static {p2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 15
    invoke-virtual {p0, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    goto/16 :goto_4

    :cond_1
    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 17
    invoke-static {v4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    .line 18
    invoke-static {p2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 19
    invoke-virtual {p0, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    goto/16 :goto_4

    .line 20
    :cond_2
    new-instance p2, Lokhttp3/FormBody$Builder;

    invoke-direct {p2}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 21
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v5, v0, v4

    .line 22
    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 23
    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v7, v5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {p2}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p2

    invoke-virtual {p0, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-static {v2}, Lokhttp3/Headers;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p2

    invoke-virtual {p0, p2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p0

    goto/16 :goto_4

    :cond_4
    const-string v2, "DELETE"

    .line 25
    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v1, :cond_5

    .line 26
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 27
    invoke-static {v5}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    .line 28
    invoke-static {p2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 29
    invoke-virtual {p0, p2}, Lokhttp3/Request$Builder;->delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    goto/16 :goto_4

    :cond_5
    if-eqz v1, :cond_6

    .line 30
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 31
    invoke-static {v4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    .line 32
    invoke-static {p2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 33
    invoke-virtual {p0, p2}, Lokhttp3/Request$Builder;->delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    goto/16 :goto_4

    .line 34
    :cond_6
    new-instance p2, Lokhttp3/FormBody$Builder;

    invoke-direct {p2}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 35
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_7

    aget-object v4, v0, v2

    .line 36
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 37
    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v6, v4}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 38
    :cond_7
    invoke-virtual {p2}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p2

    invoke-virtual {p0, p2}, Lokhttp3/Request$Builder;->delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    goto/16 :goto_4

    :cond_8
    const-string v2, "PATCH"

    .line 39
    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v1, :cond_9

    .line 40
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 41
    invoke-static {v5}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    .line 42
    invoke-static {p2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 43
    invoke-virtual {p0, p2}, Lokhttp3/Request$Builder;->patch(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    goto/16 :goto_4

    :cond_9
    if-eqz v1, :cond_a

    .line 44
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 45
    invoke-static {v4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    .line 46
    invoke-static {p2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 47
    invoke-virtual {p0, p2}, Lokhttp3/Request$Builder;->patch(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    goto/16 :goto_4

    .line 48
    :cond_a
    new-instance p2, Lokhttp3/FormBody$Builder;

    invoke-direct {p2}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 49
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_b

    aget-object v4, v0, v2

    .line 50
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 51
    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v6, v4}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 52
    :cond_b
    invoke-virtual {p2}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p2

    invoke-virtual {p0, p2}, Lokhttp3/Request$Builder;->patch(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    goto/16 :goto_4

    :cond_c
    const-string v2, "PUT"

    .line 53
    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_12

    if-eqz v1, :cond_d

    .line 54
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 55
    invoke-static {v5}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    .line 56
    invoke-static {p2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 57
    invoke-virtual {p0, p2}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    goto :goto_4

    :cond_d
    if-eqz v1, :cond_e

    .line 58
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 59
    invoke-static {v4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    .line 60
    invoke-static {p2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 61
    invoke-virtual {p0, p2}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    goto :goto_4

    .line 62
    :cond_e
    new-instance p2, Lokhttp3/FormBody$Builder;

    invoke-direct {p2}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 63
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_f

    aget-object v4, v0, v2

    .line 64
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 65
    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v6, v4}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 66
    :cond_f
    invoke-virtual {p2}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p2

    invoke-virtual {p0, p2}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    goto :goto_4

    :cond_10
    const-string v0, "GET"

    .line 67
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 68
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p0

    goto :goto_4

    :cond_11
    const-string v0, "HEAD"

    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 70
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    move-result-object p0

    .line 71
    :cond_12
    :goto_4
    invoke-static {}, Lcom/wsw/cospa/utils/volatile;->else()Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p2

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    invoke-virtual {p2, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    const/4 p0, 0x0

    .line 72
    aput-object p0, p3, p1

    :goto_5
    return-void
.end method

.method private splitCoverSourceRule(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "{{"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, ""

    if-eqz v2, :cond_4

    const-string v2, "}}"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4
    new-instance v6, Ljavax/script/SimpleBindings;

    invoke-direct {v6}, Ljavax/script/SimpleBindings;-><init>()V

    const-string v7, "java"

    .line 5
    invoke-virtual {v6, v7, p0}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v7, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->headersJson:Ljava/lang/String;

    const-string v8, "headers"

    invoke-virtual {v6, v8, v7}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v7, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->object:Ljava/lang/Object;

    invoke-direct {p0, v7}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->WrapForJS(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "result"

    invoke-virtual {v6, v8, v7}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v7, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->baseUrl:Ljava/lang/String;

    const-string v8, "baseUrl"

    invoke-virtual {v6, v8, v7}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v7, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeYCYJS;

    invoke-direct {v7}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeYCYJS;-><init>()V

    invoke-virtual {v7, v6}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeYCYJS;->setBindings(Ljavax/script/SimpleBindings;)V

    const/4 v7, -0x1

    .line 10
    iget v8, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->imgPage:I

    if-eq v7, v8, :cond_1

    .line 11
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "imgPage"

    invoke-virtual {v6, v8, v7}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    invoke-static {p1, v5, v1, v2}, Landroid/support/v4/p32;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/p32$do;

    move-result-object v7

    :goto_0
    if-eqz v7, :cond_4

    .line 13
    :try_start_0
    invoke-virtual {v7}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 14
    invoke-virtual {v7}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$EngineHelper;->access$000()Ljavax/script/ScriptEngine;

    move-result-object v8

    invoke-interface {v8, p1, v6}, Ljavax/script/ScriptEngine;->eval(Ljava/lang/String;Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object p1

    .line 16
    instance-of v8, p1, Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 17
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v7, p1}, Landroid/support/v4/p32$do;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 18
    :cond_2
    instance-of v8, p1, Ljava/lang/Double;

    if-eqz v8, :cond_3

    move-object v8, p1

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v8, v10

    const-wide/16 v10, 0x0

    cmpl-double v12, v8, v10

    if-nez v12, :cond_3

    const-string v8, "%.0f"

    new-array v9, v4, [Ljava/lang/Object;

    .line 19
    check-cast p1, Ljava/lang/Double;

    aput-object p1, v9, v3

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/support/v4/p32$do;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 20
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/support/v4/p32$do;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    :goto_1
    invoke-static {p1, v5, v1, v2}, Landroid/support/v4/p32;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/p32$do;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JS_CODE_ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    const-string v1, "@XPath:"

    .line 23
    invoke-static {p1, v1}, Landroid/support/v4/l22;->default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x6

    if-eqz v1, :cond_5

    .line 24
    sget-object v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;->XPath:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    const/4 v6, 0x7

    .line 25
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    const-string v1, "@JSon:"

    .line 26
    invoke-static {p1, v1}, Landroid/support/v4/l22;->default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 27
    sget-object v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;->JSon:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    .line 28
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 29
    :cond_6
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->isJSON:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 30
    sget-object v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;->JSon:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    goto :goto_2

    .line 31
    :cond_7
    sget-object v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;->Default:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    :goto_2
    const-string v6, "@put:"

    const-string v7, "{"

    const-string v8, "}"

    .line 32
    invoke-static {p1, v6, v7, v8}, Landroid/support/v4/p32;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/p32$do;

    move-result-object v9

    :goto_3
    if-eqz v9, :cond_8

    .line 33
    invoke-virtual {v9}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 34
    invoke-virtual {v9}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object p1

    const/4 v10, 0x5

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 35
    :try_start_1
    new-instance v10, Lcom/google/gson/GsonBuilder;

    invoke-direct {v10}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 36
    invoke-virtual {v10}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v10

    .line 37
    invoke-virtual {v10}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v10

    .line 38
    new-instance v11, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$4;

    invoke-direct {v11, p0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$4;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;)V

    .line 39
    invoke-virtual {v11}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 40
    invoke-virtual {v10, p1, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 41
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->analyzeVariable(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    :catch_1
    invoke-virtual {v9, v5}, Landroid/support/v4/p32$do;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-static {p1, v6, v7, v8}, Landroid/support/v4/p32;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/p32$do;

    move-result-object v9

    goto :goto_3

    :cond_8
    const-string v6, "@get:"

    .line 44
    invoke-static {p1, v6, v7, v8}, Landroid/support/v4/p32;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/p32$do;

    move-result-object v9

    :goto_4
    if-eqz v9, :cond_c

    .line 45
    invoke-virtual {v9}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 46
    iget-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->book:Lcom/wsw/cospa/bean/BaseComicBean;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/wsw/cospa/bean/BaseComicBean;->getVariableMap()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 47
    iget-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->book:Lcom/wsw/cospa/bean/BaseComicBean;

    invoke-interface {p1}, Lcom/wsw/cospa/bean/BaseComicBean;->getVariableMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v9}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v4

    invoke-virtual {v10, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_5

    .line 48
    :cond_9
    iget-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->_map:Ljava/util/Map;

    if-eqz p1, :cond_a

    .line 49
    invoke-virtual {v9}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v4

    invoke-virtual {v10, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_5

    :cond_a
    move-object p1, v5

    :goto_5
    if-nez p1, :cond_b

    move-object p1, v5

    .line 50
    :cond_b
    invoke-virtual {v9, p1}, Landroid/support/v4/p32$do;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-static {p1, v6, v7, v8}, Landroid/support/v4/p32;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/p32$do;

    move-result-object v9

    goto :goto_4

    :cond_c
    const-string v2, "@Header:"

    .line 52
    invoke-static {p1, v2, v7, v8}, Landroid/support/v4/p32;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/p32$do;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 53
    invoke-virtual {v2}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 54
    invoke-virtual {v2}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 55
    :try_start_2
    iget-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->book:Lcom/wsw/cospa/bean/BaseComicBean;

    if-eqz v4, :cond_d

    .line 56
    new-instance v4, Lcom/google/gson/GsonBuilder;

    invoke-direct {v4}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 57
    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v4

    .line 58
    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v4

    .line 59
    iget-object v6, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->book:Lcom/wsw/cospa/bean/BaseComicBean;

    invoke-static {p1, v6}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeHeaders;->covertMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 60
    iget-object v6, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->book:Lcom/wsw/cospa/bean/BaseComicBean;

    const-string v7, "CoverHeader"

    invoke-virtual {v4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, v7, p1}, Lcom/wsw/cospa/bean/BaseComicBean;->putVariable(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 61
    :cond_d
    iget-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->bookContentVariable:Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 62
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->bookContentVariable:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 63
    :catch_2
    :cond_e
    :goto_6
    invoke-virtual {v2, v5}, Landroid/support/v4/p32$do;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    :cond_f
    sget-object v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->jsPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 65
    :goto_7
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const-string v6, "\n"

    if-eqz v4, :cond_11

    .line 66
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    if-le v4, v3, :cond_10

    .line 67
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-static {v3}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 69
    new-instance v4, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;

    invoke-direct {v4, p0, v3, v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;Ljava/lang/String;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_10
    new-instance v3, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;->Js:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    invoke-direct {v3, p0, v4, v6}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;Ljava/lang/String;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    goto :goto_7

    .line 72
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_12

    .line 73
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-static {p1}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 75
    new-instance v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;

    invoke-direct {v2, p0, p1, v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;Ljava/lang/String;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    return-object v0
.end method

.method private splitSourceRule(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "{{"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, ""

    if-eqz v2, :cond_4

    const-string v2, "}}"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4
    new-instance v6, Ljavax/script/SimpleBindings;

    invoke-direct {v6}, Ljavax/script/SimpleBindings;-><init>()V

    const-string v7, "java"

    .line 5
    invoke-virtual {v6, v7, p0}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v7, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->headersJson:Ljava/lang/String;

    const-string v8, "headers"

    invoke-virtual {v6, v8, v7}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v7, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->object:Ljava/lang/Object;

    invoke-direct {p0, v7}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->WrapForJS(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "result"

    invoke-virtual {v6, v8, v7}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v7, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->baseUrl:Ljava/lang/String;

    const-string v8, "baseUrl"

    invoke-virtual {v6, v8, v7}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v7, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeYCYJS;

    invoke-direct {v7}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeYCYJS;-><init>()V

    invoke-virtual {v7, v6}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeYCYJS;->setBindings(Ljavax/script/SimpleBindings;)V

    const/4 v7, -0x1

    .line 10
    iget v8, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->imgPage:I

    if-eq v7, v8, :cond_1

    .line 11
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "imgPage"

    invoke-virtual {v6, v8, v7}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    invoke-static {p1, v5, v1, v2}, Landroid/support/v4/p32;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/p32$do;

    move-result-object v7

    :goto_0
    if-eqz v7, :cond_4

    .line 13
    invoke-virtual {v7}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 14
    invoke-virtual {v7}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$EngineHelper;->access$000()Ljavax/script/ScriptEngine;

    move-result-object v8

    invoke-interface {v8, p1, v6}, Ljavax/script/ScriptEngine;->eval(Ljava/lang/String;Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object p1

    .line 16
    instance-of v8, p1, Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 17
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v7, p1}, Landroid/support/v4/p32$do;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 18
    :cond_2
    instance-of v8, p1, Ljava/lang/Double;

    if-eqz v8, :cond_3

    move-object v8, p1

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v9, v11

    const-wide/16 v11, 0x0

    cmpl-double v13, v9, v11

    if-nez v13, :cond_3

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v8, p1, v3

    const-string v8, "%.0f"

    .line 19
    invoke-static {v8, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/support/v4/p32$do;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 20
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/support/v4/p32$do;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    :goto_1
    invoke-static {p1, v5, v1, v2}, Landroid/support/v4/p32;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/p32$do;

    move-result-object v7

    goto :goto_0

    :cond_4
    const-string v1, "@XPath:"

    .line 22
    invoke-static {p1, v1}, Landroid/support/v4/l22;->default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x6

    if-eqz v1, :cond_5

    .line 23
    sget-object v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;->XPath:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    const/4 v6, 0x7

    .line 24
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    const-string v1, "@JSon:"

    .line 25
    invoke-static {p1, v1}, Landroid/support/v4/l22;->default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 26
    sget-object v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;->JSon:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    .line 27
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 28
    :cond_6
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->isJSON:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 29
    sget-object v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;->JSon:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    goto :goto_2

    .line 30
    :cond_7
    sget-object v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;->Default:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    :goto_2
    const-string v6, "@put:"

    const-string v7, "{"

    const-string v8, "}"

    .line 31
    invoke-static {p1, v6, v7, v8}, Landroid/support/v4/p32;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/p32$do;

    move-result-object v9

    :goto_3
    if-eqz v9, :cond_8

    .line 32
    invoke-virtual {v9}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 33
    invoke-virtual {v9}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object p1

    const/4 v10, 0x5

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 34
    :try_start_0
    new-instance v10, Lcom/google/gson/GsonBuilder;

    invoke-direct {v10}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 35
    invoke-virtual {v10}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v10

    .line 36
    invoke-virtual {v10}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v10

    .line 37
    new-instance v11, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$3;

    invoke-direct {v11, p0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$3;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;)V

    .line 38
    invoke-virtual {v11}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 39
    invoke-virtual {v10, p1, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 40
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->analyzeVariable(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :catch_0
    invoke-virtual {v9, v5}, Landroid/support/v4/p32$do;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-static {p1, v6, v7, v8}, Landroid/support/v4/p32;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/p32$do;

    move-result-object v9

    goto :goto_3

    :cond_8
    const-string v6, "@get:"

    .line 43
    invoke-static {p1, v6, v7, v8}, Landroid/support/v4/p32;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/p32$do;

    move-result-object v9

    :goto_4
    if-eqz v9, :cond_c

    .line 44
    invoke-virtual {v9}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 45
    iget-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->book:Lcom/wsw/cospa/bean/BaseComicBean;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/wsw/cospa/bean/BaseComicBean;->getVariableMap()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 46
    iget-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->book:Lcom/wsw/cospa/bean/BaseComicBean;

    invoke-interface {p1}, Lcom/wsw/cospa/bean/BaseComicBean;->getVariableMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v9}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v4

    invoke-virtual {v10, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_5

    .line 47
    :cond_9
    iget-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->_map:Ljava/util/Map;

    if-eqz p1, :cond_a

    .line 48
    invoke-virtual {v9}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v4

    invoke-virtual {v10, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_5

    :cond_a
    move-object p1, v5

    :goto_5
    if-nez p1, :cond_b

    move-object p1, v5

    .line 49
    :cond_b
    invoke-virtual {v9, p1}, Landroid/support/v4/p32$do;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {p1, v6, v7, v8}, Landroid/support/v4/p32;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/p32$do;

    move-result-object v9

    goto :goto_4

    :cond_c
    const-string v2, "@Header:"

    .line 51
    invoke-static {p1, v2, v7, v8}, Landroid/support/v4/p32;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/p32$do;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 52
    invoke-virtual {v2}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 53
    invoke-virtual {v2}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 54
    :try_start_1
    iget-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->book:Lcom/wsw/cospa/bean/BaseComicBean;

    if-eqz v4, :cond_d

    .line 55
    new-instance v4, Lcom/google/gson/GsonBuilder;

    invoke-direct {v4}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 56
    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v4

    .line 57
    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v4

    .line 58
    iget-object v6, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->book:Lcom/wsw/cospa/bean/BaseComicBean;

    invoke-static {p1, v6}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeHeaders;->covertMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 59
    iget-object v6, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->book:Lcom/wsw/cospa/bean/BaseComicBean;

    const-string v7, "UrlHeader"

    invoke-virtual {v4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, v7, p1}, Lcom/wsw/cospa/bean/BaseComicBean;->putVariable(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 60
    :cond_d
    iget-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->bookContentVariable:Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 61
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->bookContentVariable:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    :catch_1
    :cond_e
    :goto_6
    invoke-virtual {v2, v5}, Landroid/support/v4/p32$do;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    :cond_f
    sget-object v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->jsPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 64
    :goto_7
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const-string v6, "\n"

    if-eqz v4, :cond_11

    .line 65
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    if-le v4, v3, :cond_10

    .line 66
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-static {v3}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 68
    new-instance v4, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;

    invoke-direct {v4, p0, v3, v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;Ljava/lang/String;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_10
    new-instance v3, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;->Js:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    invoke-direct {v3, p0, v4, v6}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;Ljava/lang/String;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    goto :goto_7

    .line 71
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_12

    .line 72
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-static {p1}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 74
    new-instance v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;

    invoke-direct {v2, p0, p1, v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;Ljava/lang/String;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    return-object v0
.end method


# virtual methods
.method public aJax(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/wsw/cospa/model/impl/if;->break()Lcom/wsw/cospa/model/impl/if;

    move-result-object v0

    invoke-static {p1}, Landroid/support/v4/l22;->goto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/model/impl/if;->class(Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/wsw/cospa/utils/analyzeUrl/impl/IHttpGetApi;

    .line 2
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/utils/analyzeUrl/impl/IHttpGetApi;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Lcom/wsw/cospa/utils/analyzeUrl/impl/IHttpGetApi;->getWebContentCall(Ljava/lang/String;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

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

.method public atob(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->base64Decoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public base64Decoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public base64DecoderByte(Ljava/lang/Object;)[B
    .locals 1

    .line 2
    check-cast p1, [B

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public base64DecoderByte(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method public base64DecoderByte([B)[B
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public base64Encoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public base64EncoderByte(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    check-cast p1, [B

    .line 2
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public base64EncoderByte([B)[B
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public btoa(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->base64Encoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bytesToString([B)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public crawl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const-string v0, "location"

    if-eqz p4, :cond_2

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p1}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v1

    .line 3
    invoke-static {p2}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 5
    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    .line 7
    new-instance v3, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$7;

    invoke-direct {v3, p0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$7;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;)V

    .line 8
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 9
    invoke-virtual {v2, p2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 10
    invoke-interface {v1, p2}, Lorg/jsoup/Connection;->headers(Ljava/util/Map;)Lorg/jsoup/Connection;

    move-result-object v1

    .line 11
    :cond_0
    invoke-static {p3}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 12
    invoke-interface {v1, p3}, Lorg/jsoup/Connection;->requestBody(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v1

    .line 13
    :cond_1
    invoke-static {}, Lcom/wsw/cospa/model/impl/try;->new()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    invoke-interface {v1, p2}, Lorg/jsoup/Connection;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lorg/jsoup/Connection;

    move-result-object p2

    const/4 p3, 0x0

    .line 14
    invoke-interface {p2, p3}, Lorg/jsoup/Connection;->followRedirects(Z)Lorg/jsoup/Connection;

    move-result-object p2

    invoke-interface {p2}, Lorg/jsoup/Connection;->execute()Lorg/jsoup/Connection$Response;

    move-result-object p2

    .line 15
    invoke-interface {p2, v0}, Lorg/jsoup/Connection$Base;->hasHeader(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 16
    invoke-interface {p2, v0}, Lorg/jsoup/Connection$Base;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 17
    invoke-interface {p2}, Lorg/jsoup/Connection$Base;->headers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2}, Lorg/jsoup/Connection$Response;->body()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 p4, p4, -0x1

    invoke-direct {p0, p3, v0, p2, p4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->crawl(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object p1
.end method

.method public decrypt3DES(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "UTF-8"

    const/4 v1, 0x2

    .line 1
    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v2, "DESede/CBC/PKCS5Padding"

    .line 2
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 3
    new-instance v3, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {v3, p2}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    .line 4
    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-direct {p2, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string p3, "DESede"

    .line 5
    invoke-static {p3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p3

    .line 6
    invoke-virtual {p3, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p3

    .line 7
    invoke-virtual {v2, v1, p3, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 8
    new-instance p2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public decryptAES(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const-string v1, "AES"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 2
    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-direct {p2, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string p3, "AES/CBC/PKCS5Padding"

    .line 3
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p3, v1, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 5
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 6
    new-instance p2, Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public decryptESBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    const-string v0, "/"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 2
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p4, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p4

    invoke-direct {v1, p4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3
    new-instance p4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p5, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p4, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 4
    new-instance p2, Lorg/bouncycastle/jce/provider/do;

    invoke-direct {p2}, Lorg/bouncycastle/jce/provider/do;-><init>()V

    invoke-static {p2}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 5
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 p2, 0x2

    .line 6
    invoke-virtual {p1, p2, v1, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 7
    instance-of p2, p3, [B

    if-nez p2, :cond_1

    instance-of p2, p3, [Ljava/lang/Byte;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0, p3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->UnWrapFromJS(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/google/common/primitives/if;->super(Ljava/util/Collection;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    :goto_0
    check-cast p3, [B

    invoke-virtual {p1, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public decryptESBytes(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    const-string v0, "/"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 12
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p4, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p4

    invoke-direct {v1, p4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 13
    new-instance p4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p5, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p4, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 14
    new-instance p2, Lorg/bouncycastle/jce/provider/do;

    invoke-direct {p2}, Lorg/bouncycastle/jce/provider/do;-><init>()V

    invoke-static {p2}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 15
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 p2, 0x2

    .line 16
    invoke-virtual {p1, p2, v1, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 17
    invoke-virtual {p1, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public fetch(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/Response;
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 2
    invoke-direct {p0, p2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->UnWrapFromJS(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    const-string v1, "headers"

    .line 3
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    const-string v2, "content-type"

    .line 4
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-static {v1}, Lokhttp3/Headers;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {p1, v1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    const-string v1, "body"

    .line 6
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "method"

    .line 7
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    const-string v3, "POST"

    .line 8
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz v2, :cond_1

    const-string p2, "application/json"

    .line 9
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "application/json; charset=utf-8"

    .line 10
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    .line 11
    invoke-static {p2, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_2

    const-string p2, "text/xml"

    .line 13
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "text/xml; charset=utf-8"

    .line 14
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    .line 15
    invoke-static {p2, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    goto :goto_2

    .line 17
    :cond_2
    new-instance p2, Lokhttp3/FormBody$Builder;

    invoke-direct {p2}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v2, "&"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    const-string v6, "="

    .line 19
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 20
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v7, v5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {p2}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 22
    :cond_4
    :goto_2
    invoke-static {}, Lcom/wsw/cospa/utils/volatile;->else()Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p2

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->book:Lcom/wsw/cospa/bean/BaseComicBean;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/wsw/cospa/bean/BaseComicBean;->getVariableMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->book:Lcom/wsw/cospa/bean/BaseComicBean;

    invoke-interface {v0}, Lcom/wsw/cospa/bean/BaseComicBean;->getVariableMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->_map:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;)Lorg/jsoup/Connection$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jsoup/Connection$Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/wsw/cospa/model/impl/try;->new()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/jsoup/Connection;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lorg/jsoup/Connection;

    move-result-object p1

    const/4 v0, 0x1

    .line 7
    invoke-interface {p1, v0}, Lorg/jsoup/Connection;->ignoreContentType(Z)Lorg/jsoup/Connection;

    move-result-object p1

    const/4 v0, 0x0

    .line 8
    invoke-interface {p1, v0}, Lorg/jsoup/Connection;->followRedirects(Z)Lorg/jsoup/Connection;

    move-result-object p1

    .line 9
    invoke-interface {p1, p2}, Lorg/jsoup/Connection;->headers(Ljava/util/Map;)Lorg/jsoup/Connection;

    move-result-object p1

    sget-object p2, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    .line 10
    invoke-interface {p1, p2}, Lorg/jsoup/Connection;->method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Lorg/jsoup/Connection;->execute()Lorg/jsoup/Connection$Response;

    move-result-object p1

    return-object p1
.end method

.method public getBookContentVariable()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->bookContentVariable:Ljava/lang/String;

    return-object v0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 2

    .line 21
    :try_start_0
    invoke-static {}, Lcom/wsw/cospa/utils/volatile;->else()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 22
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 23
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBytes(Ljava/lang/String;Z)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->splitSourceRule(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v0, v1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;

    .line 4
    iget-object v3, v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-static {v3}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    sget-object v3, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$8;->$SwitchMap$com$wsw$cospa$utils$analyzeUrl$AnalyzeRule$Mode:[I

    iget-object v4, v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->mode:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 6
    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getAnalyzeByJSoup(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;

    move-result-object v0

    iget-object v2, v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->getString0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_3
    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getAnalyzeByJSoup(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;

    move-result-object v0

    iget-object v2, v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_4
    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getAnalyzeByXPath(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;

    move-result-object v0

    iget-object v2, v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_5
    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getAnalyzeByJSonPath(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;

    move-result-object v0

    iget-object v2, v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-nez v0, :cond_7

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->object:Ljava/lang/Object;

    .line 11
    :cond_7
    iget-object v2, v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->evalJS(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_8
    if-nez v0, :cond_9

    return-object v1

    .line 12
    :cond_9
    instance-of p1, v0, Ljava/lang/String;

    if-nez p1, :cond_d

    .line 13
    instance-of p1, v0, [B

    if-nez p1, :cond_c

    instance-of p1, v0, [Ljava/lang/Byte;

    if-eqz p1, :cond_a

    goto :goto_1

    .line 14
    :cond_a
    instance-of p1, v0, Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_b

    .line 15
    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->ByteBufferToBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    return-object p1

    .line 16
    :cond_b
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/primitives/if;->super(Ljava/util/Collection;)[B

    move-result-object p1

    return-object p1

    .line 17
    :cond_c
    :goto_1
    check-cast v0, [B

    return-object v0

    .line 18
    :cond_d
    :try_start_0
    new-instance p1, Ljava/lang/Exception;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    check-cast v0, [B

    return-object v0
.end method

.method public getCoverString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->splitCoverSourceRule(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v0, v1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;

    .line 4
    iget-object v3, v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-static {v3}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    sget-object v3, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$8;->$SwitchMap$com$wsw$cospa$utils$analyzeUrl$AnalyzeRule$Mode:[I

    iget-object v4, v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->mode:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 6
    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getAnalyzeByJSoup(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;

    move-result-object v0

    iget-object v2, v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->getString0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_3
    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getAnalyzeByJSoup(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;

    move-result-object v0

    iget-object v2, v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_4
    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getAnalyzeByXPath(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;

    move-result-object v0

    iget-object v2, v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_5
    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getAnalyzeByJSonPath(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;

    move-result-object v0

    iget-object v2, v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-nez v0, :cond_7

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->object:Ljava/lang/Object;

    .line 11
    :cond_7
    iget-object v2, v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->evalJS(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_8
    if-nez v0, :cond_9

    return-object v1

    .line 12
    :cond_9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_a

    .line 13
    iget-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->baseUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    const-string p2, "JS_CODE_ERROR: "

    invoke-static {p1, p2}, Landroid/support/v4/l22;->default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 14
    iget-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->baseUrl:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/support/v4/g31;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_a
    return-object p1
.end method

.method public getElements(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->splitSourceRule(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;

    .line 3
    sget-object v3, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$8;->$SwitchMap$com$wsw$cospa$utils$analyzeUrl$AnalyzeRule$Mode:[I

    iget-object v4, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->mode:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v2, :cond_6

    const/4 v2, 0x2

    if-eq v3, v2, :cond_4

    const/4 v2, 0x3

    if-eq v3, v2, :cond_2

    const/4 v2, 0x4

    if-eq v3, v2, :cond_1

    const/4 v2, 0x5

    if-eq v3, v2, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getAnalyzeByJSoup(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;

    move-result-object v0

    iget-object v1, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->getElements(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getAnalyzeByXPath(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;

    move-result-object v0

    iget-object v1, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->getElements(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getAnalyzeByJSonPath(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;

    move-result-object v0

    iget-object v1, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->object:Ljava/lang/Object;

    .line 8
    :cond_3
    new-instance v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;

    iget-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->baseUrl:Ljava/lang/String;

    const-string v4, "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36"

    invoke-direct {v2, v0, v3, v4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->object:Ljava/lang/Object;

    .line 10
    :cond_5
    new-instance v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;

    iget-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->baseUrl:Ljava/lang/String;

    const-string v4, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36"

    invoke-direct {v2, v0, v3, v4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-nez v0, :cond_7

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->object:Ljava/lang/Object;

    .line 12
    :cond_7
    iget-object v1, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->evalJS(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_8
    instance-of p1, v0, Ljava/util/List;

    if-eqz p1, :cond_9

    .line 14
    check-cast v0, Ljava/util/List;

    return-object v0

    .line 15
    :cond_9
    instance-of p1, v0, Ljava/lang/String;

    if-eqz p1, :cond_a

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/support/v4/l22;->public(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 16
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 17
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 19
    new-instance v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$2;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$2;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;)V

    .line 20
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_a
    new-array p1, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 22
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 19
    :try_start_0
    invoke-static {}, Lcom/wsw/cospa/utils/volatile;->else()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 20
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 21
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 22
    :try_start_0
    invoke-static {}, Lcom/wsw/cospa/utils/volatile;->else()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 23
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$5;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$5;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;)V

    .line 24
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-static {p2}, Lokhttp3/Headers;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 27
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->splitSourceRule(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v0, v1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;

    .line 4
    iget-object v3, v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-static {v3}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    sget-object v3, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$8;->$SwitchMap$com$wsw$cospa$utils$analyzeUrl$AnalyzeRule$Mode:[I

    iget-object v4, v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->mode:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p2, :cond_2

    .line 6
    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getAnalyzeByJSoup(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;

    move-result-object v0

    iget-object v2, v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->getString0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getAnalyzeByJSoup(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;

    move-result-object v0

    iget-object v2, v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getAnalyzeByXPath(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;

    move-result-object v0

    iget-object v2, v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getAnalyzeByJSonPath(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;

    move-result-object v0

    iget-object v2, v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->object:Ljava/lang/Object;

    .line 11
    :cond_3
    new-instance v3, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;

    iget-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->baseUrl:Ljava/lang/String;

    const-string v5, "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36"

    invoke-direct {v3, v0, v4, v5}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    if-nez v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->object:Ljava/lang/Object;

    .line 13
    :cond_4
    new-instance v3, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;

    iget-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->baseUrl:Ljava/lang/String;

    const-string v5, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36"

    invoke-direct {v3, v0, v4, v5}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    if-nez v0, :cond_5

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->object:Ljava/lang/Object;

    .line 15
    :cond_5
    iget-object v2, v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->evalJS(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    if-nez v0, :cond_7

    return-object v1

    .line 16
    :cond_7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_8

    .line 17
    iget-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->baseUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 18
    iget-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->baseUrl:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/support/v4/g31;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getStringList(Ljava/lang/String;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->splitSourceRule(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;

    .line 3
    sget-object v3, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$8;->$SwitchMap$com$wsw$cospa$utils$analyzeUrl$AnalyzeRule$Mode:[I

    iget-object v4, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->mode:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$Mode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v2, :cond_6

    const/4 v2, 0x2

    if-eq v3, v2, :cond_4

    const/4 v2, 0x3

    if-eq v3, v2, :cond_2

    const/4 v2, 0x4

    if-eq v3, v2, :cond_1

    const/4 v2, 0x5

    if-eq v3, v2, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getAnalyzeByJSoup(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;

    move-result-object v0

    iget-object v1, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSoup;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getAnalyzeByXPath(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;

    move-result-object v0

    iget-object v1, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByXPath;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getAnalyzeByJSonPath(Ljava/lang/Object;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;

    move-result-object v0

    iget-object v1, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByJSonPath;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->object:Ljava/lang/Object;

    .line 8
    :cond_3
    new-instance v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;

    iget-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->baseUrl:Ljava/lang/String;

    const-string v4, "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36"

    invoke-direct {v2, v0, v3, v4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->object:Ljava/lang/Object;

    .line 10
    :cond_5
    new-instance v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;

    iget-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->baseUrl:Ljava/lang/String;

    const-string v4, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36"

    invoke-direct {v2, v0, v3, v4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-nez v0, :cond_7

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->object:Ljava/lang/Object;

    .line 12
    :cond_7
    iget-object v1, v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$SourceRule;->rule:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->evalJS(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_8
    if-nez v0, :cond_9

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 14
    :cond_9
    instance-of p1, v0, Ljava/lang/String;

    if-eqz p1, :cond_b

    if-eqz p2, :cond_a

    new-array p1, v2, [Ljava/lang/String;

    const/4 p2, 0x0

    .line 15
    check-cast v0, Ljava/lang/String;

    aput-object v0, p1, p2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 16
    :cond_a
    check-cast v0, Ljava/lang/String;

    const-string p1, "\\s+"

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_b
    if-eqz p2, :cond_e

    .line 17
    iget-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->baseUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->baseUrl:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/support/v4/g31;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_d
    return-object p1

    .line 23
    :cond_e
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getVariable()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->book:Lcom/wsw/cospa/bean/BaseComicBean;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->_map:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-interface {v1}, Lcom/wsw/cospa/bean/BaseComicBean;->getVariable()Ljava/lang/String;

    move-result-object v0

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

.method public log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public post(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/jsoup/Connection$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jsoup/Connection$Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/wsw/cospa/model/impl/try;->new()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/jsoup/Connection;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lorg/jsoup/Connection;

    move-result-object p1

    const/4 v0, 0x1

    .line 3
    invoke-interface {p1, v0}, Lorg/jsoup/Connection;->ignoreContentType(Z)Lorg/jsoup/Connection;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Lorg/jsoup/Connection;->followRedirects(Z)Lorg/jsoup/Connection;

    move-result-object p1

    .line 5
    invoke-interface {p1, p2}, Lorg/jsoup/Connection;->requestBody(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object p1

    .line 6
    invoke-interface {p1, p3}, Lorg/jsoup/Connection;->headers(Ljava/util/Map;)Lorg/jsoup/Connection;

    move-result-object p1

    sget-object p2, Lorg/jsoup/Connection$Method;->POST:Lorg/jsoup/Connection$Method;

    .line 7
    invoke-interface {p1, p2}, Lorg/jsoup/Connection;->method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Lorg/jsoup/Connection;->execute()Lorg/jsoup/Connection$Response;

    move-result-object p1

    return-object p1
.end method

.method public postForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "="

    .line 1
    :try_start_0
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v2, "&"

    .line 2
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p2, v4

    .line 3
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v1, v6, v5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/utils/volatile;->else()Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p2

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public postJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "application/json; charset=utf-8"

    .line 1
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 2
    invoke-static {v0, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 3
    invoke-static {}, Lcom/wsw/cospa/utils/volatile;->else()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public postJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "application/json; charset=utf-8"

    .line 6
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 7
    invoke-static {v0, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 8
    invoke-static {}, Lcom/wsw/cospa/utils/volatile;->else()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 9
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$6;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$6;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;)V

    .line 10
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    invoke-static {p3}, Lokhttp3/Headers;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p3

    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public preTreatSourceRule(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/script/ScriptException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "{{"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "}}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3
    new-instance v2, Ljavax/script/SimpleBindings;

    invoke-direct {v2}, Ljavax/script/SimpleBindings;-><init>()V

    const-string v3, "java"

    .line 4
    invoke-virtual {v2, v3, p0}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->headersJson:Ljava/lang/String;

    const-string v4, "headers"

    invoke-virtual {v2, v4, v3}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->object:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->WrapForJS(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v2, v4, v3}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->baseUrl:Ljava/lang/String;

    const-string v4, "baseUrl"

    invoke-virtual {v2, v4, v3}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v3, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeYCYJS;

    invoke-direct {v3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeYCYJS;-><init>()V

    invoke-virtual {v3, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeYCYJS;->setBindings(Ljavax/script/SimpleBindings;)V

    const/4 v3, -0x1

    .line 9
    iget v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->imgPage:I

    if-eq v3, v4, :cond_1

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "imgPage"

    invoke-virtual {v2, v4, v3}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v3, ""

    .line 11
    invoke-static {p1, v3, v0, v1}, Landroid/support/v4/p32;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/p32$do;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_4

    .line 12
    :try_start_0
    invoke-virtual {v4}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 13
    invoke-virtual {v4}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4}, Landroid/support/v4/p32$do;->do()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule$EngineHelper;->access$000()Ljavax/script/ScriptEngine;

    move-result-object v5

    invoke-interface {v5, p1, v2}, Ljavax/script/ScriptEngine;->eval(Ljava/lang/String;Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    instance-of v5, p1, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 16
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v4, p1}, Landroid/support/v4/p32$do;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 17
    :cond_2
    instance-of v5, p1, Ljava/lang/Double;

    if-eqz v5, :cond_3

    move-object v5, p1

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v5, v7

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-nez v9, :cond_3

    const-string v5, "%.0f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 18
    check-cast p1, Ljava/lang/Double;

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/support/v4/p32$do;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 19
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/support/v4/p32$do;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    :goto_1
    invoke-static {p1, v3, v0, v1}, Landroid/support/v4/p32;->do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/p32$do;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JS_CODE_ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->book:Lcom/wsw/cospa/bean/BaseComicBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/wsw/cospa/bean/BaseComicBean;->putVariable(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->_map:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object p2
.end method

.method public setBook(Lcom/wsw/cospa/bean/BaseComicBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->book:Lcom/wsw/cospa/bean/BaseComicBean;

    return-void
.end method

.method public setBookContentVariable(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->bookContentVariable:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_1

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->headersJson:Ljava/lang/String;

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/l22;->public(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->isJSON:Ljava/lang/Boolean;

    .line 3
    iput-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->object:Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 4
    iput-object p3, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->baseUrl:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->objectChangedXP:Z

    .line 6
    iput-boolean p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->objectChangedJS:Z

    .line 7
    iput-boolean p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->objectChangedJP:Z

    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Content cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public setImgPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->imgPage:I

    return-void
.end method
