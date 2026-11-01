.class public Landroid/support/v4/ty;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Ljava/lang/CharSequence;

.field private final for:I

.field private final if:I

.field private final new:[B


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/ty;->do:Ljava/lang/CharSequence;

    .line 3
    iput p2, p0, Landroid/support/v4/ty;->for:I

    .line 4
    iput p3, p0, Landroid/support/v4/ty;->if:I

    mul-int p2, p2, p3

    .line 5
    new-array p1, p2, [B

    iput-object p1, p0, Landroid/support/v4/ty;->new:[B

    const/4 p2, -0x1

    .line 6
    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method private break(IIII)V
    .locals 1

    if-gez p1, :cond_0

    .line 1
    iget v0, p0, Landroid/support/v4/ty;->if:I

    add-int/2addr p1, v0

    add-int/lit8 v0, v0, 0x4

    .line 2
    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p2, v0

    :cond_0
    if-gez p2, :cond_1

    .line 3
    iget v0, p0, Landroid/support/v4/ty;->for:I

    add-int/2addr p2, v0

    add-int/lit8 v0, v0, 0x4

    .line 4
    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p1, v0

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/support/v4/ty;->do:Ljava/lang/CharSequence;

    invoke-interface {v0, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    rsub-int/lit8 p4, p4, 0x8

    const/4 v0, 0x1

    shl-int p4, v0, p4

    and-int/2addr p3, p4

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-direct {p0, p2, p1, v0}, Landroid/support/v4/ty;->class(IIZ)V

    return-void
.end method

.method private class(IIZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/ty;->new:[B

    iget v1, p0, Landroid/support/v4/ty;->for:I

    mul-int p2, p2, v1

    add-int/2addr p2, p1

    int-to-byte p1, p3

    aput-byte p1, v0, p2

    return-void
.end method

.method private const(III)V
    .locals 4

    add-int/lit8 v0, p1, -0x2

    add-int/lit8 v1, p2, -0x2

    const/4 v2, 0x1

    .line 1
    invoke-direct {p0, v0, v1, p3, v2}, Landroid/support/v4/ty;->break(IIII)V

    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x2

    .line 2
    invoke-direct {p0, v0, v2, p3, v3}, Landroid/support/v4/ty;->break(IIII)V

    add-int/lit8 v0, p1, -0x1

    const/4 v3, 0x3

    .line 3
    invoke-direct {p0, v0, v1, p3, v3}, Landroid/support/v4/ty;->break(IIII)V

    const/4 v3, 0x4

    .line 4
    invoke-direct {p0, v0, v2, p3, v3}, Landroid/support/v4/ty;->break(IIII)V

    const/4 v3, 0x5

    .line 5
    invoke-direct {p0, v0, p2, p3, v3}, Landroid/support/v4/ty;->break(IIII)V

    const/4 v0, 0x6

    .line 6
    invoke-direct {p0, p1, v1, p3, v0}, Landroid/support/v4/ty;->break(IIII)V

    const/4 v0, 0x7

    .line 7
    invoke-direct {p0, p1, v2, p3, v0}, Landroid/support/v4/ty;->break(IIII)V

    const/16 v0, 0x8

    .line 8
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/ty;->break(IIII)V

    return-void
.end method

.method private do(I)V
    .locals 6

    .line 1
    iget v0, p0, Landroid/support/v4/ty;->if:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1, v1}, Landroid/support/v4/ty;->break(IIII)V

    .line 2
    iget v0, p0, Landroid/support/v4/ty;->if:I

    sub-int/2addr v0, v1

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, p1, v3}, Landroid/support/v4/ty;->break(IIII)V

    .line 3
    iget v0, p0, Landroid/support/v4/ty;->if:I

    sub-int/2addr v0, v1

    const/4 v4, 0x3

    invoke-direct {p0, v0, v3, p1, v4}, Landroid/support/v4/ty;->break(IIII)V

    .line 4
    iget v0, p0, Landroid/support/v4/ty;->for:I

    sub-int/2addr v0, v3

    const/4 v5, 0x4

    invoke-direct {p0, v2, v0, p1, v5}, Landroid/support/v4/ty;->break(IIII)V

    .line 5
    iget v0, p0, Landroid/support/v4/ty;->for:I

    sub-int/2addr v0, v1

    const/4 v5, 0x5

    invoke-direct {p0, v2, v0, p1, v5}, Landroid/support/v4/ty;->break(IIII)V

    .line 6
    iget v0, p0, Landroid/support/v4/ty;->for:I

    sub-int/2addr v0, v1

    const/4 v2, 0x6

    invoke-direct {p0, v1, v0, p1, v2}, Landroid/support/v4/ty;->break(IIII)V

    .line 7
    iget v0, p0, Landroid/support/v4/ty;->for:I

    sub-int/2addr v0, v1

    const/4 v2, 0x7

    invoke-direct {p0, v3, v0, p1, v2}, Landroid/support/v4/ty;->break(IIII)V

    .line 8
    iget v0, p0, Landroid/support/v4/ty;->for:I

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-direct {p0, v4, v0, p1, v1}, Landroid/support/v4/ty;->break(IIII)V

    return-void
.end method

.method private for(I)V
    .locals 6

    .line 1
    iget v0, p0, Landroid/support/v4/ty;->if:I

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, p1, v3}, Landroid/support/v4/ty;->break(IIII)V

    .line 2
    iget v0, p0, Landroid/support/v4/ty;->if:I

    const/4 v4, 0x2

    sub-int/2addr v0, v4

    invoke-direct {p0, v0, v2, p1, v4}, Landroid/support/v4/ty;->break(IIII)V

    .line 3
    iget v0, p0, Landroid/support/v4/ty;->if:I

    sub-int/2addr v0, v3

    invoke-direct {p0, v0, v2, p1, v1}, Landroid/support/v4/ty;->break(IIII)V

    .line 4
    iget v0, p0, Landroid/support/v4/ty;->for:I

    sub-int/2addr v0, v4

    const/4 v5, 0x4

    invoke-direct {p0, v2, v0, p1, v5}, Landroid/support/v4/ty;->break(IIII)V

    .line 5
    iget v0, p0, Landroid/support/v4/ty;->for:I

    sub-int/2addr v0, v3

    const/4 v5, 0x5

    invoke-direct {p0, v2, v0, p1, v5}, Landroid/support/v4/ty;->break(IIII)V

    .line 6
    iget v0, p0, Landroid/support/v4/ty;->for:I

    sub-int/2addr v0, v3

    const/4 v2, 0x6

    invoke-direct {p0, v3, v0, p1, v2}, Landroid/support/v4/ty;->break(IIII)V

    .line 7
    iget v0, p0, Landroid/support/v4/ty;->for:I

    sub-int/2addr v0, v3

    const/4 v2, 0x7

    invoke-direct {p0, v4, v0, p1, v2}, Landroid/support/v4/ty;->break(IIII)V

    .line 8
    iget v0, p0, Landroid/support/v4/ty;->for:I

    sub-int/2addr v0, v3

    const/16 v2, 0x8

    invoke-direct {p0, v1, v0, p1, v2}, Landroid/support/v4/ty;->break(IIII)V

    return-void
.end method

.method private if(I)V
    .locals 6

    .line 1
    iget v0, p0, Landroid/support/v4/ty;->if:I

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, p1, v3}, Landroid/support/v4/ty;->break(IIII)V

    .line 2
    iget v0, p0, Landroid/support/v4/ty;->if:I

    const/4 v4, 0x2

    sub-int/2addr v0, v4

    invoke-direct {p0, v0, v2, p1, v4}, Landroid/support/v4/ty;->break(IIII)V

    .line 3
    iget v0, p0, Landroid/support/v4/ty;->if:I

    sub-int/2addr v0, v3

    invoke-direct {p0, v0, v2, p1, v1}, Landroid/support/v4/ty;->break(IIII)V

    .line 4
    iget v0, p0, Landroid/support/v4/ty;->for:I

    const/4 v5, 0x4

    sub-int/2addr v0, v5

    invoke-direct {p0, v2, v0, p1, v5}, Landroid/support/v4/ty;->break(IIII)V

    .line 5
    iget v0, p0, Landroid/support/v4/ty;->for:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    invoke-direct {p0, v2, v0, p1, v1}, Landroid/support/v4/ty;->break(IIII)V

    .line 6
    iget v0, p0, Landroid/support/v4/ty;->for:I

    sub-int/2addr v0, v4

    const/4 v1, 0x6

    invoke-direct {p0, v2, v0, p1, v1}, Landroid/support/v4/ty;->break(IIII)V

    .line 7
    iget v0, p0, Landroid/support/v4/ty;->for:I

    sub-int/2addr v0, v3

    const/4 v1, 0x7

    invoke-direct {p0, v2, v0, p1, v1}, Landroid/support/v4/ty;->break(IIII)V

    .line 8
    iget v0, p0, Landroid/support/v4/ty;->for:I

    sub-int/2addr v0, v3

    const/16 v1, 0x8

    invoke-direct {p0, v3, v0, p1, v1}, Landroid/support/v4/ty;->break(IIII)V

    return-void
.end method

.method private new(I)V
    .locals 6

    .line 1
    iget v0, p0, Landroid/support/v4/ty;->if:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1, v1}, Landroid/support/v4/ty;->break(IIII)V

    .line 2
    iget v0, p0, Landroid/support/v4/ty;->if:I

    sub-int/2addr v0, v1

    iget v3, p0, Landroid/support/v4/ty;->for:I

    sub-int/2addr v3, v1

    const/4 v4, 0x2

    invoke-direct {p0, v0, v3, p1, v4}, Landroid/support/v4/ty;->break(IIII)V

    .line 3
    iget v0, p0, Landroid/support/v4/ty;->for:I

    const/4 v3, 0x3

    sub-int/2addr v0, v3

    invoke-direct {p0, v2, v0, p1, v3}, Landroid/support/v4/ty;->break(IIII)V

    .line 4
    iget v0, p0, Landroid/support/v4/ty;->for:I

    sub-int/2addr v0, v4

    const/4 v5, 0x4

    invoke-direct {p0, v2, v0, p1, v5}, Landroid/support/v4/ty;->break(IIII)V

    .line 5
    iget v0, p0, Landroid/support/v4/ty;->for:I

    sub-int/2addr v0, v1

    const/4 v5, 0x5

    invoke-direct {p0, v2, v0, p1, v5}, Landroid/support/v4/ty;->break(IIII)V

    .line 6
    iget v0, p0, Landroid/support/v4/ty;->for:I

    sub-int/2addr v0, v3

    const/4 v2, 0x6

    invoke-direct {p0, v1, v0, p1, v2}, Landroid/support/v4/ty;->break(IIII)V

    .line 7
    iget v0, p0, Landroid/support/v4/ty;->for:I

    sub-int/2addr v0, v4

    const/4 v2, 0x7

    invoke-direct {p0, v1, v0, p1, v2}, Landroid/support/v4/ty;->break(IIII)V

    .line 8
    iget v0, p0, Landroid/support/v4/ty;->for:I

    sub-int/2addr v0, v1

    const/16 v2, 0x8

    invoke-direct {p0, v1, v0, p1, v2}, Landroid/support/v4/ty;->break(IIII)V

    return-void
.end method

.method private this(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/ty;->new:[B

    iget v1, p0, Landroid/support/v4/ty;->for:I

    mul-int p2, p2, v1

    add-int/2addr p2, p1

    aget-byte p1, v0, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final case()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/ty;->new:[B

    return-object v0
.end method

.method public final catch()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 1
    :cond_0
    iget v4, p0, Landroid/support/v4/ty;->if:I

    if-ne v3, v4, :cond_1

    if-nez v0, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 2
    invoke-direct {p0, v2}, Landroid/support/v4/ty;->do(I)V

    move v2, v4

    .line 3
    :cond_1
    iget v4, p0, Landroid/support/v4/ty;->if:I

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_2

    if-nez v0, :cond_2

    iget v4, p0, Landroid/support/v4/ty;->for:I

    rem-int/2addr v4, v1

    if-eqz v4, :cond_2

    add-int/lit8 v4, v2, 0x1

    .line 4
    invoke-direct {p0, v2}, Landroid/support/v4/ty;->if(I)V

    move v2, v4

    .line 5
    :cond_2
    iget v4, p0, Landroid/support/v4/ty;->if:I

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_3

    if-nez v0, :cond_3

    iget v4, p0, Landroid/support/v4/ty;->for:I

    rem-int/lit8 v4, v4, 0x8

    if-ne v4, v1, :cond_3

    add-int/lit8 v4, v2, 0x1

    .line 6
    invoke-direct {p0, v2}, Landroid/support/v4/ty;->for(I)V

    move v2, v4

    .line 7
    :cond_3
    iget v4, p0, Landroid/support/v4/ty;->if:I

    add-int/2addr v4, v1

    if-ne v3, v4, :cond_4

    if-ne v0, v5, :cond_4

    iget v4, p0, Landroid/support/v4/ty;->for:I

    rem-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_4

    add-int/lit8 v4, v2, 0x1

    .line 8
    invoke-direct {p0, v2}, Landroid/support/v4/ty;->new(I)V

    move v2, v4

    .line 9
    :cond_4
    iget v4, p0, Landroid/support/v4/ty;->if:I

    if-ge v3, v4, :cond_5

    if-ltz v0, :cond_5

    invoke-direct {p0, v0, v3}, Landroid/support/v4/ty;->this(II)Z

    move-result v4

    if-nez v4, :cond_5

    add-int/lit8 v4, v2, 0x1

    .line 10
    invoke-direct {p0, v3, v0, v2}, Landroid/support/v4/ty;->const(III)V

    move v2, v4

    :cond_5
    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v0, v0, 0x2

    if-ltz v3, :cond_6

    .line 11
    iget v4, p0, Landroid/support/v4/ty;->for:I

    if-lt v0, v4, :cond_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x3

    :cond_7
    if-ltz v3, :cond_8

    .line 12
    iget v4, p0, Landroid/support/v4/ty;->for:I

    if-ge v0, v4, :cond_8

    invoke-direct {p0, v0, v3}, Landroid/support/v4/ty;->this(II)Z

    move-result v4

    if-nez v4, :cond_8

    add-int/lit8 v4, v2, 0x1

    .line 13
    invoke-direct {p0, v3, v0, v2}, Landroid/support/v4/ty;->const(III)V

    move v2, v4

    :cond_8
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v0, v0, -0x2

    .line 14
    iget v4, p0, Landroid/support/v4/ty;->if:I

    if-ge v3, v4, :cond_9

    if-gez v0, :cond_7

    :cond_9
    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v0, v0, 0x1

    if-lt v3, v4, :cond_0

    .line 15
    iget v6, p0, Landroid/support/v4/ty;->for:I

    if-lt v0, v6, :cond_0

    const/4 v0, 0x1

    sub-int/2addr v6, v0

    sub-int/2addr v4, v0

    .line 16
    invoke-direct {p0, v6, v4}, Landroid/support/v4/ty;->this(II)Z

    move-result v1

    if-nez v1, :cond_a

    .line 17
    iget v1, p0, Landroid/support/v4/ty;->for:I

    sub-int/2addr v1, v0

    iget v2, p0, Landroid/support/v4/ty;->if:I

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2, v0}, Landroid/support/v4/ty;->class(IIZ)V

    .line 18
    iget v1, p0, Landroid/support/v4/ty;->for:I

    sub-int/2addr v1, v5

    iget v2, p0, Landroid/support/v4/ty;->if:I

    sub-int/2addr v2, v5

    invoke-direct {p0, v1, v2, v0}, Landroid/support/v4/ty;->class(IIZ)V

    :cond_a
    return-void
.end method

.method public final else()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/ty;->for:I

    return v0
.end method

.method public final goto()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/ty;->if:I

    return v0
.end method

.method public final try(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/ty;->new:[B

    iget v1, p0, Landroid/support/v4/ty;->for:I

    mul-int p2, p2, v1

    add-int/2addr p2, p1

    aget-byte p1, v0, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
