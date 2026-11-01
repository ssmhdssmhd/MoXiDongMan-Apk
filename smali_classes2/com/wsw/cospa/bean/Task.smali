.class public Lcom/wsw/cospa/bean/Task;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/wsw/cospa/bean/Task;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_DOING:I = 0x3

.field public static final STATE_ERROR:I = 0x5

.field public static final STATE_FINISH:I = 0x0

.field public static final STATE_PARSE:I = 0x2

.field public static final STATE_PAUSE:I = 0x1

.field public static final STATE_WAIT:I = 0x4


# instance fields
.field private chapterId:Ljava/lang/String;

.field private comicInfoUrl:Ljava/lang/String;

.field private durChapterIndex:I

.field private durChapterName:Ljava/lang/String;

.field private durChapterUrl:Ljava/lang/String;

.field private end:Ljava/lang/Long;

.field private errorMessage:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private isChecked:Z

.field private key:Ljava/lang/String;

.field private max:I

.field private name:Ljava/lang/String;

.field private nextChapterUrl:Ljava/lang/String;

.field private noteUrl:Ljava/lang/String;

.field private parentIdString:Ljava/lang/String;

.field private parentNameString:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private progress:I

.field private source:Ljava/lang/String;

.field private start:Ljava/lang/Long;

.field private state:I

.field private tag:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private variable:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/bean/Task$1;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/Task$1;-><init>()V

    sput-object v0, Lcom/wsw/cospa/bean/Task;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/wsw/cospa/bean/Task;->nextChapterUrl:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/Task;->start:Ljava/lang/Long;

    .line 43
    iput-object v0, p0, Lcom/wsw/cospa/bean/Task;->end:Ljava/lang/Long;

    const-string v0, ""

    .line 44
    iput-object v0, p0, Lcom/wsw/cospa/bean/Task;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/wsw/cospa/bean/Task;->nextChapterUrl:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/Task;->start:Ljava/lang/Long;

    .line 4
    iput-object v0, p0, Lcom/wsw/cospa/bean/Task;->end:Ljava/lang/Long;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/bean/Task;->errorMessage:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/Task;->id:Ljava/lang/Long;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/Task;->key:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/Task;->path:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/Task;->title:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/wsw/cospa/bean/Task;->progress:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/wsw/cospa/bean/Task;->max:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/Task;->source:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/Task;->noteUrl:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/wsw/cospa/bean/Task;->state:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/Task;->name:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/wsw/cospa/bean/Task;->durChapterIndex:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/Task;->parentIdString:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/Task;->parentNameString:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/Task;->chapterId:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/Task;->durChapterUrl:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/Task;->durChapterName:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/Task;->nextChapterUrl:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/Task;->variable:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/Task;->tag:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/Task;->start:Ljava/lang/Long;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/Task;->end:Ljava/lang/Long;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/bean/Task;->comicInfoUrl:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/wsw/cospa/bean/Task;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/wsw/cospa/bean/Task;->nextChapterUrl:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/Task;->start:Ljava/lang/Long;

    .line 32
    iput-object v0, p0, Lcom/wsw/cospa/bean/Task;->end:Ljava/lang/Long;

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/wsw/cospa/bean/Task;->errorMessage:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/wsw/cospa/bean/Task;->id:Ljava/lang/Long;

    .line 35
    iput-object p2, p0, Lcom/wsw/cospa/bean/Task;->key:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/wsw/cospa/bean/Task;->path:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/wsw/cospa/bean/Task;->title:Ljava/lang/String;

    .line 38
    iput p5, p0, Lcom/wsw/cospa/bean/Task;->progress:I

    .line 39
    iput p6, p0, Lcom/wsw/cospa/bean/Task;->max:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object v0, p0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 46
    iput-object v1, v0, Lcom/wsw/cospa/bean/Task;->nextChapterUrl:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 47
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/wsw/cospa/bean/Task;->start:Ljava/lang/Long;

    .line 48
    iput-object v1, v0, Lcom/wsw/cospa/bean/Task;->end:Ljava/lang/Long;

    const-string v1, ""

    .line 49
    iput-object v1, v0, Lcom/wsw/cospa/bean/Task;->errorMessage:Ljava/lang/String;

    move-object v1, p1

    .line 50
    iput-object v1, v0, Lcom/wsw/cospa/bean/Task;->id:Ljava/lang/Long;

    move-object v1, p2

    .line 51
    iput-object v1, v0, Lcom/wsw/cospa/bean/Task;->key:Ljava/lang/String;

    move-object v1, p3

    .line 52
    iput-object v1, v0, Lcom/wsw/cospa/bean/Task;->path:Ljava/lang/String;

    move-object v1, p4

    .line 53
    iput-object v1, v0, Lcom/wsw/cospa/bean/Task;->title:Ljava/lang/String;

    move v1, p5

    .line 54
    iput v1, v0, Lcom/wsw/cospa/bean/Task;->progress:I

    move v1, p6

    .line 55
    iput v1, v0, Lcom/wsw/cospa/bean/Task;->max:I

    move-object v1, p7

    .line 56
    iput-object v1, v0, Lcom/wsw/cospa/bean/Task;->source:Ljava/lang/String;

    move-object v1, p8

    .line 57
    iput-object v1, v0, Lcom/wsw/cospa/bean/Task;->noteUrl:Ljava/lang/String;

    move v1, p9

    .line 58
    iput v1, v0, Lcom/wsw/cospa/bean/Task;->state:I

    move-object v1, p10

    .line 59
    iput-object v1, v0, Lcom/wsw/cospa/bean/Task;->name:Ljava/lang/String;

    move v1, p11

    .line 60
    iput v1, v0, Lcom/wsw/cospa/bean/Task;->durChapterIndex:I

    move-object v1, p12

    .line 61
    iput-object v1, v0, Lcom/wsw/cospa/bean/Task;->parentIdString:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 62
    iput-object v1, v0, Lcom/wsw/cospa/bean/Task;->parentNameString:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 63
    iput-object v1, v0, Lcom/wsw/cospa/bean/Task;->chapterId:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 64
    iput-object v1, v0, Lcom/wsw/cospa/bean/Task;->durChapterUrl:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 65
    iput-object v1, v0, Lcom/wsw/cospa/bean/Task;->durChapterName:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 66
    iput-object v1, v0, Lcom/wsw/cospa/bean/Task;->nextChapterUrl:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 67
    iput-object v1, v0, Lcom/wsw/cospa/bean/Task;->variable:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 68
    iput-object v1, v0, Lcom/wsw/cospa/bean/Task;->tag:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 69
    iput-object v1, v0, Lcom/wsw/cospa/bean/Task;->start:Ljava/lang/Long;

    move-object/from16 v1, p21

    .line 70
    iput-object v1, v0, Lcom/wsw/cospa/bean/Task;->end:Ljava/lang/Long;

    move-object/from16 v1, p22

    .line 71
    iput-object v1, v0, Lcom/wsw/cospa/bean/Task;->comicInfoUrl:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 72
    iput-object v1, v0, Lcom/wsw/cospa/bean/Task;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/wsw/cospa/bean/Task;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/wsw/cospa/bean/Task;

    iget-object p1, p1, Lcom/wsw/cospa/bean/Task;->id:Ljava/lang/Long;

    iget-object v0, p0, Lcom/wsw/cospa/bean/Task;->id:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getChapterId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/Task;->chapterId:Ljava/lang/String;

    return-object v0
.end method

.method public getComicInfoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/Task;->comicInfoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDurChapterIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/Task;->durChapterIndex:I

    return v0
.end method

.method public getDurChapterName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/Task;->durChapterName:Ljava/lang/String;

    return-object v0
.end method

.method public getDurChapterUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/Task;->durChapterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/Task;->end:Ljava/lang/Long;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/Task;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/Task;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/Task;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/Task;->max:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/Task;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextChapterUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/Task;->nextChapterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNoteUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/Task;->noteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getParentIdString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/Task;->parentIdString:Ljava/lang/String;

    return-object v0
.end method

.method public getParentNameString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/Task;->parentNameString:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/Task;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/Task;->progress:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/Task;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/Task;->start:Ljava/lang/Long;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/Task;->state:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/Task;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/Task;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVariable()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/Task;->variable:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/Task;->id:Ljava/lang/Long;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/bean/Task;->isChecked:Z

    return v0
.end method

.method public isFinish()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/Task;->max:I

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/wsw/cospa/bean/Task;->progress:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setChapterId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/Task;->chapterId:Ljava/lang/String;

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/bean/Task;->isChecked:Z

    return-void
.end method

.method public setComicInfoUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/Task;->comicInfoUrl:Ljava/lang/String;

    return-void
.end method

.method public setDurChapterIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/bean/Task;->durChapterIndex:I

    return-void
.end method

.method public setDurChapterName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/Task;->durChapterName:Ljava/lang/String;

    return-void
.end method

.method public setDurChapterUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/Task;->durChapterUrl:Ljava/lang/String;

    return-void
.end method

.method public setEnd(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/Task;->end:Ljava/lang/Long;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/Task;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/Task;->id:Ljava/lang/Long;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/Task;->key:Ljava/lang/String;

    return-void
.end method

.method public setMax(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/bean/Task;->max:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/Task;->name:Ljava/lang/String;

    return-void
.end method

.method public setNextChapterUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/Task;->nextChapterUrl:Ljava/lang/String;

    return-void
.end method

.method public setNoteUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/Task;->noteUrl:Ljava/lang/String;

    return-void
.end method

.method public setParentIdString(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/Task;->parentIdString:Ljava/lang/String;

    return-void
.end method

.method public setParentNameString(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/Task;->parentNameString:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/Task;->path:Ljava/lang/String;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/bean/Task;->progress:I

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/Task;->source:Ljava/lang/String;

    return-void
.end method

.method public setStart(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/Task;->start:Ljava/lang/Long;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/bean/Task;->state:I

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/Task;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/Task;->title:Ljava/lang/String;

    return-void
.end method

.method public setVariable(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/Task;->variable:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/bean/Task;->id:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/bean/Task;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/wsw/cospa/bean/Task;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/wsw/cospa/bean/Task;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lcom/wsw/cospa/bean/Task;->progress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/wsw/cospa/bean/Task;->max:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p2, p0, Lcom/wsw/cospa/bean/Task;->source:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/wsw/cospa/bean/Task;->noteUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget p2, p0, Lcom/wsw/cospa/bean/Task;->state:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object p2, p0, Lcom/wsw/cospa/bean/Task;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget p2, p0, Lcom/wsw/cospa/bean/Task;->durChapterIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-object p2, p0, Lcom/wsw/cospa/bean/Task;->parentIdString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/wsw/cospa/bean/Task;->parentNameString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/wsw/cospa/bean/Task;->chapterId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/wsw/cospa/bean/Task;->durChapterUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lcom/wsw/cospa/bean/Task;->durChapterName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    iget-object p2, p0, Lcom/wsw/cospa/bean/Task;->nextChapterUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lcom/wsw/cospa/bean/Task;->variable:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/wsw/cospa/bean/Task;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/wsw/cospa/bean/Task;->start:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 21
    iget-object p2, p0, Lcom/wsw/cospa/bean/Task;->end:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 22
    iget-object p2, p0, Lcom/wsw/cospa/bean/Task;->comicInfoUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Lcom/wsw/cospa/bean/Task;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
