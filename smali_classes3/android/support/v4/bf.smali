.class public Landroid/support/v4/bf;
.super Landroid/support/v4/dq1;
.source "SourceFile"


# static fields
.field private static final this:[B


# instance fields
.field private final goto:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    new-array v0, v0, [B

    sput-object v0, Landroid/support/v4/bf;->this:[B

    return-void
.end method

.method public constructor <init>(I[B[B)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v4/dq1;-><init>(I)V

    if-eqz p2, :cond_0

    array-length p1, p2

    if-nez p1, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    array-length p1, p3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Landroid/support/v4/tq0;->for:I

    div-int/lit8 p1, p1, 0x8

    int-to-long v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/bf;->super(J)[B

    move-result-object p1

    invoke-direct {p0, p2}, Landroid/support/v4/bf;->final([B)[B

    move-result-object p2

    invoke-direct {p0, p3}, Landroid/support/v4/bf;->final([B)[B

    move-result-object p3

    invoke-static {p1, p2, p3}, Landroid/support/v4/q3;->extends([B[B[B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/bf;->goto:[B

    invoke-direct {p0}, Landroid/support/v4/bf;->const()V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/bf;->goto:[B

    :goto_1
    return-void
.end method

.method private const()V
    .locals 4

    iget v0, p0, Landroid/support/v4/tq0;->for:I

    div-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Landroid/support/v4/bf;->goto:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Landroid/support/v4/tq0;->new([BII)V

    iget-object v1, p0, Landroid/support/v4/bf;->goto:[B

    array-length v1, v1

    rem-int/2addr v1, v0

    :goto_0
    sub-int/2addr v0, v1

    sget-object v1, Landroid/support/v4/bf;->this:[B

    array-length v2, v1

    if-le v0, v2, :cond_0

    array-length v2, v1

    invoke-virtual {p0, v1, v3, v2}, Landroid/support/v4/tq0;->new([BII)V

    array-length v1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v3, v0}, Landroid/support/v4/tq0;->new([BII)V

    return-void
.end method

.method private final([B)[B
    .locals 4

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0x8

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Landroid/support/v4/bf;->super(J)[B

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/q3;->default([B[B)[B

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/bf;->super(J)[B

    move-result-object p1

    return-object p1
.end method

.method private static super(J)[B
    .locals 8

    const/4 v0, 0x1

    const/4 v3, 0x1

    move-wide v1, p0

    :goto_0
    const/16 v4, 0x8

    shr-long/2addr v1, v4

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-eqz v7, :cond_0

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v3, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v3, v1, v2

    :goto_1
    if-gt v0, v3, :cond_1

    sub-int v2, v3, v0

    mul-int/lit8 v2, v2, 0x8

    shr-long v5, p0, v2

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public doOutput([BII)I
    .locals 4

    iget-object v0, p0, Landroid/support/v4/bf;->goto:[B

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/tq0;->case:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/tq0;->try(II)V

    :cond_0
    int-to-long v0, p3

    const-wide/16 v2, 0x8

    mul-long v0, v0, v2

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v4/tq0;->break([BIJ)V

    return p3

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/dq1;->doOutput([BII)I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/tq0;->reset()V

    iget-object v0, p0, Landroid/support/v4/bf;->goto:[B

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v4/bf;->const()V

    :cond_0
    return-void
.end method
