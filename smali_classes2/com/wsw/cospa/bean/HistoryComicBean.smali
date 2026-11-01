.class public Lcom/wsw/cospa/bean/HistoryComicBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/wsw/cospa/bean/BaseComicBean;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/wsw/cospa/bean/HistoryComicBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private author:Ljava/lang/String;

.field private chapterUrl:Ljava/lang/String;

.field private coverUrl:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private headersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private introduce:Ljava/lang/String;

.field private isChecked:Z

.field private kind:Ljava/lang/String;

.field private lastChapter:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private noteUrl:Ljava/lang/String;

.field private origin:Ljava/lang/String;

.field private searchCoverHeaders:Ljava/lang/String;

.field private searchPage:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private upTime:Ljava/lang/Long;

.field private variable:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/bean/HistoryComicBean$1;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/HistoryComicBean$1;-><init>()V

    sput-object v0, Lcom/wsw/cospa/bean/HistoryComicBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->upTime:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->upTime:Ljava/lang/Long;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->noteUrl:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->coverUrl:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->name:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->author:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->tag:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->kind:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->origin:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->desc:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->lastChapter:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->introduce:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->chapterUrl:Ljava/lang/String;

    .line 14
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->upTime:Ljava/lang/Long;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->variable:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->searchPage:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->searchCoverHeaders:Ljava/lang/String;

    .line 18
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->isChecked:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    move-object v0, p0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    .line 22
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/wsw/cospa/bean/HistoryComicBean;->upTime:Ljava/lang/Long;

    move-object v1, p1

    .line 23
    iput-object v1, v0, Lcom/wsw/cospa/bean/HistoryComicBean;->noteUrl:Ljava/lang/String;

    move-object v1, p2

    .line 24
    iput-object v1, v0, Lcom/wsw/cospa/bean/HistoryComicBean;->coverUrl:Ljava/lang/String;

    move-object v1, p3

    .line 25
    iput-object v1, v0, Lcom/wsw/cospa/bean/HistoryComicBean;->name:Ljava/lang/String;

    move-object v1, p4

    .line 26
    iput-object v1, v0, Lcom/wsw/cospa/bean/HistoryComicBean;->author:Ljava/lang/String;

    move-object v1, p5

    .line 27
    iput-object v1, v0, Lcom/wsw/cospa/bean/HistoryComicBean;->tag:Ljava/lang/String;

    move-object v1, p6

    .line 28
    iput-object v1, v0, Lcom/wsw/cospa/bean/HistoryComicBean;->kind:Ljava/lang/String;

    move-object v1, p7

    .line 29
    iput-object v1, v0, Lcom/wsw/cospa/bean/HistoryComicBean;->origin:Ljava/lang/String;

    move-object v1, p8

    .line 30
    iput-object v1, v0, Lcom/wsw/cospa/bean/HistoryComicBean;->desc:Ljava/lang/String;

    move-object v1, p9

    .line 31
    iput-object v1, v0, Lcom/wsw/cospa/bean/HistoryComicBean;->lastChapter:Ljava/lang/String;

    move-object v1, p10

    .line 32
    iput-object v1, v0, Lcom/wsw/cospa/bean/HistoryComicBean;->introduce:Ljava/lang/String;

    move-object v1, p11

    .line 33
    iput-object v1, v0, Lcom/wsw/cospa/bean/HistoryComicBean;->chapterUrl:Ljava/lang/String;

    move-object v1, p12

    .line 34
    iput-object v1, v0, Lcom/wsw/cospa/bean/HistoryComicBean;->upTime:Ljava/lang/Long;

    move-object/from16 v1, p13

    .line 35
    iput-object v1, v0, Lcom/wsw/cospa/bean/HistoryComicBean;->variable:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 36
    iput-object v1, v0, Lcom/wsw/cospa/bean/HistoryComicBean;->searchPage:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 37
    iput-object v1, v0, Lcom/wsw/cospa/bean/HistoryComicBean;->searchCoverHeaders:Ljava/lang/String;

    move/from16 v1, p16

    .line 38
    iput-boolean v1, v0, Lcom/wsw/cospa/bean/HistoryComicBean;->isChecked:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getChapterUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->chapterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverHeader()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/HistoryComicBean;->getVariableMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "CoverHeader"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadersMap()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->headersMap:Ljava/util/Map;

    return-object v0
.end method

.method public getIntroduce()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->introduce:Ljava/lang/String;

    return-object v0
.end method

.method public getIsChecked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->isChecked:Z

    return v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getLastChapter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->lastChapter:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNoteUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->noteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchCoverHeaders()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->searchCoverHeaders:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchPage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->searchPage:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUpTime()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->upTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getUrlHeader()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/HistoryComicBean;->getVariableMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "UrlHeader"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getVariable()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->variable:Ljava/lang/String;

    return-object v0
.end method

.method public getVariableMap()Ljava/util/Map;
    .locals 3
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
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->variable:Ljava/lang/String;

    new-instance v2, Lcom/wsw/cospa/bean/HistoryComicBean$3;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/bean/HistoryComicBean$3;-><init>(Lcom/wsw/cospa/bean/HistoryComicBean;)V

    .line 2
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->isChecked:Z

    return v0
.end method

.method public putVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->variable:Ljava/lang/String;

    new-instance v2, Lcom/wsw/cospa/bean/HistoryComicBean$2;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/bean/HistoryComicBean$2;-><init>(Lcom/wsw/cospa/bean/HistoryComicBean;)V

    .line 2
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    :cond_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->variable:Ljava/lang/String;

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->author:Ljava/lang/String;

    return-void
.end method

.method public setChapterUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->chapterUrl:Ljava/lang/String;

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->isChecked:Z

    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->coverUrl:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->desc:Ljava/lang/String;

    return-void
.end method

.method public setHeadersMap(Ljava/util/Map;)V
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
    iput-object p1, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->headersMap:Ljava/util/Map;

    return-void
.end method

.method public setIntroduce(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->introduce:Ljava/lang/String;

    return-void
.end method

.method public setIsChecked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->isChecked:Z

    return-void
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->kind:Ljava/lang/String;

    return-void
.end method

.method public setLastChapter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->lastChapter:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNoteUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->noteUrl:Ljava/lang/String;

    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->origin:Ljava/lang/String;

    return-void
.end method

.method public setSearchCoverHeaders(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->searchCoverHeaders:Ljava/lang/String;

    return-void
.end method

.method public setSearchPage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->searchPage:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->tag:Ljava/lang/String;

    return-void
.end method

.method public setUpTime(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->upTime:Ljava/lang/Long;

    return-void
.end method

.method public setVariable(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->variable:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->noteUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->coverUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->author:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->kind:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->origin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->desc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->lastChapter:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->introduce:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->chapterUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->upTime:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 13
    iget-object p2, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->variable:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->searchPage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->searchCoverHeaders:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-boolean p2, p0, Lcom/wsw/cospa/bean/HistoryComicBean;->isChecked:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
