.class public Lcom/wsw/cospa/web/controller/SourceController;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteSources(Ljava/lang/String;)Lcom/wsw/cospa/web/utils/ReturnData;
    .locals 1

    .line 1
    const-class v0, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-static {p1, v0}, Landroid/support/v4/hi0;->do(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 3
    invoke-static {v0}, Lcom/wsw/cospa/model/do;->d(Lcom/wsw/cospa/bean/ComicSourceBean;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/wsw/cospa/web/utils/ReturnData;

    invoke-direct {p1}, Lcom/wsw/cospa/web/utils/ReturnData;-><init>()V

    const-string v0, "\u5df2\u6267\u884c"

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/web/utils/ReturnData;->setData(Ljava/lang/Object;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object p1

    return-object p1
.end method

.method public getSource(Ljava/util/Map;)Lcom/wsw/cospa/web/utils/ReturnData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/wsw/cospa/web/utils/ReturnData;"
        }
    .end annotation

    const-string v0, "url"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 2
    new-instance v0, Lcom/wsw/cospa/web/utils/ReturnData;

    invoke-direct {v0}, Lcom/wsw/cospa/web/utils/ReturnData;-><init>()V

    if-nez p1, :cond_0

    const-string p1, "\u53c2\u6570url\u4e0d\u80fd\u4e3a\u7a7a\uff0c\u8bf7\u6307\u5b9a\u56fe\u6e90\u5730\u5740"

    .line 3
    invoke-virtual {v0, p1}, Lcom/wsw/cospa/web/utils/ReturnData;->setErrorMsg(Ljava/lang/String;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/wsw/cospa/model/do;->abstract(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "\u672a\u627e\u5230\u56fe\u6e90\uff0c\u8bf7\u68c0\u67e5\u56fe\u6e90\u5730\u5740"

    .line 5
    invoke-virtual {v0, p1}, Lcom/wsw/cospa/web/utils/ReturnData;->setErrorMsg(Ljava/lang/String;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Lcom/wsw/cospa/web/utils/ReturnData;->setData(Ljava/lang/Object;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object p1

    return-object p1
.end method

.method public getSources()Lcom/wsw/cospa/web/utils/ReturnData;
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/model/do;->package()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/wsw/cospa/web/utils/ReturnData;

    invoke-direct {v1}, Lcom/wsw/cospa/web/utils/ReturnData;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u8bbe\u5907\u56fe\u6e90\u5217\u8868\u4e3a\u7a7a"

    .line 4
    invoke-virtual {v1, v0}, Lcom/wsw/cospa/web/utils/ReturnData;->setErrorMsg(Ljava/lang/String;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/model/do;->package()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/web/utils/ReturnData;->setData(Ljava/lang/Object;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object v0

    return-object v0
.end method

.method public saveSource(Ljava/lang/String;)Lcom/wsw/cospa/web/utils/ReturnData;
    .locals 2

    .line 1
    const-class v0, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-static {p1, v0}, Landroid/support/v4/hi0;->if(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 2
    new-instance v0, Lcom/wsw/cospa/web/utils/ReturnData;

    invoke-direct {v0}, Lcom/wsw/cospa/web/utils/ReturnData;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/wsw/cospa/model/do;->default(Lcom/wsw/cospa/bean/ComicSourceBean;)V

    const-string p1, ""

    .line 5
    invoke-virtual {v0, p1}, Lcom/wsw/cospa/web/utils/ReturnData;->setData(Ljava/lang/Object;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "\u56fe\u6e90\u540d\u79f0\u548cURL\u4e0d\u80fd\u4e3a\u7a7a"

    .line 6
    invoke-virtual {v0, p1}, Lcom/wsw/cospa/web/utils/ReturnData;->setErrorMsg(Ljava/lang/String;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object p1

    return-object p1
.end method

.method public saveSources(Ljava/lang/String;)Lcom/wsw/cospa/web/utils/ReturnData;
    .locals 3

    .line 1
    const-class v0, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-static {p1, v0}, Landroid/support/v4/hi0;->do(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 4
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v1}, Lcom/wsw/cospa/model/do;->default(Lcom/wsw/cospa/bean/ComicSourceBean;)V

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Lcom/wsw/cospa/web/utils/ReturnData;

    invoke-direct {p1}, Lcom/wsw/cospa/web/utils/ReturnData;-><init>()V

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/web/utils/ReturnData;->setData(Ljava/lang/Object;)Lcom/wsw/cospa/web/utils/ReturnData;

    move-result-object p1

    return-object p1
.end method
