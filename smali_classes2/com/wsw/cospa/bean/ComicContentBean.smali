.class public Lcom/wsw/cospa/bean/ComicContentBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/wsw/cospa/bean/ComicContentBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private durChapterIndex:I

.field private durChapterUrl:Ljava/lang/String;

.field private durContentUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;"
        }
    .end annotation
.end field

.field private noteUrl:Ljava/lang/String;

.field private tag:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/bean/ComicContentBean$1;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/ComicContentBean$1;-><init>()V

    sput-object v0, Lcom/wsw/cospa/bean/ComicContentBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicContentBean;->durContentUrl:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicContentBean;->durContentUrl:Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicContentBean;->noteUrl:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicContentBean;->durChapterUrl:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/bean/ComicContentBean;->durChapterIndex:I

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicContentBean;->durContentUrl:Ljava/util/List;

    .line 9
    const-class v1, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicContentBean;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicContentBean;->durContentUrl:Ljava/util/List;

    .line 13
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicContentBean;->noteUrl:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/wsw/cospa/bean/ComicContentBean;->durChapterUrl:Ljava/lang/String;

    .line 15
    iput p3, p0, Lcom/wsw/cospa/bean/ComicContentBean;->durChapterIndex:I

    .line 16
    iput-object p4, p0, Lcom/wsw/cospa/bean/ComicContentBean;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDurChapterIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/ComicContentBean;->durChapterIndex:I

    return v0
.end method

.method public getDurChapterUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicContentBean;->durChapterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDurContentUrl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicContentBean;->durContentUrl:Ljava/util/List;

    return-object v0
.end method

.method public getNoteUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicContentBean;->noteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicContentBean;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public setDurChapterIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/bean/ComicContentBean;->durChapterIndex:I

    return-void
.end method

.method public setDurChapterUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicContentBean;->durChapterUrl:Ljava/lang/String;

    return-void
.end method

.method public setDurContentUrl(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicContentBean;->durContentUrl:Ljava/util/List;

    return-void
.end method

.method public setNoteUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicContentBean;->noteUrl:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicContentBean;->tag:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicContentBean;->noteUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicContentBean;->durChapterUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/wsw/cospa/bean/ComicContentBean;->durChapterIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicContentBean;->durContentUrl:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 5
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicContentBean;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
