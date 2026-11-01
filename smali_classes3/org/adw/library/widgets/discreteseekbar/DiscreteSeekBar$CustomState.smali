.class Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private do:I

.field private for:I

.field private if:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState$do;

    invoke-direct {v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState$do;-><init>()V

    sput-object v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->do:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->if:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->for:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method public static synthetic case(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->for:I

    return p1
.end method

.method public static synthetic do(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->do:I

    return p0
.end method

.method public static synthetic for(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->if:I

    return p0
.end method

.method public static synthetic if(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->do:I

    return p1
.end method

.method public static synthetic new(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->if:I

    return p1
.end method

.method public static synthetic try(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->for:I

    return p0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget p2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->do:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->if:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->for:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
