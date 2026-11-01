.class public abstract Landroid/support/v4/jg2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/jg2$do;
    }
.end annotation


# static fields
.field public static final do:I = 0x20

.field private static final for:I = 0x76d06

.field public static final if:I = 0x20

.field private static final new:I = 0x1db42


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static case([I[I)V
    .locals 2

    invoke-static {}, Landroid/support/v4/lg2;->goto()[I

    move-result-object v0

    invoke-static {}, Landroid/support/v4/lg2;->goto()[I

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Landroid/support/v4/lg2;->new([I[I[I[I)V

    invoke-static {v0, v0}, Landroid/support/v4/lg2;->finally([I[I)V

    invoke-static {v1, v1}, Landroid/support/v4/lg2;->finally([I[I)V

    invoke-static {v0, v1, p0}, Landroid/support/v4/lg2;->public([I[I[I)V

    invoke-static {v0, v1, v0}, Landroid/support/v4/lg2;->private([I[I[I)V

    const p0, 0x1db42

    invoke-static {v0, p0, p1}, Landroid/support/v4/lg2;->native([II[I)V

    invoke-static {p1, v1, p1}, Landroid/support/v4/lg2;->do([I[I[I)V

    invoke-static {p1, v0, p1}, Landroid/support/v4/lg2;->public([I[I[I)V

    return-void
.end method

.method public static do([BI[BI[BI)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/support/v4/jg2;->goto([BI[BI[BI)V

    const/16 p0, 0x20

    invoke-static {p4, p5, p0}, Landroid/support/v4/q3;->try([BII)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static else()V
    .locals 0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/do;->transient()V

    return-void
.end method

.method private static for([BI[I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, p1

    invoke-static {p0, v2}, Landroid/support/v4/jg2;->if([BI)I

    move-result v2

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    aget p0, p2, v0

    and-int/lit8 p0, p0, -0x8

    aput p0, p2, v0

    const/4 p0, 0x7

    aget p1, p2, p0

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    aput p1, p2, p0

    aget p1, p2, p0

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    aput p1, p2, p0

    return-void
.end method

.method public static goto([BI[BI[BI)V
    .locals 10

    const/16 v0, 0x8

    new-array v0, v0, [I

    invoke-static {p0, p1, v0}, Landroid/support/v4/jg2;->for([BI[I)V

    invoke-static {}, Landroid/support/v4/lg2;->goto()[I

    move-result-object p0

    invoke-static {p2, p3, p0}, Landroid/support/v4/lg2;->catch([BI[I)V

    invoke-static {}, Landroid/support/v4/lg2;->goto()[I

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p2, p1, p2}, Landroid/support/v4/lg2;->else([II[II)V

    invoke-static {}, Landroid/support/v4/lg2;->goto()[I

    move-result-object p3

    const/4 v1, 0x1

    aput v1, p3, p2

    invoke-static {}, Landroid/support/v4/lg2;->goto()[I

    move-result-object v2

    aput v1, v2, p2

    invoke-static {}, Landroid/support/v4/lg2;->goto()[I

    move-result-object v3

    invoke-static {}, Landroid/support/v4/lg2;->goto()[I

    move-result-object v4

    invoke-static {}, Landroid/support/v4/lg2;->goto()[I

    move-result-object v5

    const/16 v6, 0xfe

    const/4 v7, 0x1

    :goto_0
    invoke-static {v2, v3, v4, v2}, Landroid/support/v4/lg2;->new([I[I[I[I)V

    invoke-static {p1, p3, v3, p1}, Landroid/support/v4/lg2;->new([I[I[I[I)V

    invoke-static {v4, p1, v4}, Landroid/support/v4/lg2;->public([I[I[I)V

    invoke-static {v2, v3, v2}, Landroid/support/v4/lg2;->public([I[I[I)V

    invoke-static {v3, v3}, Landroid/support/v4/lg2;->finally([I[I)V

    invoke-static {p1, p1}, Landroid/support/v4/lg2;->finally([I[I)V

    invoke-static {v3, p1, v5}, Landroid/support/v4/lg2;->private([I[I[I)V

    const v8, 0x1db42

    invoke-static {v5, v8, p3}, Landroid/support/v4/lg2;->native([II[I)V

    invoke-static {p3, p1, p3}, Landroid/support/v4/lg2;->do([I[I[I)V

    invoke-static {p3, v5, p3}, Landroid/support/v4/lg2;->public([I[I[I)V

    invoke-static {p1, v3, p1}, Landroid/support/v4/lg2;->public([I[I[I)V

    invoke-static {v4, v2, v2, v3}, Landroid/support/v4/lg2;->new([I[I[I[I)V

    invoke-static {v2, v2}, Landroid/support/v4/lg2;->finally([I[I)V

    invoke-static {v3, v3}, Landroid/support/v4/lg2;->finally([I[I)V

    invoke-static {v3, p0, v3}, Landroid/support/v4/lg2;->public([I[I[I)V

    add-int/lit8 v6, v6, -0x1

    ushr-int/lit8 v8, v6, 0x5

    and-int/lit8 v9, v6, 0x1f

    aget v8, v0, v8

    ushr-int/2addr v8, v9

    and-int/2addr v8, v1

    xor-int/2addr v7, v8

    invoke-static {v7, p1, v2}, Landroid/support/v4/lg2;->break(I[I[I)V

    invoke-static {v7, p3, v3}, Landroid/support/v4/lg2;->break(I[I[I)V

    const/4 v7, 0x3

    if-ge v6, v7, :cond_1

    :goto_1
    if-ge p2, v7, :cond_0

    invoke-static {p1, p3}, Landroid/support/v4/jg2;->case([I[I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    invoke-static {p3, p3}, Landroid/support/v4/lg2;->while([I[I)V

    invoke-static {p1, p3, p1}, Landroid/support/v4/lg2;->public([I[I[I)V

    invoke-static {p1}, Landroid/support/v4/lg2;->static([I)V

    invoke-static {p1, p4, p5}, Landroid/support/v4/lg2;->final([I[BI)V

    return-void

    :cond_1
    move v7, v8

    goto :goto_0
.end method

.method private static if([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static new(Ljava/security/SecureRandom;[B)V
    .locals 1

    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 p0, 0x0

    aget-byte v0, p1, p0

    and-int/lit16 v0, v0, 0xf8

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    const/16 p0, 0x1f

    aget-byte v0, p1, p0

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    aget-byte v0, p1, p0

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    return-void
.end method

.method public static this([BI[BI)V
    .locals 3

    invoke-static {}, Landroid/support/v4/lg2;->goto()[I

    move-result-object v0

    invoke-static {}, Landroid/support/v4/lg2;->goto()[I

    move-result-object v1

    invoke-static {}, Landroid/support/v4/jg2$do;->do()Landroid/support/v4/jg2$do;

    move-result-object v2

    invoke-static {v2, p0, p1, v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/do;->b(Landroid/support/v4/jg2$do;[BI[I[I)V

    invoke-static {v1, v0, v0, v1}, Landroid/support/v4/lg2;->new([I[I[I[I)V

    invoke-static {v1, v1}, Landroid/support/v4/lg2;->while([I[I)V

    invoke-static {v0, v1, v0}, Landroid/support/v4/lg2;->public([I[I[I)V

    invoke-static {v0}, Landroid/support/v4/lg2;->static([I)V

    invoke-static {v0, p2, p3}, Landroid/support/v4/lg2;->final([I[BI)V

    return-void
.end method

.method public static try([BI[BI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/jg2;->this([BI[BI)V

    return-void
.end method
