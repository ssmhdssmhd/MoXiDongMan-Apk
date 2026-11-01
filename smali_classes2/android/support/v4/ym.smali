.class public Landroid/support/v4/ym;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/ym$do;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static case(I)Z
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e991687    # 0.299f

    mul-float v0, v0, v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f1645a2    # 0.587f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    const v1, 0x3de978d5    # 0.114f

    mul-float p0, p0, v1

    add-float/2addr v0, p0

    const/high16 p0, 0x43340000    # 180.0f

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static do(I)I
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 2
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 4
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float v1, v1

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v3

    float-to-int v1, v1

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    int-to-float p0, p0

    mul-float p0, p0, v3

    float-to-int p0, p0

    .line 5
    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static for(II)Landroid/content/res/ColorStateList;
    .locals 8

    .line 1
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x3

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x1

    new-array v6, v4, [I

    const v7, 0x101009e

    aput v7, v6, v5

    aput-object v6, v2, v4

    new-array v6, v5, [I

    aput-object v6, v2, v3

    new-array v1, v1, [I

    aput p0, v1, v5

    aput p1, v1, v4

    const/4 p0, -0x1

    aput p0, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public static if(I)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static new()I
    .locals 4

    .line 1
    new-instance v0, Landroid/support/v4/ym$do;

    const/16 v1, 0xff

    const/16 v2, 0x50

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/ym$do;-><init>(III)V

    invoke-virtual {v0}, Landroid/support/v4/ym$do;->if()I

    move-result v0

    return v0
.end method

.method public static try(III)I
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/ym$do;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/ym$do;-><init>(III)V

    invoke-virtual {v0}, Landroid/support/v4/ym$do;->if()I

    move-result p0

    return p0
.end method
