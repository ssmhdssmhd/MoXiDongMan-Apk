.class public Landroid/support/v4/a90;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:I

.field private for:I

.field private if:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v4/a90;->do:I

    .line 3
    iput p2, p0, Landroid/support/v4/a90;->if:I

    .line 4
    iput p3, p0, Landroid/support/v4/a90;->for:I

    return-void
.end method


# virtual methods
.method public case(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/a90;->for:I

    return-void
.end method

.method public do()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/a90;->if:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Landroid/support/v4/a90;

    .line 3
    iget v2, p0, Landroid/support/v4/a90;->do:I

    iget v3, p1, Landroid/support/v4/a90;->do:I

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget v2, p0, Landroid/support/v4/a90;->if:I

    iget v3, p1, Landroid/support/v4/a90;->if:I

    if-eq v2, v3, :cond_3

    return v1

    .line 5
    :cond_3
    iget v2, p0, Landroid/support/v4/a90;->for:I

    iget p1, p1, Landroid/support/v4/a90;->for:I

    if-ne v2, p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public for()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/a90;->for:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/a90;->do:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Landroid/support/v4/a90;->if:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Landroid/support/v4/a90;->for:I

    add-int/2addr v0, v1

    return v0
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/a90;->do:I

    return v0
.end method

.method public new(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/a90;->if:I

    return-void
.end method

.method public try(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/a90;->do:I

    return-void
.end method
