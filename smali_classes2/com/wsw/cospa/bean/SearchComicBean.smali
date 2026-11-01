.class public Lcom/wsw/cospa/bean/SearchComicBean;
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
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x20000060L


# instance fields
.field private addTime:Ljava/lang/Long;

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

.field private isAdd:Ljava/lang/Boolean;

.field private isChecked:Ljava/lang/Boolean;

.field private isCurrentSource:Ljava/lang/Boolean;

.field private kind:Ljava/lang/String;

.field private lastChapter:Ljava/lang/String;

.field private lastChapterNum:I

.field private name:Ljava/lang/String;

.field private noteUrl:Ljava/lang/String;

.field private origin:Ljava/lang/String;

.field private originNum:I

.field private originUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchCoverHeaders:Ljava/lang/String;

.field private searchPage:Ljava/lang/String;

.field private searchTime:I

.field private state:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private upTime:Ljava/lang/Long;

.field private urlNext:Ljava/lang/String;

.field private variable:Ljava/lang/String;

.field private weight:I

.field private words:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/bean/SearchComicBean$4;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/SearchComicBean$4;-><init>()V

    sput-object v0, Lcom/wsw/cospa/bean/SearchComicBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->addTime:Ljava/lang/Long;

    .line 3
    iput-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->upTime:Ljava/lang/Long;

    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->isCurrentSource:Ljava/lang/Boolean;

    const/4 v1, 0x1

    .line 5
    iput v1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->originNum:I

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->weight:I

    const/4 v1, -0x2

    .line 7
    iput v1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->lastChapterNum:I

    const v1, 0x7fffffff

    .line 8
    iput v1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->searchTime:I

    .line 9
    iput-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->isAdd:Ljava/lang/Boolean;

    .line 10
    iput-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->isChecked:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 11
    const-class v0, Ljava/lang/Long;

    const-class v1, Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->addTime:Ljava/lang/Long;

    .line 13
    iput-object v2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->upTime:Ljava/lang/Long;

    .line 14
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->isCurrentSource:Ljava/lang/Boolean;

    const/4 v3, 0x1

    .line 15
    iput v3, p0, Lcom/wsw/cospa/bean/SearchComicBean;->originNum:I

    const/4 v3, -0x1

    .line 16
    iput v3, p0, Lcom/wsw/cospa/bean/SearchComicBean;->weight:I

    const/4 v3, -0x2

    .line 17
    iput v3, p0, Lcom/wsw/cospa/bean/SearchComicBean;->lastChapterNum:I

    const v3, 0x7fffffff

    .line 18
    iput v3, p0, Lcom/wsw/cospa/bean/SearchComicBean;->searchTime:I

    .line 19
    iput-object v2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->isAdd:Ljava/lang/Boolean;

    .line 20
    iput-object v2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->isChecked:Ljava/lang/Boolean;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->noteUrl:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->coverUrl:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->name:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->author:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->tag:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->kind:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->origin:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->desc:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->lastChapter:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->introduce:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->chapterUrl:Ljava/lang/String;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    iput-object v2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->addTime:Ljava/lang/Long;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->upTime:Ljava/lang/Long;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->variable:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->searchPage:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->urlNext:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->words:J

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->state:Ljava/lang/String;

    .line 39
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->isCurrentSource:Ljava/lang/Boolean;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->originNum:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->weight:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->lastChapterNum:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->searchTime:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->originUrls:Ljava/util/List;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->isAdd:Ljava/lang/Boolean;

    .line 46
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->isChecked:Ljava/lang/Boolean;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->searchCoverHeaders:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object v0, p0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    .line 49
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/wsw/cospa/bean/SearchComicBean;->addTime:Ljava/lang/Long;

    .line 50
    iput-object v1, v0, Lcom/wsw/cospa/bean/SearchComicBean;->upTime:Ljava/lang/Long;

    .line 51
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/wsw/cospa/bean/SearchComicBean;->isCurrentSource:Ljava/lang/Boolean;

    const/4 v2, 0x1

    .line 52
    iput v2, v0, Lcom/wsw/cospa/bean/SearchComicBean;->originNum:I

    const/4 v2, -0x1

    .line 53
    iput v2, v0, Lcom/wsw/cospa/bean/SearchComicBean;->weight:I

    const/4 v2, -0x2

    .line 54
    iput v2, v0, Lcom/wsw/cospa/bean/SearchComicBean;->lastChapterNum:I

    const v2, 0x7fffffff

    .line 55
    iput v2, v0, Lcom/wsw/cospa/bean/SearchComicBean;->searchTime:I

    .line 56
    iput-object v1, v0, Lcom/wsw/cospa/bean/SearchComicBean;->isAdd:Ljava/lang/Boolean;

    .line 57
    iput-object v1, v0, Lcom/wsw/cospa/bean/SearchComicBean;->isChecked:Ljava/lang/Boolean;

    move-object v1, p1

    .line 58
    iput-object v1, v0, Lcom/wsw/cospa/bean/SearchComicBean;->noteUrl:Ljava/lang/String;

    move-object v1, p2

    .line 59
    iput-object v1, v0, Lcom/wsw/cospa/bean/SearchComicBean;->coverUrl:Ljava/lang/String;

    move-object v1, p3

    .line 60
    iput-object v1, v0, Lcom/wsw/cospa/bean/SearchComicBean;->name:Ljava/lang/String;

    move-object v1, p4

    .line 61
    iput-object v1, v0, Lcom/wsw/cospa/bean/SearchComicBean;->author:Ljava/lang/String;

    move-object v1, p5

    .line 62
    iput-object v1, v0, Lcom/wsw/cospa/bean/SearchComicBean;->tag:Ljava/lang/String;

    move-object v1, p6

    .line 63
    iput-object v1, v0, Lcom/wsw/cospa/bean/SearchComicBean;->kind:Ljava/lang/String;

    move-object v1, p7

    .line 64
    iput-object v1, v0, Lcom/wsw/cospa/bean/SearchComicBean;->origin:Ljava/lang/String;

    move-object v1, p8

    .line 65
    iput-object v1, v0, Lcom/wsw/cospa/bean/SearchComicBean;->desc:Ljava/lang/String;

    move-object v1, p9

    .line 66
    iput-object v1, v0, Lcom/wsw/cospa/bean/SearchComicBean;->lastChapter:Ljava/lang/String;

    move-object v1, p10

    .line 67
    iput-object v1, v0, Lcom/wsw/cospa/bean/SearchComicBean;->introduce:Ljava/lang/String;

    move-object v1, p11

    .line 68
    iput-object v1, v0, Lcom/wsw/cospa/bean/SearchComicBean;->chapterUrl:Ljava/lang/String;

    move-object v1, p12

    .line 69
    iput-object v1, v0, Lcom/wsw/cospa/bean/SearchComicBean;->addTime:Ljava/lang/Long;

    move-object/from16 v1, p13

    .line 70
    iput-object v1, v0, Lcom/wsw/cospa/bean/SearchComicBean;->upTime:Ljava/lang/Long;

    move-object/from16 v1, p14

    .line 71
    iput-object v1, v0, Lcom/wsw/cospa/bean/SearchComicBean;->variable:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 72
    iput-object v1, v0, Lcom/wsw/cospa/bean/SearchComicBean;->searchPage:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 73
    iput-object v1, v0, Lcom/wsw/cospa/bean/SearchComicBean;->searchCoverHeaders:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addOriginUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->originUrls:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->originUrls:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->originUrls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->originUrls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->originUrls:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->originNum:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->addTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getChapterUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->chapterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getChecked()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->isChecked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCoverHeader()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getVariableMap()Ljava/util/Map;

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
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->desc:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->headersMap:Ljava/util/Map;

    return-object v0
.end method

.method public getIntroduce()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->introduce:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAdd()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->isAdd:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsCurrentSource()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->isCurrentSource:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getLastChapter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->lastChapter:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getLastChapterNum()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->lastChapterNum:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->lastChapter:Ljava/lang/String;

    invoke-static {v0}, Lcom/wsw/cospa/utils/while;->catch(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->lastChapterNum:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->lastChapterNum:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNoteUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->noteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->originNum:I

    return v0
.end method

.method public getOriginUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->originUrls:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getSearchCoverHeaders()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->searchCoverHeaders:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchPage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->searchPage:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->searchTime:I

    return v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUpTime()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->upTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getUrlHeader()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/SearchComicBean;->getVariableMap()Ljava/util/Map;

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

.method public getUrlNext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->urlNext:Ljava/lang/String;

    return-object v0
.end method

.method public getVariable()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->variable:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->variable:Ljava/lang/String;

    new-instance v2, Lcom/wsw/cospa/bean/SearchComicBean$3;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/bean/SearchComicBean$3;-><init>(Lcom/wsw/cospa/bean/SearchComicBean;)V

    .line 2
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    const v0, 0x7fffffff

    .line 1
    iput v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->weight:I

    return v0
.end method

.method public getWords()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->words:J

    return-wide v0
.end method

.method public mergeVariable(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->variable:Ljava/lang/String;

    new-instance v2, Lcom/wsw/cospa/bean/SearchComicBean$1;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/bean/SearchComicBean$1;-><init>(Lcom/wsw/cospa/bean/SearchComicBean;)V

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
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 6
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->variable:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public originNumAdd()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->originNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->originNum:I

    return-void
.end method

.method public putVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->variable:Ljava/lang/String;

    new-instance v2, Lcom/wsw/cospa/bean/SearchComicBean$2;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/bean/SearchComicBean$2;-><init>(Lcom/wsw/cospa/bean/SearchComicBean;)V

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

    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->variable:Ljava/lang/String;

    return-void
.end method

.method public setAddTime(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->addTime:Ljava/lang/Long;

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[\uff08\u3010\u3011\uff09\u3000]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->author:Ljava/lang/String;

    return-void
.end method

.method public setChapterUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->chapterUrl:Ljava/lang/String;

    return-void
.end method

.method public setChecked(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->isChecked:Ljava/lang/Boolean;

    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->coverUrl:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->desc:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->headersMap:Ljava/util/Map;

    return-void
.end method

.method public setIntroduce(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->introduce:Ljava/lang/String;

    return-void
.end method

.method public setIsAdd(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->isAdd:Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->addTime:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method public setIsCurrentSource(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->isCurrentSource:Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->addTime:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->kind:Ljava/lang/String;

    return-void
.end method

.method public setLastChapter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->lastChapter:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u3000"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNoteUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->noteUrl:Ljava/lang/String;

    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->origin:Ljava/lang/String;

    return-void
.end method

.method public setSearchCoverHeaders(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->searchCoverHeaders:Ljava/lang/String;

    return-void
.end method

.method public setSearchPage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->searchPage:Ljava/lang/String;

    return-void
.end method

.method public setSearchTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->searchTime:I

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->state:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->tag:Ljava/lang/String;

    return-void
.end method

.method public setUpTime(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->upTime:Ljava/lang/Long;

    return-void
.end method

.method public setUrlNext(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->urlNext:Ljava/lang/String;

    return-void
.end method

.method public setVariable(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->variable:Ljava/lang/String;

    return-void
.end method

.method public setWeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->weight:I

    return-void
.end method

.method public setWords(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wsw/cospa/bean/SearchComicBean;->words:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->noteUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->coverUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->author:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->kind:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->origin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->desc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->lastChapter:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->introduce:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->chapterUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->addTime:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 13
    iget-object p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->upTime:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 14
    iget-object p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->variable:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->searchPage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->urlNext:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    iget-wide v0, p0, Lcom/wsw/cospa/bean/SearchComicBean;->words:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 18
    iget-object p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->state:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->isCurrentSource:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 20
    iget p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->originNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    iget p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->weight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->lastChapterNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->searchTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget-object p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->originUrls:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 25
    iget-object p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->isAdd:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 26
    iget-object p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->isChecked:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 27
    iget-object p2, p0, Lcom/wsw/cospa/bean/SearchComicBean;->searchCoverHeaders:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
