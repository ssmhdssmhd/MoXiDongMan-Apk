.class public Lcom/wsw/cospa/bean/ComicContentImgBean;
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
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_NULL:I = 0x0

.field public static final STATE_PAGE_1:I = 0x1

.field public static final STATE_PAGE_2:I = 0x2

.field private static count:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field private static final serialVersionUID:J = 0x20000060L


# instance fields
.field private chapterContentUrl:Ljava/lang/String;

.field private chapterIndex:I

.field private chapterText:Ljava/lang/String;

.field private customVariable:Ljava/lang/String;

.field private customVariableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:I

.field private imageUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private imgurl:Ljava/lang/String;

.field private indexPape:I

.field private isDownload:Z

.field private leftBitmap:Landroid/graphics/Bitmap;

.field private localPath:Ljava/lang/String;

.field private maxPage:I

.field private rightBitmap:Landroid/graphics/Bitmap;

.field private state:I

.field private tag:Ljava/lang/String;

.field private variable:Ljava/lang/String;

.field private variableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/wsw/cospa/bean/ComicContentImgBean;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    new-instance v0, Lcom/wsw/cospa/bean/ComicContentImgBean$3;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/ComicContentImgBean$3;-><init>()V

    sput-object v0, Lcom/wsw/cospa/bean/ComicContentImgBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->imageUrls:Ljava/util/List;

    .line 3
    sget-object v0, Lcom/wsw/cospa/bean/ComicContentImgBean;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->id:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->imageUrls:Ljava/util/List;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->imgurl:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->indexPape:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->maxPage:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->chapterIndex:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->chapterContentUrl:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->chapterText:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->variable:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->tag:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->isDownload:Z

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->localPath:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->state:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->imageUrls:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->imageUrls:Ljava/util/List;

    .line 34
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->imgurl:Ljava/lang/String;

    .line 35
    iput p2, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->indexPape:I

    .line 36
    iput p3, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->maxPage:I

    .line 37
    iput p4, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->chapterIndex:I

    .line 38
    iput-object p5, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->chapterContentUrl:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->chapterText:Ljava/lang/String;

    .line 40
    iput-object p7, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->variable:Ljava/lang/String;

    .line 41
    iput-object p8, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->customVariable:Ljava/lang/String;

    .line 42
    iput-object p9, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->tag:Ljava/lang/String;

    .line 43
    iput-boolean p10, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->isDownload:Z

    .line 44
    iput-object p11, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->localPath:Ljava/lang/String;

    .line 45
    iput p12, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->state:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->imageUrls:Ljava/util/List;

    .line 20
    sget-object v0, Lcom/wsw/cospa/bean/ComicContentImgBean;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->id:I

    .line 21
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->imgurl:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->indexPape:I

    .line 23
    iput p3, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->maxPage:I

    .line 24
    iput p4, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->chapterIndex:I

    .line 25
    iput-object p5, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->chapterContentUrl:Ljava/lang/String;

    .line 26
    iput-object p6, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->chapterText:Ljava/lang/String;

    .line 27
    iput-object p7, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->variable:Ljava/lang/String;

    .line 28
    iput-object p8, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->tag:Ljava/lang/String;

    .line 29
    iput-boolean p9, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->isDownload:Z

    .line 30
    iput-object p10, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->localPath:Ljava/lang/String;

    .line 31
    iput p11, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->state:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicContentImgBean;

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->imgurl:Ljava/lang/String;

    iget-object v1, p1, Lcom/wsw/cospa/bean/ComicContentImgBean;->imgurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getChapterContentUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/wsw/cospa/bean/ComicContentImgBean;->chapterContentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getChapterText()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/wsw/cospa/bean/ComicContentImgBean;->chapterText:Ljava/lang/String;

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

.method public getChapterContentUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->chapterContentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getChapterIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->chapterIndex:I

    return v0
.end method

.method public getChapterText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->chapterText:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverHeader()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getVariableMap()Ljava/util/Map;

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

.method public getCustomVariable()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->customVariable:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomVariableMap()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->customVariableMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->customVariable:Ljava/lang/String;

    new-instance v2, Lcom/wsw/cospa/bean/ComicContentImgBean$2;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/bean/ComicContentImgBean$2;-><init>(Lcom/wsw/cospa/bean/ComicContentImgBean;)V

    .line 3
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->id:I

    return v0
.end method

.method public getImgurl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->imgurl:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexPape()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->indexPape:I

    return v0
.end method

.method public getIsDownload()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->isDownload:Z

    return v0
.end method

.method public getLeftBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->leftBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->maxPage:I

    return v0
.end method

.method public getNoteUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRightBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->rightBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->state:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlHeader()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getVariableMap()Ljava/util/Map;

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
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->variable:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->variableMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->variable:Ljava/lang/String;

    new-instance v2, Lcom/wsw/cospa/bean/ComicContentImgBean$1;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/bean/ComicContentImgBean$1;-><init>(Lcom/wsw/cospa/bean/ComicContentImgBean;)V

    .line 3
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public isDownload()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->isDownload:Z

    return v0
.end method

.method public putCustomVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->customVariableMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->customVariableMap:Ljava/util/Map;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->customVariableMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->customVariableMap:Ljava/util/Map;

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->variable:Ljava/lang/String;

    return-void
.end method

.method public putVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->variableMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->variableMap:Ljava/util/Map;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->variableMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->variableMap:Ljava/util/Map;

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->variable:Ljava/lang/String;

    return-void
.end method

.method public setChapterContentUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->chapterContentUrl:Ljava/lang/String;

    return-void
.end method

.method public setChapterIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->chapterIndex:I

    return-void
.end method

.method public setChapterText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->chapterText:Ljava/lang/String;

    return-void
.end method

.method public setCustomVariable(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->customVariable:Ljava/lang/String;

    return-void
.end method

.method public setDownload(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->isDownload:Z

    return-void
.end method

.method public setImgurl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->imgurl:Ljava/lang/String;

    return-void
.end method

.method public setIndexPape(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->indexPape:I

    return-void
.end method

.method public setIsDownload(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->isDownload:Z

    return-void
.end method

.method public setLeftBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->leftBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->localPath:Ljava/lang/String;

    return-void
.end method

.method public setMaxPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->maxPage:I

    return-void
.end method

.method public setNoteUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setRightBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->rightBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->state:I

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->tag:Ljava/lang/String;

    return-void
.end method

.method public setVariable(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->variable:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->imgurl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->indexPape:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->maxPage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->chapterIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->chapterContentUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->chapterText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->variable:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-boolean p2, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->isDownload:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 10
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->localPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget p2, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->state:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicContentImgBean;->imageUrls:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
