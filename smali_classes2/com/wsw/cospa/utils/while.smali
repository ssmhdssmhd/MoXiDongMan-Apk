.class public Lcom/wsw/cospa/utils/while;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static do:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^(.*?\u7b2c([\\d\u96f6\u3007\u4e00\u4e8c\u4e24\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341\u767e\u5343\u4e07\uff10-\uff19\\s]+)[\u8bdd\u7ae0\u8282\u7bc7\u56de\u96c6])[\u3001\uff0c\u3002\u3000\uff1a:.\\s]*"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/utils/while;->do:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicSourceBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/while;->new()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static case(Lcom/wsw/cospa/bean/SearchComicBean;)Lcom/wsw/cospa/bean/ComicShelfBean;
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setTag(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setNoteUrl(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setFinalDate(Ljava/lang/Long;)V

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapter(Ljava/lang/Integer;)V

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapterPage(Ljava/lang/Integer;)V

    .line 7
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getVariable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setVariable(Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-direct {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;-><init>()V

    .line 9
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->setNoteUrl(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->setAuthor(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getKind()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->setKind(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->setCoverUrl(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->setName(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->setTag(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getOrigin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->setOrigin(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getIntroduce()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->setIntroduce(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getChapterUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/wsw/cospa/bean/ComicInfoBean;->setChapterUrl(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setComicInfoBean(Lcom/wsw/cospa/bean/ComicInfoBean;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static catch(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    const-string v0, "\u7b2c.*?\u5377.*?\u7b2c.*[\u7ae0\u8282\u56de]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/wsw/cospa/utils/while;->do:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/l22;->extends(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method private static synthetic class(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "\u767b\u9646\u6210\u529f!"

    .line 2
    invoke-static {p0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "\u767b\u9646\u5931\u8d25!"

    .line 3
    invoke-static {p0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static synthetic const(Lcom/wsw/cospa/bean/ComicSourceBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getLoginUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loginUser"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "loginPswd"

    .line 2
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setLoginUrl(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/wsw/cospa/model/while;->throw(Lcom/wsw/cospa/bean/ComicSourceBean;)Lio/reactivex/new;

    move-result-object p0

    sget-object p1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 5
    invoke-virtual {p0, p1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p0

    sget-object p1, Landroid/support/v4/fo;->do:Landroid/support/v4/fo;

    .line 6
    invoke-virtual {p0, p1}, Lio/reactivex/new;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static synthetic do(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/utils/while;->class(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static else(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicSourceBean;
    .locals 1

    .line 1
    const-class v0, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/package;->if(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/bean/ComicSourceBean;

    return-object p0
.end method

.method public static for(Landroid/app/Activity;Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getLoginUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "\u5f53\u524d\u6e90\u6ca1\u6709\u914d\u7f6e\u767b\u9646\u5730\u5740!"

    .line 2
    invoke-static {p0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getLoginUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loginUser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getLoginUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loginPswd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/wsw/cospa/utils/DialogTool$new;

    const-string v1, "\u767b\u9646\u6f2b\u753b\u6e90"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/wsw/cospa/utils/DialogTool$new;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v1, Lcom/wsw/cospa/utils/DialogTool$try;

    const-string v2, "\u786e\u8ba4"

    const-string v3, "\u53d6\u6d88"

    invoke-direct {v1, v2, v3}, Lcom/wsw/cospa/utils/DialogTool$try;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v2, Landroid/support/v4/eo;

    invoke-direct {v2, p1}, Landroid/support/v4/eo;-><init>(Lcom/wsw/cospa/bean/ComicSourceBean;)V

    invoke-static {p0, v0, v1, v2}, Lcom/wsw/cospa/utils/DialogTool;->u(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$LoginDialogOptcb;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p0, p1}, Lcom/wsw/cospa/activity/SourceLoginActivity;->public(Landroid/content/Context;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    :goto_0
    return-void
.end method

.method public static goto(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicSourceBean;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/wsw/cospa/model/do;->protected(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic if(Lcom/wsw/cospa/bean/ComicSourceBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/utils/while;->const(Lcom/wsw/cospa/bean/ComicSourceBean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static new()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicSourceBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/DatabaseHelper;->class()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static this(Lcom/wsw/cospa/bean/ComicShelfBean;)Lcom/wsw/cospa/bean/SearchComicBean;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/SearchComicBean;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/bean/SearchComicBean;->setTag(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getAuthor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/bean/SearchComicBean;->setAuthor(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static try(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicSourceBean;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/package;->for(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
