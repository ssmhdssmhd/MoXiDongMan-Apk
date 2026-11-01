.class public Lcom/wsw/cospa/bean/ChapterListBean;
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
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x20000060L


# instance fields
.field private chapterId:Ljava/lang/String;

.field private comicInfoUrl:Ljava/lang/String;

.field private complete:Z

.field private download:Z

.field private durChapterIndex:I

.field private durChapterName:Ljava/lang/String;

.field private durChapterUrl:Ljava/lang/String;

.field private end:Ljava/lang/Long;

.field private nextChapterUrl:Ljava/lang/String;

.field private noteUrl:Ljava/lang/String;

.field private parentIdString:Ljava/lang/String;

.field private parentNameString:Ljava/lang/String;

.field private start:Ljava/lang/Long;

.field private tag:Ljava/lang/String;

.field private tid:J

.field private variable:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/bean/ChapterListBean$1;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/ChapterListBean$1;-><init>()V

    sput-object v0, Lcom/wsw/cospa/bean/ChapterListBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->nextChapterUrl:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->start:Ljava/lang/Long;

    .line 4
    iput-object v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->end:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 5
    const-class v0, Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->nextChapterUrl:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->start:Ljava/lang/Long;

    .line 8
    iput-object v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->end:Ljava/lang/Long;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->noteUrl:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->durChapterIndex:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->parentIdString:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->parentNameString:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->chapterId:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->durChapterUrl:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->durChapterName:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->nextChapterUrl:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->variable:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->tag:Ljava/lang/String;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->start:Ljava/lang/Long;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->end:Ljava/lang/Long;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->comicInfoUrl:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->complete:Z

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->download:Z

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->tid:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZZJ)V
    .locals 3

    move-object v0, p0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 26
    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->nextChapterUrl:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 27
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->start:Ljava/lang/Long;

    .line 28
    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->end:Ljava/lang/Long;

    move-object v1, p1

    .line 29
    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->noteUrl:Ljava/lang/String;

    move v1, p2

    .line 30
    iput v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->durChapterIndex:I

    move-object v1, p3

    .line 31
    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->parentIdString:Ljava/lang/String;

    move-object v1, p4

    .line 32
    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->parentNameString:Ljava/lang/String;

    move-object v1, p5

    .line 33
    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->chapterId:Ljava/lang/String;

    move-object v1, p6

    .line 34
    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->durChapterUrl:Ljava/lang/String;

    move-object v1, p7

    .line 35
    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->durChapterName:Ljava/lang/String;

    move-object v1, p8

    .line 36
    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->nextChapterUrl:Ljava/lang/String;

    move-object v1, p9

    .line 37
    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->variable:Ljava/lang/String;

    move-object v1, p10

    .line 38
    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->tag:Ljava/lang/String;

    move-object v1, p11

    .line 39
    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->start:Ljava/lang/Long;

    move-object v1, p12

    .line 40
    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->end:Ljava/lang/Long;

    move-object/from16 v1, p13

    .line 41
    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->comicInfoUrl:Ljava/lang/String;

    move/from16 v1, p14

    .line 42
    iput-boolean v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->complete:Z

    move/from16 v1, p15

    .line 43
    iput-boolean v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->download:Z

    move-wide/from16 v1, p16

    .line 44
    iput-wide v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->tid:J

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ChapterListBean;

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->noteUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->noteUrl:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->parentIdString:Ljava/lang/String;

    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->parentIdString:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->parentNameString:Ljava/lang/String;

    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->parentNameString:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->chapterId:Ljava/lang/String;

    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->chapterId:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->durChapterUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->durChapterUrl:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->durChapterName:Ljava/lang/String;

    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->durChapterName:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->variable:Ljava/lang/String;

    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->variable:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->tag:Ljava/lang/String;

    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->tag:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->nextChapterUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->nextChapterUrl:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->comicInfoUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/wsw/cospa/bean/ChapterListBean;->comicInfoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/wsw/cospa/bean/ChapterListBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/wsw/cospa/bean/ChapterListBean;

    .line 3
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/wsw/cospa/bean/ChapterListBean;->noteUrl:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->durChapterName:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getChapterId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->chapterId:Ljava/lang/String;

    return-object v0
.end method

.method public getChapterNum()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->durChapterName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/wsw/cospa/utils/while;->do:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/l22;->extends(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getComicInfoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->comicInfoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getComplete()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->complete:Z

    return v0
.end method

.method public getDownload()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->download:Z

    return v0
.end method

.method public getDurChapterIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->durChapterIndex:I

    return v0
.end method

.method public getDurChapterName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->durChapterName:Ljava/lang/String;

    return-object v0
.end method

.method public getDurChapterUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->durChapterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->end:Ljava/lang/Long;

    return-object v0
.end method

.method public getNextChapterUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->nextChapterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNoteUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->noteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getParentIdString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->parentIdString:Ljava/lang/String;

    return-object v0
.end method

.method public getParentNameString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->parentNameString:Ljava/lang/String;

    return-object v0
.end method

.method public getPureChapterName()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->durChapterName:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0}, Landroid/support/v4/l22;->else(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\s"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "^\u7b2c.*?\u7ae0|[(\\[][^()\\[\\]]{2,}[)\\]]$"

    .line 3
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[^\\w\\u4E00-\\u9FEF\u3007\\u3400-\\u4DBF\\u20000-\\u2A6DF\\u2A700-\\u2EBEF]"

    .line 4
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getStart()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->start:Ljava/lang/Long;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->tid:J

    return-wide v0
.end method

.method public getVariable()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->variable:Ljava/lang/String;

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->complete:Z

    return v0
.end method

.method public isDownload()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->download:Z

    return v0
.end method

.method public setChapterId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->chapterId:Ljava/lang/String;

    return-void
.end method

.method public setComicInfoUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->comicInfoUrl:Ljava/lang/String;

    return-void
.end method

.method public setComplete(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->complete:Z

    return-void
.end method

.method public setDownload(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->download:Z

    return-void
.end method

.method public setDurChapterIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->durChapterIndex:I

    return-void
.end method

.method public setDurChapterName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->durChapterName:Ljava/lang/String;

    return-void
.end method

.method public setDurChapterUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->durChapterUrl:Ljava/lang/String;

    return-void
.end method

.method public setEnd(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->end:Ljava/lang/Long;

    return-void
.end method

.method public setNextChapterUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->nextChapterUrl:Ljava/lang/String;

    return-void
.end method

.method public setNoteUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->noteUrl:Ljava/lang/String;

    return-void
.end method

.method public setParentIdString(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->parentIdString:Ljava/lang/String;

    return-void
.end method

.method public setParentNameString(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->parentNameString:Ljava/lang/String;

    return-void
.end method

.method public setStart(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->start:Ljava/lang/Long;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->tid:J

    return-void
.end method

.method public setVariable(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ChapterListBean;->variable:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/bean/ChapterListBean;->noteUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lcom/wsw/cospa/bean/ChapterListBean;->durChapterIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/wsw/cospa/bean/ChapterListBean;->parentIdString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/wsw/cospa/bean/ChapterListBean;->parentNameString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/wsw/cospa/bean/ChapterListBean;->chapterId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/wsw/cospa/bean/ChapterListBean;->durChapterUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/wsw/cospa/bean/ChapterListBean;->durChapterName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/wsw/cospa/bean/ChapterListBean;->nextChapterUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/wsw/cospa/bean/ChapterListBean;->variable:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/wsw/cospa/bean/ChapterListBean;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/wsw/cospa/bean/ChapterListBean;->start:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 12
    iget-object p2, p0, Lcom/wsw/cospa/bean/ChapterListBean;->end:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 13
    iget-object p2, p0, Lcom/wsw/cospa/bean/ChapterListBean;->comicInfoUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-boolean p2, p0, Lcom/wsw/cospa/bean/ChapterListBean;->complete:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 15
    iget-boolean p2, p0, Lcom/wsw/cospa/bean/ChapterListBean;->download:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 16
    iget-wide v0, p0, Lcom/wsw/cospa/bean/ChapterListBean;->tid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
