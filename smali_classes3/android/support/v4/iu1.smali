.class public Landroid/support/v4/iu1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final case:I = 0x1a93

.field public static final do:[I

.field private static final for:[I

.field public static final if:[I

.field private static final new:I = -0x1

.field private static final try:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/iu1;->do:[I

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/v4/iu1;->if:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/support/v4/iu1;->for:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1a93
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x2c23069
        0x3526
        0x1
        0x0
        0x0
        0x0
        0x0
        -0x3526
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x2c23069
        -0x3527
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        0x3525
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break(I[I)V
    .locals 2

    const/16 v0, 0x1a93

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Landroid/support/v4/j21;->throws(II[II)I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x6

    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_2

    sget-object p0, Landroid/support/v4/iu1;->do:[I

    invoke-static {p1, p0}, Landroid/support/v4/j21;->while([I[I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x7

    invoke-static {p0, v0, p1}, Landroid/support/v4/q21;->new(II[I)I

    :cond_2
    return-void
.end method

.method public static case([I[I[I)V
    .locals 1

    invoke-static {}, Landroid/support/v4/j21;->catch()[I

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/support/v4/j21;->return([I[I[I)V

    invoke-static {v0, p2}, Landroid/support/v4/iu1;->this([I[I)V

    return-void
.end method

.method public static catch([I[I)V
    .locals 1

    invoke-static {}, Landroid/support/v4/j21;->catch()[I

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/j21;->volatile([I[I)V

    invoke-static {v0, p1}, Landroid/support/v4/iu1;->this([I[I)V

    return-void
.end method

.method public static class([II[I)V
    .locals 1

    invoke-static {}, Landroid/support/v4/j21;->catch()[I

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/j21;->volatile([I[I)V

    :goto_0
    invoke-static {v0, p2}, Landroid/support/v4/iu1;->this([I[I)V

    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Landroid/support/v4/j21;->volatile([I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static const([I[I[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/support/v4/j21;->protected([I[I[I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    const/16 p1, 0x1a93

    invoke-static {p0, p1, p2}, Landroid/support/v4/q21;->M(II[I)I

    :cond_0
    return-void
.end method

.method public static do([I[I[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/support/v4/j21;->if([I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x6

    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    sget-object p0, Landroid/support/v4/iu1;->do:[I

    invoke-static {p2, p0}, Landroid/support/v4/j21;->while([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x7

    const/16 p1, 0x1a93

    invoke-static {p0, p1, p2}, Landroid/support/v4/q21;->new(II[I)I

    :cond_1
    return-void
.end method

.method public static else([I[I[I)V
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/support/v4/j21;->extends([I[I[I)I

    move-result p0

    const/16 p1, 0xe

    if-nez p0, :cond_0

    const/16 p0, 0xd

    aget p0, p2, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Landroid/support/v4/iu1;->if:[I

    invoke-static {p1, p2, p0}, Landroid/support/v4/q21;->volatile(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    sget-object p0, Landroid/support/v4/iu1;->for:[I

    array-length v0, p0

    invoke-static {v0, p0, p2}, Landroid/support/v4/q21;->const(I[I[I)I

    move-result v0

    if-eqz v0, :cond_1

    array-length p0, p0

    invoke-static {p1, p2, p0}, Landroid/support/v4/q21;->transient(I[II)I

    :cond_1
    return-void
.end method

.method public static final([I[I[I)V
    .locals 1

    const/16 v0, 0xe

    invoke-static {v0, p0, p1, p2}, Landroid/support/v4/q21;->J(I[I[I[I)I

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/support/v4/iu1;->for:[I

    array-length p1, p0

    invoke-static {p1, p0, p2}, Landroid/support/v4/q21;->V(I[I[I)I

    move-result p1

    if-eqz p1, :cond_0

    array-length p0, p0

    invoke-static {v0, p2, p0}, Landroid/support/v4/q21;->package(I[II)I

    :cond_0
    return-void
.end method

.method public static for([I[I)V
    .locals 2

    const/4 v0, 0x7

    invoke-static {v0, p0, p1}, Landroid/support/v4/q21;->protected(I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x6

    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    sget-object p0, Landroid/support/v4/iu1;->do:[I

    invoke-static {p1, p0}, Landroid/support/v4/j21;->while([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/16 p0, 0x1a93

    invoke-static {v0, p0, p1}, Landroid/support/v4/q21;->new(II[I)I

    :cond_1
    return-void
.end method

.method public static goto([I[I)V
    .locals 1

    invoke-static {p0}, Landroid/support/v4/j21;->native([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/j21;->a([I)V

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/support/v4/iu1;->do:[I

    invoke-static {v0, p0, p1}, Landroid/support/v4/j21;->protected([I[I[I)I

    :goto_0
    return-void
.end method

.method public static if([I[I[I)V
    .locals 1

    const/16 v0, 0xe

    invoke-static {v0, p0, p1, p2}, Landroid/support/v4/q21;->do(I[I[I[I)I

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0xd

    aget p0, p2, p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    sget-object p0, Landroid/support/v4/iu1;->if:[I

    invoke-static {v0, p2, p0}, Landroid/support/v4/q21;->volatile(I[I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    sget-object p0, Landroid/support/v4/iu1;->for:[I

    array-length p1, p0

    invoke-static {p1, p0, p2}, Landroid/support/v4/q21;->const(I[I[I)I

    move-result p1

    if-eqz p1, :cond_1

    array-length p0, p0

    invoke-static {v0, p2, p0}, Landroid/support/v4/q21;->transient(I[II)I

    :cond_1
    return-void
.end method

.method public static new(Ljava/math/BigInteger;)[I
    .locals 2

    invoke-static {p0}, Landroid/support/v4/j21;->final(Ljava/math/BigInteger;)[I

    move-result-object p0

    const/4 v0, 0x6

    aget v0, p0, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/support/v4/iu1;->do:[I

    invoke-static {p0, v0}, Landroid/support/v4/j21;->while([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    const/16 v1, 0x1a93

    invoke-static {v0, v1, p0}, Landroid/support/v4/q21;->new(II[I)I

    :cond_0
    return-object p0
.end method

.method public static super([I[I)V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Landroid/support/v4/q21;->w(I[II[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x6

    aget p0, p1, p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    sget-object p0, Landroid/support/v4/iu1;->do:[I

    invoke-static {p1, p0}, Landroid/support/v4/j21;->while([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/16 p0, 0x1a93

    invoke-static {v0, p0, p1}, Landroid/support/v4/q21;->new(II[I)I

    :cond_1
    return-void
.end method

.method public static this([I[I)V
    .locals 7

    const/16 v0, 0x1a93

    const/4 v2, 0x7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Landroid/support/v4/j21;->static(I[II[II[II)J

    move-result-wide v0

    const/16 p0, 0x1a93

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Landroid/support/v4/j21;->switch(IJ[II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x6

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/support/v4/iu1;->do:[I

    invoke-static {p1, v0}, Landroid/support/v4/j21;->while([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x7

    invoke-static {v0, p0, p1}, Landroid/support/v4/q21;->new(II[I)I

    :cond_1
    return-void
.end method

.method public static try([I[I)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x7

    if-nez v1, :cond_0

    invoke-static {v2, p0, v0, p1}, Landroid/support/v4/q21;->n(I[II[I)I

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/support/v4/iu1;->do:[I

    invoke-static {p0, v0, p1}, Landroid/support/v4/j21;->if([I[I[I)I

    move-result p0

    invoke-static {v2, p1, p0}, Landroid/support/v4/q21;->k(I[II)I

    :goto_0
    return-void
.end method
