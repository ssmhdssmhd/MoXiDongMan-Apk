.class public final Landroid/support/v4/xd1;
.super Landroid/support/v4/kw0;
.source "SourceFile"


# static fields
.field private static final goto:I = 0x2


# instance fields
.field private final case:I

.field private final else:I

.field private final for:[B

.field private final new:I

.field private final try:I


# direct methods
.method public constructor <init>([BIIIIIIZ)V
    .locals 1

    .line 1
    invoke-direct {p0, p6, p7}, Landroid/support/v4/kw0;-><init>(II)V

    add-int v0, p4, p6

    if-gt v0, p2, :cond_1

    add-int v0, p5, p7

    if-gt v0, p3, :cond_1

    .line 2
    iput-object p1, p0, Landroid/support/v4/xd1;->for:[B

    .line 3
    iput p2, p0, Landroid/support/v4/xd1;->new:I

    .line 4
    iput p3, p0, Landroid/support/v4/xd1;->try:I

    .line 5
    iput p4, p0, Landroid/support/v4/xd1;->case:I

    .line 6
    iput p5, p0, Landroid/support/v4/xd1;->else:I

    if-eqz p8, :cond_0

    .line 7
    invoke-direct {p0, p6, p7}, Landroid/support/v4/xd1;->final(II)V

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Crop rectangle does not fit within image data."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/support/v4/xd1;->for:[B

    .line 2
    iget v1, p0, Landroid/support/v4/xd1;->else:I

    iget v2, p0, Landroid/support/v4/xd1;->new:I

    mul-int v1, v1, v2

    iget v2, p0, Landroid/support/v4/xd1;->case:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 3
    div-int/lit8 v3, p1, 0x2

    add-int/2addr v3, v1

    add-int v4, v1, p1

    add-int/lit8 v4, v4, -0x1

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_0

    .line 4
    aget-byte v6, v0, v5

    .line 5
    aget-byte v7, v0, v4

    aput-byte v7, v0, v5

    .line 6
    aput-byte v6, v0, v4

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 7
    iget v3, p0, Landroid/support/v4/xd1;->new:I

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public catch()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/kw0;->if()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public class()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/kw0;->try()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public const()[I
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/kw0;->try()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/kw0;->if()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    mul-int v2, v0, v1

    .line 3
    new-array v2, v2, [I

    .line 4
    iget-object v3, p0, Landroid/support/v4/xd1;->for:[B

    .line 5
    iget v4, p0, Landroid/support/v4/xd1;->else:I

    iget v5, p0, Landroid/support/v4/xd1;->new:I

    mul-int v4, v4, v5

    iget v5, p0, Landroid/support/v4/xd1;->case:I

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_1

    mul-int v7, v6, v0

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_0

    shl-int/lit8 v9, v8, 0x1

    add-int/2addr v9, v4

    .line 6
    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    add-int v10, v7, v8

    const/high16 v11, -0x1000000

    const v12, 0x10101

    mul-int v9, v9, v12

    or-int/2addr v9, v11

    .line 7
    aput v9, v2, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 8
    :cond_0
    iget v7, p0, Landroid/support/v4/xd1;->new:I

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public do(IIII)Landroid/support/v4/kw0;
    .locals 10

    .line 1
    new-instance v9, Landroid/support/v4/xd1;

    iget-object v1, p0, Landroid/support/v4/xd1;->for:[B

    iget v2, p0, Landroid/support/v4/xd1;->new:I

    iget v3, p0, Landroid/support/v4/xd1;->try:I

    iget v0, p0, Landroid/support/v4/xd1;->case:I

    add-int v4, v0, p1

    iget p1, p0, Landroid/support/v4/xd1;->else:I

    add-int v5, p1, p2

    const/4 v8, 0x0

    move-object v0, v9

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v8}, Landroid/support/v4/xd1;-><init>([BIIIIIIZ)V

    return-object v9
.end method

.method public else()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public for()[B
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/kw0;->try()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/kw0;->if()I

    move-result v1

    .line 3
    iget v2, p0, Landroid/support/v4/xd1;->new:I

    if-ne v0, v2, :cond_0

    iget v3, p0, Landroid/support/v4/xd1;->try:I

    if-ne v1, v3, :cond_0

    .line 4
    iget-object v0, p0, Landroid/support/v4/xd1;->for:[B

    return-object v0

    :cond_0
    mul-int v3, v0, v1

    .line 5
    new-array v4, v3, [B

    .line 6
    iget v5, p0, Landroid/support/v4/xd1;->else:I

    mul-int v5, v5, v2

    iget v6, p0, Landroid/support/v4/xd1;->case:I

    add-int/2addr v5, v6

    const/4 v6, 0x0

    if-ne v0, v2, :cond_1

    .line 7
    iget-object v0, p0, Landroid/support/v4/xd1;->for:[B

    invoke-static {v0, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :cond_1
    :goto_0
    if-ge v6, v1, :cond_2

    mul-int v2, v6, v0

    .line 8
    iget-object v3, p0, Landroid/support/v4/xd1;->for:[B

    invoke-static {v3, v5, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget v2, p0, Landroid/support/v4/xd1;->new:I

    add-int/2addr v5, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public new(I[B)[B
    .locals 3

    if-ltz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/kw0;->if()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/kw0;->try()I

    move-result v0

    if-eqz p2, :cond_0

    .line 3
    array-length v1, p2

    if-ge v1, v0, :cond_1

    .line 4
    :cond_0
    new-array p2, v0, [B

    .line 5
    :cond_1
    iget v1, p0, Landroid/support/v4/xd1;->else:I

    add-int/2addr p1, v1

    iget v1, p0, Landroid/support/v4/xd1;->new:I

    mul-int p1, p1, v1

    iget v1, p0, Landroid/support/v4/xd1;->case:I

    add-int/2addr p1, v1

    .line 6
    iget-object v1, p0, Landroid/support/v4/xd1;->for:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 7
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Requested row is outside the image: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
