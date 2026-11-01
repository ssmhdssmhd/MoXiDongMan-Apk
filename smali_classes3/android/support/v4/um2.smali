.class public abstract Landroid/support/v4/um2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final case:I = 0x2

.field public static final do:B = 0x0t

.field public static final else:I = 0xf

.field public static final for:B = 0x2t

.field public static final if:B = 0x1t

.field public static final new:I = 0x3

.field public static final try:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static for(Landroid/support/v4/um2;BB)B
    .locals 4

    invoke-virtual {p0}, Landroid/support/v4/um2;->case()[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/um2;->try()I

    move-result v1

    mul-int v1, v1, p2

    invoke-virtual {p0}, Landroid/support/v4/um2;->do()[I

    move-result-object v2

    and-int/lit16 v3, p1, 0xff

    shr-int/lit8 v3, v3, 0x3

    aget v2, v2, v3

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x2

    shr-int/2addr v2, p1

    and-int/lit8 v2, v2, 0xf

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    invoke-virtual {p0}, Landroid/support/v4/um2;->try()I

    move-result v1

    mul-int p2, p2, v1

    invoke-virtual {p0}, Landroid/support/v4/um2;->do()[I

    move-result-object p0

    aget p0, p0, v3

    shr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0xf

    add-int/2addr p2, p0

    and-int/lit16 p0, p2, 0xff

    and-int/lit8 p0, p0, 0x7

    shl-int/lit8 p0, p0, 0x2

    shr-int p0, v0, p0

    and-int/lit8 p0, p0, 0xf

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method


# virtual methods
.method public abstract case()[I
.end method

.method public abstract do()[I
.end method

.method public abstract if()Ljava/lang/String;
.end method

.method public abstract new()Z
.end method

.method public abstract try()I
.end method
