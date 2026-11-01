.class final Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;",
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
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState$do;->do(Landroid/os/Parcel;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/os/Parcel;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;
    .locals 2

    .line 1
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;-><init>(Landroid/os/Parcel;Lcom/getbase/floatingactionbutton/FloatingActionsMenu$do;)V

    return-object v0
.end method

.method public if(I)[Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState$do;->if(I)[Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    move-result-object p1

    return-object p1
.end method
