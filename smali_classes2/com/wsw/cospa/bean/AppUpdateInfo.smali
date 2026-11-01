.class public Lcom/wsw/cospa/bean/AppUpdateInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/wsw/cospa/bean/AppUpdateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appChangeLog:Ljava/lang/String;

.field private appMd5:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private appPackage:Ljava/lang/String;

.field private appPath:Ljava/lang/String;

.field private appSize:J

.field private appUrl:Ljava/lang/String;

.field private appVersionCode:I

.field private appVersionName:Ljava/lang/String;

.field private forceUpdate:I

.field public showUpdate:Z

.field private topImage:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/bean/AppUpdateInfo$1;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/AppUpdateInfo$1;-><init>()V

    sput-object v0, Lcom/wsw/cospa/bean/AppUpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appVersionName:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appPackage:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appVersionCode:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appUrl:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appSize:J

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appPath:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appChangeLog:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appMd5:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appName:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->forceUpdate:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->topImage:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->showUpdate:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppChangeLog()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appChangeLog:Ljava/lang/String;

    return-object v0
.end method

.method public getAppMd5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPackage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appPath:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appSize:J

    return-wide v0
.end method

.method public getAppUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appVersionCode:I

    return v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getForceUpdate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->forceUpdate:I

    return v0
.end method

.method public getTopImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->topImage:Ljava/lang/String;

    return-object v0
.end method

.method public isShowUpdate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->showUpdate:Z

    return v0
.end method

.method public setAppChangeLog(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appChangeLog:Ljava/lang/String;

    return-void
.end method

.method public setAppMd5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appMd5:Ljava/lang/String;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appName:Ljava/lang/String;

    return-void
.end method

.method public setAppPackage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appPackage:Ljava/lang/String;

    return-void
.end method

.method public setAppPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appPath:Ljava/lang/String;

    return-void
.end method

.method public setAppSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appSize:J

    return-void
.end method

.method public setAppUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appUrl:Ljava/lang/String;

    return-void
.end method

.method public setAppVersionCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appVersionCode:I

    return-void
.end method

.method public setAppVersionName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appVersionName:Ljava/lang/String;

    return-void
.end method

.method public setForceUpdate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->forceUpdate:I

    return-void
.end method

.method public setShowUpdate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->showUpdate:Z

    return-void
.end method

.method public setTopImage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->topImage:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appVersionName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appVersionCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-wide v0, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6
    iget-object p2, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appChangeLog:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appMd5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->appName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget p2, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->forceUpdate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget-object p2, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->topImage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-boolean p2, p0, Lcom/wsw/cospa/bean/AppUpdateInfo;->showUpdate:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
