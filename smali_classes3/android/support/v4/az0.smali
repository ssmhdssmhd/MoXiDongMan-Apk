.class public Landroid/support/v4/az0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final case:I = 0x32

.field public static final try:I = 0xb


# instance fields
.field private do:I

.field private for:I

.field private if:I

.field private new:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xb

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1}, Landroid/support/v4/az0;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v4/az0;->do:I

    iput v0, p0, Landroid/support/v4/az0;->for:I

    :goto_0
    iget v1, p0, Landroid/support/v4/az0;->for:I

    if-ge v1, p1, :cond_0

    shl-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/v4/az0;->for:I

    iget v1, p0, Landroid/support/v4/az0;->do:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/support/v4/az0;->do:I

    goto :goto_0

    :cond_0
    ushr-int/lit8 p1, v1, 0x1

    iput p1, p0, Landroid/support/v4/az0;->if:I

    iget v0, p0, Landroid/support/v4/az0;->do:I

    div-int/2addr p1, v0

    iput p1, p0, Landroid/support/v4/az0;->if:I

    invoke-static {v0}, Landroid/support/v4/qe1;->try(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/az0;->new:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key size must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public constructor <init>(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/16 v1, 0x20

    if-gt p1, v1, :cond_2

    iput p1, p0, Landroid/support/v4/az0;->do:I

    shl-int/2addr v0, p1

    iput v0, p0, Landroid/support/v4/az0;->for:I

    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_0

    iput p2, p0, Landroid/support/v4/az0;->if:I

    invoke-static {p1}, Landroid/support/v4/qe1;->try(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/az0;->new:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "t must be less than n = 2^m"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "t must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "m is too large"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "m must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/az0;->do:I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    const/16 v1, 0x20

    if-gt p1, v1, :cond_3

    shl-int/2addr v0, p1

    iput v0, p0, Landroid/support/v4/az0;->for:I

    iput p2, p0, Landroid/support/v4/az0;->if:I

    if-ltz p2, :cond_2

    if-gt p2, v0, :cond_1

    invoke-static {p3}, Landroid/support/v4/qe1;->if(I)I

    move-result p2

    if-ne p2, p1, :cond_0

    invoke-static {p3}, Landroid/support/v4/qe1;->case(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iput p3, p0, Landroid/support/v4/az0;->new:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "polynomial is not a field polynomial for GF(2^m)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "t must be less than n = 2^m"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "t must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, " m is too large"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "m must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public do()I
    .locals 1

    iget v0, p0, Landroid/support/v4/az0;->new:I

    return v0
.end method

.method public for()I
    .locals 1

    iget v0, p0, Landroid/support/v4/az0;->for:I

    return v0
.end method

.method public if()I
    .locals 1

    iget v0, p0, Landroid/support/v4/az0;->do:I

    return v0
.end method

.method public new()I
    .locals 1

    iget v0, p0, Landroid/support/v4/az0;->if:I

    return v0
.end method
