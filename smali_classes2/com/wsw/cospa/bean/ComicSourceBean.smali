.class public Lcom/wsw/cospa/bean/ComicSourceBean;
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
            "Lcom/wsw/cospa/bean/ComicSourceBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bookDelayTime:Ljava/lang/String;

.field private bookSingleThread:Ljava/lang/String;

.field private bookSourceGroup:Ljava/lang/String;

.field private bookSourceName:Ljava/lang/String;

.field private bookSourceType:Ljava/lang/String;

.field private bookSourceUrl:Ljava/lang/String;

.field private checkUrl:Ljava/lang/String;

.field private enable:Z

.field private transient groupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpUserAgent:Ljava/lang/String;

.field private lastUpdateTime:Ljava/lang/Long;

.field private loginUrl:Ljava/lang/String;

.field private loginUrlResult:Ljava/lang/String;

.field private ruleBookAuthor:Ljava/lang/String;

.field private ruleBookContent:Ljava/lang/String;

.field private ruleBookContentDecoder:Ljava/lang/String;

.field private ruleBookKind:Ljava/lang/String;

.field private ruleBookLastChapter:Ljava/lang/String;

.field private ruleBookName:Ljava/lang/String;

.field private ruleBookUrlPattern:Ljava/lang/String;

.field private ruleChapterId:Ljava/lang/String;

.field private ruleChapterList:Ljava/lang/String;

.field private ruleChapterName:Ljava/lang/String;

.field private ruleChapterParentId:Ljava/lang/String;

.field private ruleChapterParentName:Ljava/lang/String;

.field private ruleChapterUrl:Ljava/lang/String;

.field private ruleChapterUrlNext:Ljava/lang/String;

.field private ruleContentUrl:Ljava/lang/String;

.field private ruleContentUrlNext:Ljava/lang/String;

.field private ruleCoverUrl:Ljava/lang/String;

.field private ruleFindUrl:Ljava/lang/String;

.field private ruleIntroduce:Ljava/lang/String;

.field private ruleSearchAuthor:Ljava/lang/String;

.field private ruleSearchCoverUrl:Ljava/lang/String;

.field private ruleSearchKind:Ljava/lang/String;

.field private ruleSearchLastChapter:Ljava/lang/String;

.field private ruleSearchList:Ljava/lang/String;

.field private ruleSearchName:Ljava/lang/String;

.field private ruleSearchNoteUrl:Ljava/lang/String;

.field private ruleSearchUrl:Ljava/lang/String;

.field private ruleSearchUrlNext:Ljava/lang/String;

.field private serialNumber:I

.field private sourceRemark:Ljava/lang/String;

.field private weight:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/bean/ComicSourceBean$1;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/ComicSourceBean$1;-><init>()V

    sput-object v0, Lcom/wsw/cospa/bean/ComicSourceBean;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->lastUpdateTime:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->weight:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->lastUpdateTime:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->weight:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceType:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSingleThread:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookDelayTime:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceUrl:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceName:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceGroup:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->checkUrl:Ljava/lang/String;

    .line 14
    const-class v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->lastUpdateTime:Ljava/lang/Long;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->serialNumber:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->weight:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->enable:Z

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleFindUrl:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchUrl:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchList:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchUrlNext:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchName:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchAuthor:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchKind:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchLastChapter:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchCoverUrl:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchNoteUrl:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookName:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookAuthor:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterId:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterUrl:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterUrlNext:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterParentId:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterParentName:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleCoverUrl:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleIntroduce:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterList:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterName:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleContentUrl:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleContentUrlNext:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookContent:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookContentDecoder:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->httpUserAgent:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookKind:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookLastChapter:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookUrlPattern:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->loginUrl:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->loginUrlResult:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->sourceRemark:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object v0, p0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    .line 51
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->lastUpdateTime:Ljava/lang/Long;

    const/4 v1, 0x0

    .line 52
    iput v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->weight:I

    move-object v1, p1

    .line 53
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceType:Ljava/lang/String;

    move-object v1, p2

    .line 54
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSingleThread:Ljava/lang/String;

    move-object v1, p3

    .line 55
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookDelayTime:Ljava/lang/String;

    move-object v1, p4

    .line 56
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceUrl:Ljava/lang/String;

    move-object v1, p5

    .line 57
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceName:Ljava/lang/String;

    move-object v1, p6

    .line 58
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceGroup:Ljava/lang/String;

    move-object v1, p7

    .line 59
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->checkUrl:Ljava/lang/String;

    move-object v1, p8

    .line 60
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->lastUpdateTime:Ljava/lang/Long;

    move v1, p9

    .line 61
    iput v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->serialNumber:I

    move v1, p10

    .line 62
    iput v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->weight:I

    move v1, p11

    .line 63
    iput-boolean v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->enable:Z

    move-object v1, p12

    .line 64
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleFindUrl:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 65
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchUrl:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 66
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchList:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 67
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchUrlNext:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 68
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchName:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 69
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchAuthor:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 70
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchKind:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 71
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchLastChapter:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 72
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchCoverUrl:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 73
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchNoteUrl:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 74
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookName:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 75
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookAuthor:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 76
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterId:Ljava/lang/String;

    move-object/from16 v1, p25

    .line 77
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterUrl:Ljava/lang/String;

    move-object/from16 v1, p26

    .line 78
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterUrlNext:Ljava/lang/String;

    move-object/from16 v1, p27

    .line 79
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterParentId:Ljava/lang/String;

    move-object/from16 v1, p28

    .line 80
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterParentName:Ljava/lang/String;

    move-object/from16 v1, p29

    .line 81
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleCoverUrl:Ljava/lang/String;

    move-object/from16 v1, p30

    .line 82
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleIntroduce:Ljava/lang/String;

    move-object/from16 v1, p31

    .line 83
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterList:Ljava/lang/String;

    move-object/from16 v1, p32

    .line 84
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterName:Ljava/lang/String;

    move-object/from16 v1, p33

    .line 85
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleContentUrl:Ljava/lang/String;

    move-object/from16 v1, p34

    .line 86
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleContentUrlNext:Ljava/lang/String;

    move-object/from16 v1, p35

    .line 87
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookContent:Ljava/lang/String;

    move-object/from16 v1, p36

    .line 88
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookContentDecoder:Ljava/lang/String;

    move-object/from16 v1, p37

    .line 89
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->httpUserAgent:Ljava/lang/String;

    move-object/from16 v1, p38

    .line 90
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookKind:Ljava/lang/String;

    move-object/from16 v1, p39

    .line 91
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookLastChapter:Ljava/lang/String;

    move-object/from16 v1, p40

    .line 92
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookUrlPattern:Ljava/lang/String;

    move-object/from16 v1, p41

    .line 93
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->loginUrl:Ljava/lang/String;

    move-object/from16 v1, p42

    .line 94
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->loginUrlResult:Ljava/lang/String;

    move-object/from16 v1, p43

    .line 95
    iput-object v1, v0, Lcom/wsw/cospa/bean/ComicSourceBean;->sourceRemark:Ljava/lang/String;

    return-void
.end method

.method private stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private upGroupList()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->groupList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->groupList:Ljava/util/ArrayList;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceGroup:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceGroup:Ljava/lang/String;

    const-string v1, "\\s*[,;\uff0c\uff1b]\\s*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 6
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    iget-object v4, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public addGroup(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->groupList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/bean/ComicSourceBean;->upGroupList()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicSourceBean;->updateModTime()V

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->groupList:Ljava/util/ArrayList;

    const-string v0, "; "

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceGroup:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public containsGroup(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->groupList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/bean/ComicSourceBean;->upGroupList()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/wsw/cospa/bean/ComicSourceBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceType:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceType:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceUrl:Ljava/lang/String;

    .line 4
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceName:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceName:Ljava/lang/String;

    .line 5
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceGroup:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceGroup:Ljava/lang/String;

    .line 6
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookName:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookName:Ljava/lang/String;

    .line 7
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookAuthor:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookAuthor:Ljava/lang/String;

    .line 8
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterId:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterId:Ljava/lang/String;

    .line 9
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterUrl:Ljava/lang/String;

    .line 10
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterUrlNext:Ljava/lang/String;

    .line 11
    invoke-direct {p0, v0, v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleCoverUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleCoverUrl:Ljava/lang/String;

    .line 12
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleIntroduce:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleIntroduce:Ljava/lang/String;

    .line 13
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterList:Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, ""

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterList:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    iget-object v4, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterList:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterName:Ljava/lang/String;

    iget-object v4, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterName:Ljava/lang/String;

    .line 15
    invoke-direct {p0, v0, v4}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleContentUrl:Ljava/lang/String;

    iget-object v4, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleContentUrl:Ljava/lang/String;

    .line 16
    invoke-direct {p0, v0, v4}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleContentUrlNext:Ljava/lang/String;

    iget-object v4, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleContentUrlNext:Ljava/lang/String;

    .line 17
    invoke-direct {p0, v0, v4}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterParentId:Ljava/lang/String;

    iget-object v4, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterParentId:Ljava/lang/String;

    .line 18
    invoke-direct {p0, v0, v4}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterParentName:Ljava/lang/String;

    iget-object v4, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterParentName:Ljava/lang/String;

    .line 19
    invoke-direct {p0, v0, v4}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookContent:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookContent:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    iget-object v4, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookContent:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookContentDecoder:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookContentDecoder:Ljava/lang/String;

    .line 21
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchUrl:Ljava/lang/String;

    .line 22
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchList:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchList:Ljava/lang/String;

    .line 23
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchUrlNext:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchUrlNext:Ljava/lang/String;

    .line 24
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchName:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchName:Ljava/lang/String;

    .line 25
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchAuthor:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchAuthor:Ljava/lang/String;

    .line 26
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchKind:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchKind:Ljava/lang/String;

    .line 27
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchLastChapter:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchLastChapter:Ljava/lang/String;

    .line 28
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchCoverUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchCoverUrl:Ljava/lang/String;

    .line 29
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchNoteUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchNoteUrl:Ljava/lang/String;

    .line 30
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->httpUserAgent:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->httpUserAgent:Ljava/lang/String;

    .line 31
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookKind:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookKind:Ljava/lang/String;

    .line 32
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookLastChapter:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookLastChapter:Ljava/lang/String;

    .line 33
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookUrlPattern:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookUrlPattern:Ljava/lang/String;

    .line 34
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->checkUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->checkUrl:Ljava/lang/String;

    .line 35
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->loginUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->loginUrl:Ljava/lang/String;

    .line 36
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->loginUrlResult:Ljava/lang/String;

    iget-object v2, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->loginUrlResult:Ljava/lang/String;

    .line 37
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->sourceRemark:Ljava/lang/String;

    iget-object p1, p1, Lcom/wsw/cospa/bean/ComicSourceBean;->sourceRemark:Ljava/lang/String;

    .line 38
    invoke-direct {p0, v0, p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getBookDelayTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookDelayTime:Ljava/lang/String;

    return-object v0
.end method

.method public getBookSingleThread()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSingleThread:Ljava/lang/String;

    return-object v0
.end method

.method public getBookSourceGroup()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getBookSourceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getBookSourceType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u6f2b\u753b"

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceType:Ljava/lang/String;

    return-object v0
.end method

.method public getBookSourceUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->checkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDelayTime()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookDelayTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookDelayTime:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->enable:Z

    return v0
.end method

.method public getHttpUserAgent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->httpUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateTime()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->lastUpdateTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getLoginUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->loginUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginUrlResult()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->loginUrlResult:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleBookAuthor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleBookContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookContent:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleBookContentDecoder()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookContentDecoder:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleBookKind()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookKind:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleBookLastChapter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookLastChapter:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleBookName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookName:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleBookUrlPattern()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookUrlPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleChapterId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterId:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleChapterList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterList:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleChapterName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterName:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleChapterParentId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterParentId:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleChapterParentName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterParentName:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleChapterUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleChapterUrlNext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterUrlNext:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleContentUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleContentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleContentUrlNext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleContentUrlNext:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleCoverUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleCoverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleFindUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleFindUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleIntroduce()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleIntroduce:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleSearchAuthor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleSearchCoverUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchCoverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleSearchKind()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchKind:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleSearchLastChapter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchLastChapter:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleSearchList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchList:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleSearchName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchName:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleSearchNoteUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchNoteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleSearchUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleSearchUrlNext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchUrlNext:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->serialNumber:I

    return v0
.end method

.method public getSingleThreadType()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSingleThread:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSingleThread:Ljava/lang/String;

    const-string v1, "\u5426"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getSourceRemark()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->sourceRemark:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->weight:I

    return v0
.end method

.method public increaseWeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->weight:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->weight:I

    return-void
.end method

.method public increaseWeightBySelection()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->weight:I

    add-int/lit16 v0, v0, 0x1f4

    iput v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->weight:I

    return-void
.end method

.method public removeGroup(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->groupList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/bean/ComicSourceBean;->upGroupList()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicSourceBean;->updateModTime()V

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->groupList:Ljava/util/ArrayList;

    const-string v0, "; "

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceGroup:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setBookDelayTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookDelayTime:Ljava/lang/String;

    return-void
.end method

.method public setBookSingleThread(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSingleThread:Ljava/lang/String;

    return-void
.end method

.method public setBookSourceGroup(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceGroup:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/bean/ComicSourceBean;->upGroupList()V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->groupList:Ljava/util/ArrayList;

    const-string v0, "; "

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceGroup:Ljava/lang/String;

    return-void
.end method

.method public setBookSourceName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceName:Ljava/lang/String;

    return-void
.end method

.method public setBookSourceType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceType:Ljava/lang/String;

    return-void
.end method

.method public setBookSourceUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceUrl:Ljava/lang/String;

    return-void
.end method

.method public setCheckUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->checkUrl:Ljava/lang/String;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->enable:Z

    return-void
.end method

.method public setHttpUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->httpUserAgent:Ljava/lang/String;

    return-void
.end method

.method public setLastUpdateTime(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->lastUpdateTime:Ljava/lang/Long;

    return-void
.end method

.method public setLoginUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->loginUrl:Ljava/lang/String;

    return-void
.end method

.method public setLoginUrlResult(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->loginUrlResult:Ljava/lang/String;

    return-void
.end method

.method public setRuleBookAuthor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookAuthor:Ljava/lang/String;

    return-void
.end method

.method public setRuleBookContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookContent:Ljava/lang/String;

    return-void
.end method

.method public setRuleBookContentDecoder(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookContentDecoder:Ljava/lang/String;

    return-void
.end method

.method public setRuleBookKind(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookKind:Ljava/lang/String;

    return-void
.end method

.method public setRuleBookLastChapter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookLastChapter:Ljava/lang/String;

    return-void
.end method

.method public setRuleBookName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookName:Ljava/lang/String;

    return-void
.end method

.method public setRuleBookUrlPattern(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookUrlPattern:Ljava/lang/String;

    return-void
.end method

.method public setRuleChapterId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterId:Ljava/lang/String;

    return-void
.end method

.method public setRuleChapterList(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterList:Ljava/lang/String;

    return-void
.end method

.method public setRuleChapterName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterName:Ljava/lang/String;

    return-void
.end method

.method public setRuleChapterParentId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterParentId:Ljava/lang/String;

    return-void
.end method

.method public setRuleChapterParentName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterParentName:Ljava/lang/String;

    return-void
.end method

.method public setRuleChapterUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterUrl:Ljava/lang/String;

    return-void
.end method

.method public setRuleChapterUrlNext(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterUrlNext:Ljava/lang/String;

    return-void
.end method

.method public setRuleContentUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleContentUrl:Ljava/lang/String;

    return-void
.end method

.method public setRuleContentUrlNext(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleContentUrlNext:Ljava/lang/String;

    return-void
.end method

.method public setRuleCoverUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleCoverUrl:Ljava/lang/String;

    return-void
.end method

.method public setRuleFindUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleFindUrl:Ljava/lang/String;

    return-void
.end method

.method public setRuleIntroduce(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleIntroduce:Ljava/lang/String;

    return-void
.end method

.method public setRuleSearchAuthor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchAuthor:Ljava/lang/String;

    return-void
.end method

.method public setRuleSearchCoverUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchCoverUrl:Ljava/lang/String;

    return-void
.end method

.method public setRuleSearchKind(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchKind:Ljava/lang/String;

    return-void
.end method

.method public setRuleSearchLastChapter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchLastChapter:Ljava/lang/String;

    return-void
.end method

.method public setRuleSearchList(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchList:Ljava/lang/String;

    return-void
.end method

.method public setRuleSearchName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchName:Ljava/lang/String;

    return-void
.end method

.method public setRuleSearchNoteUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchNoteUrl:Ljava/lang/String;

    return-void
.end method

.method public setRuleSearchUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchUrl:Ljava/lang/String;

    return-void
.end method

.method public setRuleSearchUrlNext(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchUrlNext:Ljava/lang/String;

    return-void
.end method

.method public setSerialNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->serialNumber:I

    return-void
.end method

.method public setSourceRemark(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->sourceRemark:Ljava/lang/String;

    return-void
.end method

.method public setWeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->weight:I

    return-void
.end method

.method public updateModTime()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->lastUpdateTime:Ljava/lang/Long;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSingleThread:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookDelayTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->bookSourceGroup:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->checkUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->lastUpdateTime:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 9
    iget p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->serialNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->weight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget-boolean p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->enable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 12
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleFindUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchList:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchUrlNext:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchAuthor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchKind:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchLastChapter:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchCoverUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleSearchNoteUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookAuthor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterUrlNext:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterParentId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterParentName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleCoverUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleIntroduce:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterList:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleChapterName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleContentUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleContentUrlNext:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookContent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookContentDecoder:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->httpUserAgent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookKind:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookLastChapter:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->ruleBookUrlPattern:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->loginUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->loginUrlResult:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicSourceBean;->sourceRemark:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
