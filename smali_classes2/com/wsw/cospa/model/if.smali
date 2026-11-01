.class public Lcom/wsw/cospa/model/if;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final new:Ljavax/script/ScriptEngine;


# instance fields
.field private do:Lcom/wsw/cospa/bean/ComicSourceBean;

.field private for:Lcom/wsw/cospa/service/CheckSourceService$CheckSourceListener;

.field private if:Lio/reactivex/try;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/sun/script/javascript/RhinoScriptEngine;

    invoke-direct {v0}, Lcom/sun/script/javascript/RhinoScriptEngine;-><init>()V

    sput-object v0, Lcom/wsw/cospa/model/if;->new:Ljavax/script/ScriptEngine;

    return-void
.end method

.method public constructor <init>(Lcom/wsw/cospa/bean/ComicSourceBean;Lio/reactivex/try;Lcom/wsw/cospa/service/CheckSourceService$CheckSourceListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/model/if;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 3
    iput-object p2, p0, Lcom/wsw/cospa/model/if;->if:Lio/reactivex/try;

    .line 4
    iput-object p3, p0, Lcom/wsw/cospa/model/if;->for:Lcom/wsw/cospa/service/CheckSourceService$CheckSourceListener;

    return-void
.end method

.method private synthetic break(Ljava/lang/String;)Lio/reactivex/ObservableSource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/model/if;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/wsw/cospa/model/while;->case(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic case(Lcom/wsw/cospa/model/if;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/model/if;->catch()V

    return-void
.end method

.method private catch()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/if;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    const-string v1, "\u5931\u6548"

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->addGroup(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/model/if;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setEnable(Z)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/model/if;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    iget-object v1, p0, Lcom/wsw/cospa/model/if;->for:Lcom/wsw/cospa/service/CheckSourceService$CheckSourceListener;

    invoke-interface {v1}, Lcom/wsw/cospa/service/CheckSourceService$CheckSourceListener;->getCheckIndex()I

    move-result v1

    add-int/lit16 v1, v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setSerialNumber(I)V

    .line 4
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->goto()Lcom/wsw/cospa/dao/ComicSourceBeanDao;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/model/if;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/model/if;->for:Lcom/wsw/cospa/service/CheckSourceService$CheckSourceListener;

    invoke-interface {v0}, Lcom/wsw/cospa/service/CheckSourceService$CheckSourceListener;->nextCheck()V

    return-void
.end method

.method private class()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/if;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    const-string v1, "\u5931\u6548"

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->containsGroup(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/model/if;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->removeGroup(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->goto()Lcom/wsw/cospa/dao/ComicSourceBeanDao;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/model/if;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/model/if;->for:Lcom/wsw/cospa/service/CheckSourceService$CheckSourceListener;

    invoke-interface {v0}, Lcom/wsw/cospa/service/CheckSourceService$CheckSourceListener;->nextCheck()V

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/model/if;Ljava/lang/String;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/model/if;->break(Ljava/lang/String;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method private else()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/if;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleFindUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/jl;

    invoke-direct {v0, p0}, Landroid/support/v4/jl;-><init>(Lcom/wsw/cospa/model/if;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Landroid/support/v4/kl;

    invoke-direct {v1, p0}, Landroid/support/v4/kl;-><init>(Lcom/wsw/cospa/model/if;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/model/if;->if:Lio/reactivex/try;

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object v0

    .line 5
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->observeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object v0

    const-wide/16 v1, 0x3c

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/new;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/model/if$if;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/model/if$if;-><init>(Lcom/wsw/cospa/model/if;)V

    .line 7
    invoke-virtual {v0, v1}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/wsw/cospa/model/if;->catch()V

    :goto_0
    return-void
.end method

.method public static synthetic for(Lcom/wsw/cospa/model/if;)Lcom/wsw/cospa/service/CheckSourceService$CheckSourceListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/model/if;->for:Lcom/wsw/cospa/service/CheckSourceService$CheckSourceListener;

    return-object p0
.end method

.method private goto(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljavax/script/SimpleBindings;

    invoke-direct {v0}, Ljavax/script/SimpleBindings;-><init>()V

    .line 2
    new-instance v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;

    invoke-direct {v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;-><init>()V

    const-string v2, "java"

    invoke-virtual {v0, v2, v1}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "baseUrl"

    .line 3
    invoke-virtual {v0, v1, p2}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p2, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeYCYJS;

    invoke-direct {p2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeYCYJS;-><init>()V

    invoke-virtual {p2, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeYCYJS;->setBindings(Ljavax/script/SimpleBindings;)V

    .line 5
    sget-object p2, Lcom/wsw/cospa/model/if;->new:Ljavax/script/ScriptEngine;

    invoke-interface {p2, p1, v0}, Ljavax/script/ScriptEngine;->eval(Ljava/lang/String;Ljavax/script/Bindings;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic if(Lcom/wsw/cospa/model/if;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/model/if;->this(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic new(Lcom/wsw/cospa/model/if;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/model/if;->else()V

    return-void
.end method

.method private synthetic this(Lio/reactivex/ObservableEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/if;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleFindUrl()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "<js>"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "(&&|\n)+"

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    const-string v3, "<"

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hw;->this()Lcom/wsw/cospa/dao/CookieBeanDao;

    move-result-object v1

    iget-object v3, p0, Lcom/wsw/cospa/model/if;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/CookieBean;

    .line 6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/CookieBean;->getVariableStr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/lang3/class;->A(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 8
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/CookieBean;->getVariableStr()Ljava/lang/String;

    move-result-object v1

    const-string v4, "HeaderCookie"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 10
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 12
    iget-object v4, p0, Lcom/wsw/cospa/model/if;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/wsw/cospa/utils/implements;->if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/model/if;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/implements;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 17
    aget-object v0, v0, v1

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 18
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    :cond_2
    return-void
.end method

.method public static synthetic try(Lcom/wsw/cospa/model/if;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/model/if;->class()V

    return-void
.end method


# virtual methods
.method public const()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/if;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object v1

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/wsw/cospa/model/if;->do:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v2, "\u4f60"

    invoke-virtual/range {v1 .. v6}, Lcom/wsw/cospa/model/while;->while(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/model/if;->if:Lio/reactivex/try;

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object v0

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->observeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object v0

    const-wide/16 v1, 0x3c

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/new;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/model/if$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/model/if$do;-><init>(Lcom/wsw/cospa/model/if;)V

    .line 6
    invoke-virtual {v0, v1}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/wsw/cospa/model/if;->else()V

    :goto_0
    return-void
.end method
