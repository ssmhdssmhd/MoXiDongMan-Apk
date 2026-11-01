.class public Landroid/support/v4/xu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:[B

.field private if:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/xu;->do:[B

    iput p2, p0, Landroid/support/v4/xu;->if:I

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    iget v0, p0, Landroid/support/v4/xu;->if:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/support/v4/xu;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/support/v4/xu;

    iget v0, p1, Landroid/support/v4/xu;->if:I

    iget v2, p0, Landroid/support/v4/xu;->if:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/support/v4/xu;->do:[B

    iget-object p1, p1, Landroid/support/v4/xu;->do:[B

    invoke-static {v0, p1}, Landroid/support/v4/q3;->case([B[B)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroid/support/v4/xu;->if:I

    iget-object v1, p0, Landroid/support/v4/xu;->do:[B

    invoke-static {v1}, Landroid/support/v4/q3;->n([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public if()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xu;->do:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method
