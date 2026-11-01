.class public Lcom/luck/picture/lib/entity/LocalMedia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private break:Ljava/lang/String;

.field private case:Z

.field private catch:Z

.field private class:I

.field private const:I

.field private do:Ljava/lang/String;

.field public else:I

.field private for:Ljava/lang/String;

.field private goto:I

.field private if:Ljava/lang/String;

.field private new:J

.field private this:I

.field private try:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMedia$do;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMedia$do;-><init>()V

    sput-object v0, Lcom/luck/picture/lib/entity/LocalMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->do:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->if:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->for:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->new:J

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->try:Z

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->case:Z

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->else:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->goto:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->this:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->break:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->catch:Z

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->class:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->const:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->do:Ljava/lang/String;

    .line 4
    iput-wide p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->new:J

    .line 5
    iput p4, p0, Lcom/luck/picture/lib/entity/LocalMedia;->this:I

    .line 6
    iput-object p5, p0, Lcom/luck/picture/lib/entity/LocalMedia;->break:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JILjava/lang/String;II)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->do:Ljava/lang/String;

    .line 9
    iput-wide p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->new:J

    .line 10
    iput p4, p0, Lcom/luck/picture/lib/entity/LocalMedia;->this:I

    .line 11
    iput-object p5, p0, Lcom/luck/picture/lib/entity/LocalMedia;->break:Ljava/lang/String;

    .line 12
    iput p6, p0, Lcom/luck/picture/lib/entity/LocalMedia;->class:I

    .line 13
    iput p7, p0, Lcom/luck/picture/lib/entity/LocalMedia;->const:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZIII)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->do:Ljava/lang/String;

    .line 16
    iput-wide p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->new:J

    .line 17
    iput-boolean p4, p0, Lcom/luck/picture/lib/entity/LocalMedia;->try:Z

    .line 18
    iput p5, p0, Lcom/luck/picture/lib/entity/LocalMedia;->else:I

    .line 19
    iput p6, p0, Lcom/luck/picture/lib/entity/LocalMedia;->goto:I

    .line 20
    iput p7, p0, Lcom/luck/picture/lib/entity/LocalMedia;->this:I

    return-void
.end method


# virtual methods
.method public break()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->catch:Z

    return v0
.end method

.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->do:Ljava/lang/String;

    return-object v0
.end method

.method public catch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->case:Z

    return v0
.end method

.method public class(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->try:Z

    return-void
.end method

.method public const(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->if:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public do()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->if:Ljava/lang/String;

    return-object v0
.end method

.method public else()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->break:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "image/jpeg"

    .line 2
    iput-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->break:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->break:Ljava/lang/String;

    return-object v0
.end method

.method public final(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->catch:Z

    return-void
.end method

.method public for()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->new:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->const:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->class:I

    return v0
.end method

.method public goto()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->else:I

    return v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->for:Ljava/lang/String;

    return-object v0
.end method

.method public import(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->this:I

    return-void
.end method

.method public native(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->goto:I

    return-void
.end method

.method public new()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->this:I

    return v0
.end method

.method public public(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->do:Ljava/lang/String;

    return-void
.end method

.method public return(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->break:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->const:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->class:I

    return-void
.end method

.method public static(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->else:I

    return-void
.end method

.method public super(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->case:Z

    return-void
.end method

.method public this()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->try:Z

    return v0
.end method

.method public throw(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->for:Ljava/lang/String;

    return-void
.end method

.method public try()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->goto:I

    return v0
.end method

.method public while(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/luck/picture/lib/entity/LocalMedia;->new:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->do:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->if:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->for:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-wide v0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->new:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget-boolean p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->try:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 6
    iget-boolean p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->case:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 7
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->else:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->goto:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->this:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->break:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-boolean p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->catch:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 12
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->class:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget p2, p0, Lcom/luck/picture/lib/entity/LocalMedia;->const:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
