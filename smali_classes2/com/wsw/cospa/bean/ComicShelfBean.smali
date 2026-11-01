.class public Lcom/wsw/cospa/bean/ComicShelfBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;
.implements Lcom/wsw/cospa/bean/BaseComicBean;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOCAL_TAG:Ljava/lang/String; = "loc_book"


# instance fields
.field private allowUpdate:Ljava/lang/Boolean;

.field private chapterListSize:Ljava/lang/Integer;

.field private comicInfoBean:Lcom/wsw/cospa/bean/ComicInfoBean;

.field private customCoverPath:Ljava/lang/String;

.field private transient daoSession:Landroid/support/v4/hw;

.field private durChapter:Ljava/lang/Integer;

.field private durChapterName:Ljava/lang/String;

.field private durChapterPage:Ljava/lang/Integer;

.field private errorMsg:Ljava/lang/String;

.field private finalDate:Ljava/lang/Long;

.field private finalRefreshData:Ljava/lang/Long;

.field private group:Ljava/lang/Integer;

.field private groupBean:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

.field private transient groupBean__resolvedKey:Ljava/lang/Long;

.field private groupId:J

.field private hasUpdate:Ljava/lang/Boolean;

.field private isChecked:Z

.field private isLoading:Z

.field private lastChapterName:Ljava/lang/String;

.field private transient myDao:Lcom/wsw/cospa/dao/ComicShelfBeanDao;

.field private newChapters:Ljava/lang/Integer;

.field private noteUrl:Ljava/lang/String;

.field private readMode:Ljava/lang/Integer;

.field private serialNumber:Ljava/lang/Integer;

.field private tag:Ljava/lang/String;

.field private variable:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/bean/ComicShelfBean$3;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/ComicShelfBean$3;-><init>()V

    sput-object v0, Lcom/wsw/cospa/bean/ComicShelfBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapter:Ljava/lang/Integer;

    .line 3
    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapterPage:Ljava/lang/Integer;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->finalDate:Ljava/lang/Long;

    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->hasUpdate:Ljava/lang/Boolean;

    .line 6
    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->newChapters:Ljava/lang/Integer;

    .line 7
    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->serialNumber:Ljava/lang/Integer;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->finalRefreshData:Ljava/lang/Long;

    .line 9
    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->group:Ljava/lang/Integer;

    .line 10
    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->chapterListSize:Ljava/lang/Integer;

    .line 11
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->allowUpdate:Ljava/lang/Boolean;

    .line 12
    new-instance v1, Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-direct {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;-><init>()V

    iput-object v1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->comicInfoBean:Lcom/wsw/cospa/bean/ComicInfoBean;

    .line 13
    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->readMode:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .line 14
    const-class v0, Ljava/lang/Boolean;

    const-class v1, Ljava/lang/Long;

    const-class v2, Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapter:Ljava/lang/Integer;

    .line 16
    iput-object v4, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapterPage:Ljava/lang/Integer;

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->finalDate:Ljava/lang/Long;

    .line 18
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v5, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->hasUpdate:Ljava/lang/Boolean;

    .line 19
    iput-object v4, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->newChapters:Ljava/lang/Integer;

    .line 20
    iput-object v4, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->serialNumber:Ljava/lang/Integer;

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->finalRefreshData:Ljava/lang/Long;

    .line 22
    iput-object v4, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->group:Ljava/lang/Integer;

    .line 23
    iput-object v4, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->chapterListSize:Ljava/lang/Integer;

    .line 24
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v5, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->allowUpdate:Ljava/lang/Boolean;

    .line 25
    new-instance v5, Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-direct {v5}, Lcom/wsw/cospa/bean/ComicInfoBean;-><init>()V

    iput-object v5, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->comicInfoBean:Lcom/wsw/cospa/bean/ComicInfoBean;

    .line 26
    iput-object v4, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->readMode:Ljava/lang/Integer;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->errorMsg:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->isLoading:Z

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->noteUrl:Ljava/lang/String;

    .line 30
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iput-object v3, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapter:Ljava/lang/Integer;

    .line 31
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iput-object v3, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapterPage:Ljava/lang/Integer;

    .line 32
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    iput-object v3, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->finalDate:Ljava/lang/Long;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->hasUpdate:Ljava/lang/Boolean;

    .line 34
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iput-object v3, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->newChapters:Ljava/lang/Integer;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->tag:Ljava/lang/String;

    .line 36
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iput-object v3, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->serialNumber:Ljava/lang/Integer;

    .line 37
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->finalRefreshData:Ljava/lang/Long;

    .line 38
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->group:Ljava/lang/Integer;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapterName:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->lastChapterName:Ljava/lang/String;

    .line 41
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->chapterListSize:Ljava/lang/Integer;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->customCoverPath:Ljava/lang/String;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->allowUpdate:Ljava/lang/Boolean;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->variable:Ljava/lang/String;

    .line 45
    const-class v0, Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicInfoBean;

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->comicInfoBean:Lcom/wsw/cospa/bean/ComicInfoBean;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->groupId:J

    .line 47
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->readMode:Ljava/lang/Integer;

    .line 48
    const-class v0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->groupBean:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;JLjava/lang/Integer;)V
    .locals 4

    move-object v0, p0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapter:Ljava/lang/Integer;

    .line 51
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapterPage:Ljava/lang/Integer;

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->finalDate:Ljava/lang/Long;

    .line 53
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->hasUpdate:Ljava/lang/Boolean;

    .line 54
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->newChapters:Ljava/lang/Integer;

    .line 55
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->serialNumber:Ljava/lang/Integer;

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->finalRefreshData:Ljava/lang/Long;

    .line 57
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->group:Ljava/lang/Integer;

    .line 58
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->chapterListSize:Ljava/lang/Integer;

    .line 59
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->allowUpdate:Ljava/lang/Boolean;

    .line 60
    new-instance v2, Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-direct {v2}, Lcom/wsw/cospa/bean/ComicInfoBean;-><init>()V

    iput-object v2, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->comicInfoBean:Lcom/wsw/cospa/bean/ComicInfoBean;

    .line 61
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->readMode:Ljava/lang/Integer;

    move-object v1, p1

    .line 62
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->noteUrl:Ljava/lang/String;

    move-object v1, p2

    .line 63
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapter:Ljava/lang/Integer;

    move-object v1, p3

    .line 64
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapterPage:Ljava/lang/Integer;

    move-object v1, p4

    .line 65
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->finalDate:Ljava/lang/Long;

    move-object v1, p5

    .line 66
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->hasUpdate:Ljava/lang/Boolean;

    move-object v1, p6

    .line 67
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->newChapters:Ljava/lang/Integer;

    move-object v1, p7

    .line 68
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->tag:Ljava/lang/String;

    move-object v1, p8

    .line 69
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->serialNumber:Ljava/lang/Integer;

    move-object v1, p9

    .line 70
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->finalRefreshData:Ljava/lang/Long;

    move-object v1, p10

    .line 71
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->group:Ljava/lang/Integer;

    move-object v1, p11

    .line 72
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapterName:Ljava/lang/String;

    move-object/from16 v1, p12

    .line 73
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->lastChapterName:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 74
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->chapterListSize:Ljava/lang/Integer;

    move-object/from16 v1, p14

    .line 75
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->customCoverPath:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 76
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->allowUpdate:Ljava/lang/Boolean;

    move-object/from16 v1, p16

    .line 77
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->variable:Ljava/lang/String;

    move-wide/from16 v1, p17

    .line 78
    iput-wide v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->groupId:J

    move-object/from16 v1, p19

    .line 79
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->readMode:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public __setDaoSession(Landroid/support/v4/hw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->daoSession:Landroid/support/v4/hw;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->myDao:Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    return-void
.end method

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

    check-cast v0, Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->noteUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->noteUrl:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->tag:Ljava/lang/String;

    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->tag:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->comicInfoBean:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ComicInfoBean;

    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicShelfBean;->comicInfoBean:Lcom/wsw/cospa/bean/ComicInfoBean;

    return-object v0
.end method

.method public delete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->myDao:Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    const-string v1, "Entity is detached from DAO context"

    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->noteUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAllowUpdate()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->allowUpdate:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getChapter(I)Lcom/wsw/cospa/bean/ChapterListBean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->realChapterListEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ChapterListBean;

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapter:Ljava/lang/Integer;

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapter:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ChapterListBean;

    return-object p1

    .line 6
    :cond_2
    :goto_0
    new-instance p1, Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-direct {p1}, Lcom/wsw/cospa/bean/ChapterListBean;-><init>()V

    const-string v0, "\u6682\u65e0"

    .line 7
    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ChapterListBean;->setDurChapterName(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ChapterListBean;->setDurChapterUrl(Ljava/lang/String;)V

    return-object p1
.end method

.method public getChapterList(I)Lcom/wsw/cospa/bean/ChapterListBean;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ChapterListBean;

    return-object p1

    :cond_1
    :goto_0
    return-object v1
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

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChapterListSize()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->chapterListSize:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->comicInfoBean:Lcom/wsw/cospa/bean/ComicInfoBean;

    return-object v0
.end method

.method public getCoverHeader()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getVariableMap()Ljava/util/Map;

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

.method public getCustomCoverPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->customCoverPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDurChapter()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapter:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapter:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getDurChapterName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapterName:Ljava/lang/String;

    return-object v0
.end method

.method public getDurChapterPage()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapterPage:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapterPage:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getFinalDate()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->finalDate:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFinalRefreshData()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->finalRefreshData:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGroup()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->group:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getGroupBean()Lcom/wsw/cospa/bean/ComicShelfGroupBean;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->groupId:J

    .line 2
    iget-object v2, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->groupBean__resolvedKey:Ljava/lang/Long;

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->daoSession:Landroid/support/v4/hw;

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v2}, Landroid/support/v4/hw;->else()Lcom/wsw/cospa/dao/ComicShelfGroupBeanDao;

    move-result-object v2

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iput-object v2, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->groupBean:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->groupBean__resolvedKey:Ljava/lang/Long;

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->groupBean:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    return-object v0

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 12
    :cond_2
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    const-string v1, "Entity is detached from DAO context"

    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGroupId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->groupId:J

    return-wide v0
.end method

.method public getHasUpdate()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->hasUpdate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLastChapterName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->lastChapterName:Ljava/lang/String;

    return-object v0
.end method

.method public getNewChapters()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->newChapters:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getNoteUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->noteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReadMode()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->readMode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSerialNumber()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->serialNumber:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUnreadChapterNum()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterListSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getUrlHeader()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getVariableMap()Ljava/util/Map;

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
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->variable:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->variable:Ljava/lang/String;

    new-instance v2, Lcom/wsw/cospa/bean/ComicShelfBean$2;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/bean/ComicShelfBean$2;-><init>(Lcom/wsw/cospa/bean/ComicShelfBean;)V

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
    iget-boolean v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->isChecked:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->isLoading:Z

    return v0
.end method

.method public putVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->variable:Ljava/lang/String;

    new-instance v2, Lcom/wsw/cospa/bean/ComicShelfBean$1;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/bean/ComicShelfBean$1;-><init>(Lcom/wsw/cospa/bean/ComicShelfBean;)V

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

    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->variable:Ljava/lang/String;

    return-void
.end method

.method public realChapterListEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public refresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->myDao:Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->refresh(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    const-string v1, "Entity is detached from DAO context"

    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAllowUpdate(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->allowUpdate:Ljava/lang/Boolean;

    return-void
.end method

.method public setChapterList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->setChapterList(Ljava/util/List;)V

    return-void
.end method

.method public setChapterListSize(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->chapterListSize:Ljava/lang/Integer;

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->isChecked:Z

    return-void
.end method

.method public setComicInfoBean(Lcom/wsw/cospa/bean/ComicInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->comicInfoBean:Lcom/wsw/cospa/bean/ComicInfoBean;

    return-void
.end method

.method public setCustomCoverPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->customCoverPath:Ljava/lang/String;

    return-void
.end method

.method public setDurChapter(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapter:Ljava/lang/Integer;

    return-void
.end method

.method public setDurChapterName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapterName:Ljava/lang/String;

    return-void
.end method

.method public setDurChapterPage(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapterPage:Ljava/lang/Integer;

    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public setFinalDate(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->finalDate:Ljava/lang/Long;

    return-void
.end method

.method public setFinalRefreshData(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->finalRefreshData:Ljava/lang/Long;

    return-void
.end method

.method public setGroup(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->group:Ljava/lang/Integer;

    return-void
.end method

.method public setGroupBean(Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->groupBean:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    .line 3
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->groupId:J

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->groupBean__resolvedKey:Ljava/lang/Long;

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 6
    :cond_0
    new-instance p1, Lorg/greenrobot/greendao/DaoException;

    const-string v0, "To-one property \'groupId\' has not-null constraint; cannot set to-one to null"

    invoke-direct {p1, v0}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGroupId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->groupId:J

    return-void
.end method

.method public setHasUpdate(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->hasUpdate:Ljava/lang/Boolean;

    return-void
.end method

.method public setLastChapterName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->lastChapterName:Ljava/lang/String;

    return-void
.end method

.method public setLoading(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->isLoading:Z

    return-void
.end method

.method public setNewChapters(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->newChapters:Ljava/lang/Integer;

    return-void
.end method

.method public setNoteUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->noteUrl:Ljava/lang/String;

    return-void
.end method

.method public setReadMode(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->readMode:Ljava/lang/Integer;

    return-void
.end method

.method public setSerialNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->serialNumber:Ljava/lang/Integer;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->tag:Ljava/lang/String;

    return-void
.end method

.method public setVariable(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->variable:Ljava/lang/String;

    return-void
.end method

.method public upDurChapterName()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterListSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapter:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterListSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapter:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapterName:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterListSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapterName:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public upLastChapterName()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterListSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterListSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->lastChapterName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public update()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->myDao:Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    const-string v1, "Entity is detached from DAO context"

    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->errorMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->isLoading:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->noteUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapter:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapterPage:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->finalDate:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->hasUpdate:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->newChapters:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->serialNumber:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->finalRefreshData:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->group:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->durChapterName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->lastChapterName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->chapterListSize:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->customCoverPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->allowUpdate:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->variable:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->comicInfoBean:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 20
    iget-wide v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->groupId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 21
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->readMode:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfBean;->groupBean:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
