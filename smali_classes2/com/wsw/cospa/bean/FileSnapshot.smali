.class public Lcom/wsw/cospa/bean/FileSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/wsw/cospa/bean/FileSnapshot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/RipeFile;",
            ">;"
        }
    .end annotation
.end field

.field private parent:Lcom/wsw/cospa/bean/RipeFile;

.field private scrollOffset:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/bean/FileSnapshot$1;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/FileSnapshot$1;-><init>()V

    sput-object v0, Lcom/wsw/cospa/bean/FileSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-class v0, Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/RipeFile;

    iput-object v0, p0, Lcom/wsw/cospa/bean/FileSnapshot;->parent:Lcom/wsw/cospa/bean/RipeFile;

    .line 4
    sget-object v0, Lcom/wsw/cospa/bean/RipeFile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/FileSnapshot;->files:Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/bean/FileSnapshot;->scrollOffset:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/RipeFile;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/FileSnapshot;->files:Ljava/util/List;

    return-object v0
.end method

.method public getParent()Lcom/wsw/cospa/bean/RipeFile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/FileSnapshot;->parent:Lcom/wsw/cospa/bean/RipeFile;

    return-object v0
.end method

.method public getScrollOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/FileSnapshot;->scrollOffset:I

    return v0
.end method

.method public setFiles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/RipeFile;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/FileSnapshot;->files:Ljava/util/List;

    return-void
.end method

.method public setParent(Lcom/wsw/cospa/bean/RipeFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/FileSnapshot;->parent:Lcom/wsw/cospa/bean/RipeFile;

    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/bean/FileSnapshot;->scrollOffset:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/FileSnapshot;->parent:Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/bean/FileSnapshot;->files:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3
    iget p2, p0, Lcom/wsw/cospa/bean/FileSnapshot;->scrollOffset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
