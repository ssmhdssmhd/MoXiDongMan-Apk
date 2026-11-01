.class public Lcom/wsw/cospa/bean/ComicShelfGroupBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/wsw/cospa/bean/ComicShelfGroupBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private enable:Z

.field private groupName:Ljava/lang/String;

.field private groupNumber:Ljava/lang/Integer;

.field private groupSort:Ljava/lang/String;

.field private groupView:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private sortCheckedId:I

.field private sortId:I

.field private viewCheckedId:I

.field private viewId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/bean/ComicShelfGroupBean$1;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/ComicShelfGroupBean$1;-><init>()V

    sput-object v0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->groupNumber:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->groupNumber:Ljava/lang/Integer;

    .line 5
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->id:Ljava/lang/Long;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->groupName:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->viewCheckedId:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->viewId:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->groupView:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->sortCheckedId:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->sortId:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->groupSort:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->groupNumber:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;ZLjava/lang/String;IILjava/lang/String;IILjava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->groupNumber:Ljava/lang/Integer;

    .line 16
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->id:Ljava/lang/Long;

    .line 17
    iput-boolean p2, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->enable:Z

    .line 18
    iput-object p3, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->groupName:Ljava/lang/String;

    .line 19
    iput p4, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->viewCheckedId:I

    .line 20
    iput p5, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->viewId:I

    .line 21
    iput-object p6, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->groupView:Ljava/lang/String;

    .line 22
    iput p7, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->sortCheckedId:I

    .line 23
    iput p8, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->sortId:I

    .line 24
    iput-object p9, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->groupSort:Ljava/lang/String;

    .line 25
    iput-object p10, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->groupNumber:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->enable:Z

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupNumber()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->groupNumber:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getGroupSort()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->groupSort:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupView()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->groupView:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getSortCheckedId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->sortCheckedId:I

    return v0
.end method

.method public getSortId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->sortId:I

    return v0
.end method

.method public getViewCheckedId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->viewCheckedId:I

    return v0
.end method

.method public getViewId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->viewId:I

    return v0
.end method

.method public setEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->enable:Z

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->groupName:Ljava/lang/String;

    return-void
.end method

.method public setGroupNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->groupNumber:Ljava/lang/Integer;

    return-void
.end method

.method public setGroupSort(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->groupSort:Ljava/lang/String;

    return-void
.end method

.method public setGroupView(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->groupView:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->id:Ljava/lang/Long;

    return-void
.end method

.method public setSortCheckedId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->sortCheckedId:I

    return-void
.end method

.method public setSortId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->sortId:I

    return-void
.end method

.method public setViewCheckedId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->viewCheckedId:I

    return-void
.end method

.method public setViewId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->viewId:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->id:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->groupName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->viewCheckedId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->viewId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->groupView:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget p2, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->sortCheckedId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->sortId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->groupSort:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->groupNumber:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
