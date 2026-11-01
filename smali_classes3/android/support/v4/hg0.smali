.class public Landroid/support/v4/hg0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:I

.field private for:J

.field private if:I

.field private new:J


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/hg0;->do:I

    iput p2, p0, Landroid/support/v4/hg0;->if:I

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/support/v4/hg0;->for:J

    iput-wide p3, p0, Landroid/support/v4/hg0;->new:J

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    iget v0, p0, Landroid/support/v4/hg0;->if:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Landroid/support/v4/hg0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/support/v4/hg0;

    iget v0, p1, Landroid/support/v4/hg0;->if:I

    iget v2, p0, Landroid/support/v4/hg0;->if:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget v0, p1, Landroid/support/v4/hg0;->do:I

    iget v2, p0, Landroid/support/v4/hg0;->do:I

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p1, Landroid/support/v4/hg0;->new:J

    iget-wide v4, p0, Landroid/support/v4/hg0;->new:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-wide v2, p1, Landroid/support/v4/hg0;->for:J

    iget-wide v4, p0, Landroid/support/v4/hg0;->for:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public for()I
    .locals 1

    iget v0, p0, Landroid/support/v4/hg0;->do:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Landroid/support/v4/hg0;->do:I

    iget v1, p0, Landroid/support/v4/hg0;->if:I

    xor-int/2addr v0, v1

    iget-wide v1, p0, Landroid/support/v4/hg0;->for:J

    long-to-int v3, v1

    xor-int/2addr v0, v3

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v2, v1

    xor-int/2addr v0, v2

    iget-wide v1, p0, Landroid/support/v4/hg0;->new:J

    long-to-int v4, v1

    xor-int/2addr v0, v4

    shr-long/2addr v1, v3

    long-to-int v2, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public if()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/hg0;->new:J

    return-wide v0
.end method

.method public new()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/hg0;->for:J

    return-wide v0
.end method
