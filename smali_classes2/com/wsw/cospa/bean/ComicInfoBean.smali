.class public Lcom/wsw/cospa/bean/ComicInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/wsw/cospa/bean/ComicInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x20000060L


# instance fields
.field private author:Ljava/lang/String;

.field private chapterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;"
        }
    .end annotation
.end field

.field private chapterUrl:Ljava/lang/String;

.field private coverUrl:Ljava/lang/String;

.field private download:Ljava/lang/Long;

.field private finalRefreshData:J

.field private introduce:Ljava/lang/String;

.field private kind:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private noteUrl:Ljava/lang/String;

.field private origin:Ljava/lang/String;

.field private tag:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/bean/ComicInfoBean$1;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/ComicInfoBean$1;-><init>()V

    sput-object v0, Lcom/wsw/cospa/bean/ComicInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->chapterList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->chapterList:Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->name:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->tag:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->noteUrl:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->chapterUrl:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->finalRefreshData:J

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->coverUrl:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->author:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->introduce:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->origin:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->kind:Ljava/lang/String;

    .line 15
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->download:Ljava/lang/Long;

    .line 16
    sget-object v0, Lcom/wsw/cospa/bean/ChapterListBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->chapterList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->chapterList:Ljava/util/List;

    .line 19
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->name:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->tag:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->noteUrl:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->chapterUrl:Ljava/lang/String;

    .line 23
    iput-wide p5, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->finalRefreshData:J

    .line 24
    iput-object p7, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->coverUrl:Ljava/lang/String;

    .line 25
    iput-object p8, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->author:Ljava/lang/String;

    .line 26
    iput-object p9, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->introduce:Ljava/lang/String;

    .line 27
    iput-object p10, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->origin:Ljava/lang/String;

    .line 28
    iput-object p11, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->kind:Ljava/lang/String;

    .line 29
    iput-object p12, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->download:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicInfoBean;

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicInfoBean;->name:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->tag:Ljava/lang/String;

    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicInfoBean;->tag:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->noteUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicInfoBean;->noteUrl:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->chapterUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicInfoBean;->chapterUrl:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->coverUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicInfoBean;->coverUrl:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->author:Ljava/lang/String;

    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicInfoBean;->author:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->introduce:Ljava/lang/String;

    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicInfoBean;->introduce:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->origin:Ljava/lang/String;

    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicInfoBean;->origin:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->chapterList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v2, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->chapterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 13
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ChapterListBean;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->setChapterList(Ljava/util/List;)V

    :cond_1
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicInfoBean;

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->noteUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getChapterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->chapterList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getChapterUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->chapterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->download:Ljava/lang/Long;

    return-object v0
.end method

.method public getFinalRefreshData()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->finalRefreshData:J

    return-wide v0
.end method

.method public getIntroduce()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->introduce:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNoteUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->noteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->author:Ljava/lang/String;

    return-void
.end method

.method public setChapterList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->chapterList:Ljava/util/List;

    return-void
.end method

.method public setChapterUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->chapterUrl:Ljava/lang/String;

    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->coverUrl:Ljava/lang/String;

    return-void
.end method

.method public setDownload(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->download:Ljava/lang/Long;

    return-void
.end method

.method public setFinalRefreshData(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->finalRefreshData:J

    return-void
.end method

.method public setIntroduce(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->introduce:Ljava/lang/String;

    return-void
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->kind:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNoteUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->noteUrl:Ljava/lang/String;

    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->origin:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->tag:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->noteUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->chapterUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-wide v0, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->finalRefreshData:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->coverUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->author:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->introduce:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->origin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->kind:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->download:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 12
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicInfoBean;->chapterList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
