.class Lfreemarker/core/o3$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/o3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private final do:Ljava/lang/String;

.field private final for:I

.field private final if:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/o3$do;->do:Ljava/lang/String;

    .line 3
    iput p2, p0, Lfreemarker/core/o3$do;->if:I

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    mul-int/lit8 p2, p2, 0x1f

    add-int/2addr p1, p2

    iput p1, p0, Lfreemarker/core/o3$do;->for:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lfreemarker/core/o3$do;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lfreemarker/core/o3$do;

    .line 3
    iget v0, p1, Lfreemarker/core/o3$do;->if:I

    iget v2, p0, Lfreemarker/core/o3$do;->if:I

    if-ne v0, v2, :cond_0

    iget-object p1, p1, Lfreemarker/core/o3$do;->do:Ljava/lang/String;

    iget-object v0, p0, Lfreemarker/core/o3$do;->do:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/o3$do;->for:I

    return v0
.end method
