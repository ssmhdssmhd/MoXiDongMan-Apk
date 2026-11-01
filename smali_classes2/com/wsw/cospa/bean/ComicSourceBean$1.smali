.class Lcom/wsw/cospa/bean/ComicSourceBean$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/bean/ComicSourceBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/wsw/cospa/bean/ComicSourceBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/wsw/cospa/bean/ComicSourceBean;
    .locals 1

    .line 2
    new-instance v0, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-direct {v0, p1}, Lcom/wsw/cospa/bean/ComicSourceBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/bean/ComicSourceBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/wsw/cospa/bean/ComicSourceBean;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/wsw/cospa/bean/ComicSourceBean;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/bean/ComicSourceBean$1;->newArray(I)[Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object p1

    return-object p1
.end method
