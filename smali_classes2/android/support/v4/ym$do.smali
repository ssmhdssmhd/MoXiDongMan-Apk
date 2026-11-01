.class public Landroid/support/v4/ym$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/ym;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public do:I

.field public for:I

.field public if:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-le p3, p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v4/ym$do;->try(I)V

    .line 3
    invoke-virtual {p0, p2}, Landroid/support/v4/ym$do;->case(I)V

    .line 4
    invoke-virtual {p0, p3}, Landroid/support/v4/ym$do;->else(I)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "must be lower < upper"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public case(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    iput p1, p0, Landroid/support/v4/ym$do;->if:I

    return-void
.end method

.method public do()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/ym$do;->do:I

    return v0
.end method

.method public else(I)V
    .locals 1

    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    const/16 p1, 0xff

    .line 1
    :cond_0
    iput p1, p0, Landroid/support/v4/ym$do;->for:I

    return-void
.end method

.method public for()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/ym$do;->if:I

    return v0
.end method

.method public if()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/ym$do;->for()I

    move-result v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/ym$do;->new()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/ym$do;->for()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/ym$do;->for()I

    move-result v1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/ym$do;->new()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/ym$do;->for()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/ym$do;->for()I

    move-result v2

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/ym$do;->new()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/ym$do;->for()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 4
    invoke-virtual {p0}, Landroid/support/v4/ym$do;->do()I

    move-result v3

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public new()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/ym$do;->for:I

    return v0
.end method

.method public try(I)V
    .locals 1

    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    const/16 p1, 0xff

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 1
    :cond_1
    iput p1, p0, Landroid/support/v4/ym$do;->do:I

    return-void
.end method
