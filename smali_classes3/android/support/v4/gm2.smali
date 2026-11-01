.class public Landroid/support/v4/gm2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public case:[F

.field public do:I

.field public else:[F

.field public for:I

.field public if:I

.field public new:[I

.field public try:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/gm2;->do:I

    const/16 v1, 0xc8

    iput v1, p0, Landroid/support/v4/gm2;->if:I

    iput v0, p0, Landroid/support/v4/gm2;->for:I

    const/16 v0, 0x5e

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v4/gm2;->new:[I

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v4/gm2;->try:[I

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/support/v4/gm2;->case:[F

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v4/gm2;->else:[F

    invoke-virtual {p0}, Landroid/support/v4/gm2;->case()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/gm2;->do:I

    iput v0, p0, Landroid/support/v4/gm2;->for:I

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x5e

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/gm2;->new:[I

    iget-object v3, p0, Landroid/support/v4/gm2;->try:[I

    aput v0, v3, v1

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public do()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x5e

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/gm2;->case:[F

    iget-object v2, p0, Landroid/support/v4/gm2;->new:[I

    aget v2, v2, v0

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v4/gm2;->do:I

    int-to-float v4, v3

    div-float/2addr v2, v4

    aput v2, v1, v0

    iget-object v1, p0, Landroid/support/v4/gm2;->else:[F

    iget-object v2, p0, Landroid/support/v4/gm2;->try:[I

    aget v2, v2, v0

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public else([BI)Z
    .locals 9

    iget v0, p0, Landroid/support/v4/gm2;->for:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v0, p2, :cond_7

    iget v4, p0, Landroid/support/v4/gm2;->for:I

    if-eq v2, v4, :cond_7

    const/4 v5, 0x2

    const/16 v6, 0xa1

    const/16 v7, 0xff

    if-eqz v4, :cond_4

    if-eq v4, v2, :cond_6

    if-eq v4, v5, :cond_2

    :cond_1
    :goto_1
    iput v2, p0, Landroid/support/v4/gm2;->for:I

    goto :goto_2

    :cond_2
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    aget-byte v4, p1, v3

    and-int/2addr v4, v7

    if-eq v7, v4, :cond_1

    aget-byte v4, p1, v3

    and-int/2addr v4, v7

    if-le v6, v4, :cond_3

    goto :goto_1

    :cond_3
    iget v4, p0, Landroid/support/v4/gm2;->do:I

    add-int/2addr v4, v2

    iput v4, p0, Landroid/support/v4/gm2;->do:I

    iget-object v4, p0, Landroid/support/v4/gm2;->try:[I

    aget-byte v5, p1, v3

    and-int/2addr v5, v7

    sub-int/2addr v5, v6

    aget v6, v4, v5

    add-int/2addr v6, v2

    aput v6, v4, v5

    iput v1, p0, Landroid/support/v4/gm2;->for:I

    goto :goto_2

    :cond_4
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_6

    aget-byte v4, p1, v3

    and-int/2addr v4, v7

    if-eq v7, v4, :cond_1

    aget-byte v4, p1, v3

    and-int/2addr v4, v7

    if-le v6, v4, :cond_5

    goto :goto_1

    :cond_5
    iget v4, p0, Landroid/support/v4/gm2;->do:I

    add-int/2addr v4, v2

    iput v4, p0, Landroid/support/v4/gm2;->do:I

    iget-object v4, p0, Landroid/support/v4/gm2;->new:[I

    aget-byte v8, p1, v3

    and-int/2addr v7, v8

    sub-int/2addr v7, v6

    aget v6, v4, v7

    add-int/2addr v6, v2

    aput v6, v4, v7

    iput v5, p0, Landroid/support/v4/gm2;->for:I

    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    iget p1, p0, Landroid/support/v4/gm2;->for:I

    if-eq v2, p1, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public for([FF[FF)F
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gm2;->case:[F

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/gm2;->new([F[F)F

    move-result p1

    mul-float p2, p2, p1

    iget-object p1, p0, Landroid/support/v4/gm2;->else:[F

    invoke-virtual {p0, p3, p1}, Landroid/support/v4/gm2;->new([F[F)F

    move-result p1

    mul-float p4, p4, p1

    add-float/2addr p2, p4

    return p2
.end method

.method public if()Z
    .locals 2

    iget v0, p0, Landroid/support/v4/gm2;->do:I

    iget v1, p0, Landroid/support/v4/gm2;->if:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public new([F[F)F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x5e

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    aget v3, p2, v1

    sub-float/2addr v2, v3

    mul-float v2, v2, v2

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    float-to-double p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x42bc0000    # 94.0f

    div-float/2addr p1, p2

    return p1
.end method

.method public try()Z
    .locals 2

    iget v0, p0, Landroid/support/v4/gm2;->do:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
