.class final Lfreemarker/core/v1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:[Lfreemarker/core/LocalContext;

.field private if:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [Lfreemarker/core/LocalContext;

    .line 2
    iput-object v0, p0, Lfreemarker/core/v1;->do:[Lfreemarker/core/LocalContext;

    return-void
.end method


# virtual methods
.method public do(I)Lfreemarker/core/LocalContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/v1;->do:[Lfreemarker/core/LocalContext;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public for(Lfreemarker/core/LocalContext;)V
    .locals 5

    .line 1
    iget v0, p0, Lfreemarker/core/v1;->if:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfreemarker/core/v1;->if:I

    .line 2
    iget-object v1, p0, Lfreemarker/core/v1;->do:[Lfreemarker/core/LocalContext;

    .line 3
    array-length v2, v1

    if-ge v2, v0, :cond_1

    mul-int/lit8 v2, v0, 0x2

    .line 4
    new-array v2, v2, [Lfreemarker/core/LocalContext;

    const/4 v3, 0x0

    .line 5
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 6
    aget-object v4, v1, v3

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput-object v2, p0, Lfreemarker/core/v1;->do:[Lfreemarker/core/LocalContext;

    move-object v1, v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 8
    aput-object p1, v1, v0

    return-void
.end method

.method public if()V
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/v1;->do:[Lfreemarker/core/LocalContext;

    iget v1, p0, Lfreemarker/core/v1;->if:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lfreemarker/core/v1;->if:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method public new()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/v1;->if:I

    return v0
.end method
