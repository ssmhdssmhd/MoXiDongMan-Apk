.class public Lcom/wsw/cospa/model/final;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final break:Ljava/lang/String; = "path"

.field private static final case:Ljava/lang/String; = "source"

.field private static final catch:Ljava/lang/String; = "title"

.field private static final class:Ljava/lang/String; = "download"

.field private static final const:Ljava/lang/String; = "index.cdif"

.field private static final do:Ljava/lang/String; = "version"

.field private static final else:Ljava/lang/String; = "cid"

.field private static final final:Ljava/lang/String; = ".nomedia"

.field private static final for:Ljava/lang/String; = "comic"

.field private static final goto:Ljava/lang/String; = "title"

.field private static final if:Ljava/lang/String; = "type"

.field private static final new:Ljava/lang/String; = "chapter"

.field private static final this:Ljava/lang/String; = "cover"

.field private static final try:Ljava/lang/String; = "list"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static break(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/bean/ComicInfoBean;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "download"

    aput-object v3, v1, v2

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getOrigin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v1, v6

    invoke-static {p0, v1}, Lcom/wsw/cospa/utils/switch;->for(Lcom/wsw/cospa/utils/DocumentFile;[Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object v1

    if-nez v1, :cond_0

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v2

    aput-object p2, v0, v5

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v6

    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/switch;->for(Lcom/wsw/cospa/utils/DocumentFile;[Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static case(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/bean/ComicInfoBean;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/model/final;->break(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/bean/ComicInfoBean;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/DocumentFile;->try()Z

    :cond_0
    return-void
.end method

.method public static catch(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/bean/ComicInfoBean;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/wsw/cospa/utils/DocumentFile;",
            "Lcom/wsw/cospa/bean/ComicInfoBean;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lcom/wsw/cospa/model/final;->break(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/bean/ComicInfoBean;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "index.cdif"

    .line 2
    invoke-virtual {p1, p2}, Lcom/wsw/cospa/utils/DocumentFile;->else(Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p0, p1}, Lcom/wsw/cospa/model/final;->super(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/switch;->goto(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x5

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/wsw/cospa/model/final;->import(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static class(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/DocumentFile;->super()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "index.cdif"

    .line 2
    invoke-virtual {p1, v0}, Lcom/wsw/cospa/utils/DocumentFile;->else(Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lcom/wsw/cospa/model/final;->super(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/switch;->goto(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x5

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static const(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "version"

    const-string v2, "1"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v2, "chapter"

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    .line 4
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "path"

    .line 5
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic do(Lcom/wsw/cospa/utils/DocumentFile;Landroid/content/ContentResolver;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/model/final;->while(Lcom/wsw/cospa/utils/DocumentFile;Landroid/content/ContentResolver;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static else(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/bean/ComicInfoBean;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/utils/DocumentFile;",
            "Lcom/wsw/cospa/bean/ComicInfoBean;",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ChapterListBean;

    .line 2
    invoke-static {p0, p1, v0, p3}, Lcom/wsw/cospa/model/final;->this(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/bean/ComicInfoBean;Lcom/wsw/cospa/bean/ChapterListBean;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/wsw/cospa/utils/DocumentFile;->try()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static final(Ljava/util/List;Lcom/wsw/cospa/bean/ComicInfoBean;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;",
            "Lcom/wsw/cospa/bean/ComicInfoBean;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "version"

    const-string v2, "1"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v2, "comic"

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getOrigin()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getCoverUrl()Ljava/lang/String;

    move-result-object p1

    const-string v1, "cover"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ChapterListBean;

    .line 10
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 11
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v1

    const-string v4, "path"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string p0, "list"

    .line 14
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static for(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;)Lcom/wsw/cospa/bean/Task;
    .locals 8

    .line 1
    invoke-static {p0, p1}, Lcom/wsw/cospa/model/final;->class(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "chapter"

    const-string v1, "type"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "cdif"

    .line 4
    invoke-static {p1, p0}, Lcom/wsw/cospa/utils/switch;->if(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    const-string p0, "path"

    .line 5
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p0, "title"

    .line 6
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7
    new-instance p0, Lcom/wsw/cospa/bean/Task;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, v4

    move v6, v7

    invoke-direct/range {v1 .. v7}, Lcom/wsw/cospa/bean/Task;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static goto(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/bean/ComicInfoBean;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/utils/DocumentFile;",
            "Lcom/wsw/cospa/bean/ComicInfoBean;",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ChapterListBean;

    .line 2
    invoke-static {p0, p1, v0, p3}, Lcom/wsw/cospa/model/final;->this(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/bean/ComicInfoBean;Lcom/wsw/cospa/bean/ChapterListBean;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/wsw/cospa/utils/DocumentFile;->try()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static if(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;)Lcom/wsw/cospa/bean/ComicInfoBean;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/wsw/cospa/model/final;->class(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "comic"

    const-string v1, "type"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const-string p0, "source"

    .line 4
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    const-string p0, "title"

    .line 5
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string p0, "cid"

    .line 6
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string p0, "cover"

    .line 7
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    new-instance p0, Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-direct {p0}, Lcom/wsw/cospa/bean/ComicInfoBean;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object p1
.end method

.method private static import(Ljava/lang/String;)Ljava/util/List;
    .locals 6
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "list"

    .line 2
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "c"

    :goto_0
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    if-eq v2, v0, :cond_2

    .line 5
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "path"

    .line 6
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    const-string v4, "p"

    :goto_2
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public static native(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/wsw/cospa/utils/DocumentFile;",
            ")",
            "Lio/reactivex/new<",
            "Landroid/util/Pair<",
            "Lcom/wsw/cospa/bean/ComicInfoBean;",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Task;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/k20;

    invoke-direct {v0, p1, p0}, Landroid/support/v4/k20;-><init>(Lcom/wsw/cospa/utils/DocumentFile;Landroid/content/ContentResolver;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p0

    .line 2
    invoke-static {}, Lio/reactivex/schedulers/do;->new()Lio/reactivex/try;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p0

    return-object p0
.end method

.method private static new(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/bean/ComicInfoBean;)Lcom/wsw/cospa/utils/DocumentFile;
    .locals 1

    const-string v0, "download"

    .line 1
    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/switch;->try(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p0

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/switch;->try(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p0

    .line 3
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/switch;->try(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "index.cdif"

    .line 4
    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/switch;->new(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static public(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/bean/Task;)Lcom/wsw/cospa/utils/DocumentFile;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/Task;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/Task;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wsw/cospa/model/final;->const(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "download"

    .line 2
    invoke-static {p1, v1}, Lcom/wsw/cospa/utils/switch;->try(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/Task;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/wsw/cospa/utils/switch;->try(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/Task;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/wsw/cospa/utils/switch;->try(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p1

    .line 5
    invoke-static {p2}, Lcom/wsw/cospa/utils/return;->this(Lcom/wsw/cospa/bean/Task;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/wsw/cospa/utils/switch;->try(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "index.cdif"

    .line 6
    invoke-static {p1, p2}, Lcom/wsw/cospa/utils/switch;->new(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v1, "cimoc"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/wsw/cospa/utils/switch;->class(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static return(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Ljava/util/List;Lcom/wsw/cospa/bean/ComicInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/wsw/cospa/utils/DocumentFile;",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;",
            "Lcom/wsw/cospa/bean/ComicInfoBean;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/wsw/cospa/model/final;->try(Lcom/wsw/cospa/utils/DocumentFile;)V

    .line 2
    invoke-static {p2, p3}, Lcom/wsw/cospa/model/final;->final(Ljava/util/List;Lcom/wsw/cospa/bean/ComicInfoBean;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p1, p3}, Lcom/wsw/cospa/model/final;->new(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/bean/ComicInfoBean;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p1

    const-string p3, "cimoc"

    .line 4
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/utils/switch;->class(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static super(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    .line 1
    invoke-static {p0, p1, v0}, Lcom/wsw/cospa/utils/switch;->else(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;I)[C

    move-result-object p0

    const-string p1, "cimoc"

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static this(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/bean/ComicInfoBean;Lcom/wsw/cospa/bean/ChapterListBean;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;
    .locals 8

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "download"

    aput-object v3, v1, v2

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getOrigin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v1, v6

    invoke-static {p2}, Lcom/wsw/cospa/utils/return;->goto(Lcom/wsw/cospa/bean/ChapterListBean;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v1, v7

    invoke-static {p0, v1}, Lcom/wsw/cospa/utils/switch;->for(Lcom/wsw/cospa/utils/DocumentFile;[Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object v1

    if-nez v1, :cond_0

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v2

    aput-object p3, v0, v5

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v6

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v7

    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/switch;->for(Lcom/wsw/cospa/utils/DocumentFile;[Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static throw(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/bean/ComicInfoBean;Lcom/wsw/cospa/bean/ChapterListBean;Ljava/lang/String;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/utils/DocumentFile;",
            "Lcom/wsw/cospa/bean/ComicInfoBean;",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/new<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/wsw/cospa/model/final$do;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/wsw/cospa/model/final$do;-><init>(Lcom/wsw/cospa/utils/DocumentFile;Lcom/wsw/cospa/bean/ComicInfoBean;Lcom/wsw/cospa/bean/ChapterListBean;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p0

    .line 2
    invoke-static {}, Lio/reactivex/schedulers/do;->new()Lio/reactivex/try;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p0

    return-object p0
.end method

.method private static try(Lcom/wsw/cospa/utils/DocumentFile;)V
    .locals 1

    const-string v0, "download"

    .line 1
    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/switch;->try(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p0

    const-string v0, ".nomedia"

    .line 2
    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/switch;->new(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    return-void
.end method

.method private static synthetic while(Lcom/wsw/cospa/utils/DocumentFile;Landroid/content/ContentResolver;Lio/reactivex/ObservableEmitter;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/DocumentFile;->switch()V

    const-string v0, "download"

    .line 2
    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/switch;->try(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/DocumentFile;->public()[Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p0, v2

    .line 4
    invoke-virtual {v3}, Lcom/wsw/cospa/utils/DocumentFile;->super()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5
    invoke-virtual {v3}, Lcom/wsw/cospa/utils/DocumentFile;->public()[Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 6
    invoke-static {p1, v6}, Lcom/wsw/cospa/model/final;->if(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 7
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 8
    invoke-virtual {v6}, Lcom/wsw/cospa/utils/DocumentFile;->public()[Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object v6

    array-length v9, v6

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_1

    aget-object v11, v6, v10

    .line 9
    invoke-static {p1, v11}, Lcom/wsw/cospa/model/final;->for(Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;)Lcom/wsw/cospa/bean/Task;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 10
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 11
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 12
    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-interface {p2, v6}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_4
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method
