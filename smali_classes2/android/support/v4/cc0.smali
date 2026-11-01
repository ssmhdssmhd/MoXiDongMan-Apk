.class public final Landroid/support/v4/cc0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:I

.field private final for:[Landroid/support/v4/yn1;

.field private final if:[I


# direct methods
.method public constructor <init>(I[IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v4/cc0;->do:I

    .line 3
    iput-object p2, p0, Landroid/support/v4/cc0;->if:[I

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/support/v4/yn1;

    .line 4
    new-instance p2, Landroid/support/v4/yn1;

    int-to-float p3, p3

    int-to-float p5, p5

    invoke-direct {p2, p3, p5}, Landroid/support/v4/yn1;-><init>(FF)V

    const/4 p3, 0x0

    aput-object p2, p1, p3

    new-instance p2, Landroid/support/v4/yn1;

    int-to-float p3, p4

    invoke-direct {p2, p3, p5}, Landroid/support/v4/yn1;-><init>(FF)V

    const/4 p3, 0x1

    aput-object p2, p1, p3

    iput-object p1, p0, Landroid/support/v4/cc0;->for:[Landroid/support/v4/yn1;

    return-void
.end method


# virtual methods
.method public do()[Landroid/support/v4/yn1;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/cc0;->for:[Landroid/support/v4/yn1;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/support/v4/cc0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Landroid/support/v4/cc0;

    .line 3
    iget v0, p0, Landroid/support/v4/cc0;->do:I

    iget p1, p1, Landroid/support/v4/cc0;->do:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public for()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/cc0;->do:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/cc0;->do:I

    return v0
.end method

.method public if()[I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/cc0;->if:[I

    return-object v0
.end method
