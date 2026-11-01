.class public Lcom/wsw/cospa/bean/RipeFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/wsw/cospa/bean/RipeFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private childCount:Ljava/lang/Integer;

.field private currPagePath:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private file:Ljava/io/File;

.field private indexPape:I

.field private isDirectory:Ljava/lang/Boolean;

.field private isSelected:Z

.field private maxPage:I

.field private name:Ljava/lang/String;

.field private parentName:Ljava/lang/String;

.field private parentPath:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private rootPath:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private suffix:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/bean/RipeFile$1;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/RipeFile$1;-><init>()V

    sput-object v0, Lcom/wsw/cospa/bean/RipeFile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/wsw/cospa/bean/RipeFile;->isSelected:Z

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->file:Ljava/io/File;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->name:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->size:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->date:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->suffix:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->path:Ljava/lang/String;

    .line 25
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->isDirectory:Ljava/lang/Boolean;

    .line 26
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->childCount:Ljava/lang/Integer;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/bean/RipeFile;->indexPape:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/bean/RipeFile;->maxPage:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->parentName:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->parentPath:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->currPagePath:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/bean/RipeFile;->rootPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/wsw/cospa/bean/RipeFile;->isSelected:Z

    .line 4
    iput-object p2, p0, Lcom/wsw/cospa/bean/RipeFile;->name:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/wsw/cospa/bean/RipeFile;->size:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/wsw/cospa/bean/RipeFile;->date:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/wsw/cospa/bean/RipeFile;->suffix:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/wsw/cospa/bean/RipeFile;->path:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/wsw/cospa/bean/RipeFile;->isDirectory:Ljava/lang/Boolean;

    .line 10
    iput-object p8, p0, Lcom/wsw/cospa/bean/RipeFile;->childCount:Ljava/lang/Integer;

    .line 11
    iput p9, p0, Lcom/wsw/cospa/bean/RipeFile;->indexPape:I

    .line 12
    iput p10, p0, Lcom/wsw/cospa/bean/RipeFile;->maxPage:I

    .line 13
    iput-object p11, p0, Lcom/wsw/cospa/bean/RipeFile;->parentName:Ljava/lang/String;

    .line 14
    iput-object p12, p0, Lcom/wsw/cospa/bean/RipeFile;->parentPath:Ljava/lang/String;

    .line 15
    iput-object p13, p0, Lcom/wsw/cospa/bean/RipeFile;->currPagePath:Ljava/lang/String;

    .line 16
    iput-object p14, p0, Lcom/wsw/cospa/bean/RipeFile;->rootPath:Ljava/lang/String;

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
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/wsw/cospa/bean/RipeFile;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/wsw/cospa/bean/RipeFile;

    iget-object p1, p1, Lcom/wsw/cospa/bean/RipeFile;->path:Ljava/lang/String;

    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->path:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public exists()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/RipeFile;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChildCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->childCount:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    array-length v0, v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->childCount:Ljava/lang/Integer;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->childCount:Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    return v1
.end method

.method public getCurrPagePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->currPagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->date:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-string v2, "yyyy-MM-dd"

    invoke-static {v0, v1, v2}, Landroid/support/v4/l22;->for(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->date:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public getIndexPape()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/RipeFile;->indexPape:I

    return v0
.end method

.method public getIsDirectory()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->isDirectory:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsSelected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/bean/RipeFile;->isSelected:Z

    return v0
.end method

.method public getMaxPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/RipeFile;->maxPage:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->name:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->parentName:Ljava/lang/String;

    return-object v0
.end method

.method public getParentPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->parentPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->path:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRootPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->rootPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->size:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/default;->catch(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->size:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->suffix:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/wsw/cospa/utils/default;->class(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->suffix:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->isDirectory:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->isDirectory:Ljava/lang/Boolean;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/bean/RipeFile;->isDirectory:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/bean/RipeFile;->isSelected:Z

    return v0
.end method

.method public setChildCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/RipeFile;->childCount:Ljava/lang/Integer;

    return-void
.end method

.method public setCurrPagePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/RipeFile;->currPagePath:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/RipeFile;->date:Ljava/lang/String;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/RipeFile;->file:Ljava/io/File;

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/bean/RipeFile;->path:Ljava/lang/String;

    return-void
.end method

.method public setIndexPape(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/bean/RipeFile;->indexPape:I

    return-void
.end method

.method public setIsDirectory(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/RipeFile;->isDirectory:Ljava/lang/Boolean;

    return-void
.end method

.method public setIsSelected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/bean/RipeFile;->isSelected:Z

    return-void
.end method

.method public setMaxPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/bean/RipeFile;->maxPage:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/RipeFile;->name:Ljava/lang/String;

    return-void
.end method

.method public setParentName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/RipeFile;->parentName:Ljava/lang/String;

    return-void
.end method

.method public setParentPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/RipeFile;->parentPath:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/RipeFile;->path:Ljava/lang/String;

    return-void
.end method

.method public setRootPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/RipeFile;->rootPath:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/bean/RipeFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/wsw/cospa/bean/RipeFile;->isSelected:Z

    :cond_0
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/RipeFile;->size:Ljava/lang/String;

    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/RipeFile;->suffix:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/wsw/cospa/bean/RipeFile;->isSelected:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/bean/RipeFile;->file:Ljava/io/File;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 3
    iget-object p2, p0, Lcom/wsw/cospa/bean/RipeFile;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/wsw/cospa/bean/RipeFile;->size:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/wsw/cospa/bean/RipeFile;->date:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/wsw/cospa/bean/RipeFile;->suffix:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/wsw/cospa/bean/RipeFile;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/wsw/cospa/bean/RipeFile;->isDirectory:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 9
    iget-object p2, p0, Lcom/wsw/cospa/bean/RipeFile;->childCount:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 10
    iget p2, p0, Lcom/wsw/cospa/bean/RipeFile;->indexPape:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget p2, p0, Lcom/wsw/cospa/bean/RipeFile;->maxPage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-object p2, p0, Lcom/wsw/cospa/bean/RipeFile;->parentName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/wsw/cospa/bean/RipeFile;->parentPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/wsw/cospa/bean/RipeFile;->currPagePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/wsw/cospa/bean/RipeFile;->rootPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
