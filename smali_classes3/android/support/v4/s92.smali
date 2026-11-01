.class public Landroid/support/v4/s92;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final break:I = 0x16

.field public static final case:I = 0x12

.field public static final catch:I = 0x17

.field public static final class:I = 0x40

.field public static final const:I = 0x41

.field public static final else:I = 0x13

.field public static final final:I = 0x42

.field public static final for:I = 0x1

.field public static final goto:I = 0x14

.field public static final if:I = 0x0

.field public static final import:I = 0x46

.field public static final native:I = 0x47

.field public static final new:I = 0x10

.field public static final public:I = 0x48

.field public static final return:I = 0x49

.field public static final static:I = 0x4a

.field public static final super:I = 0x43

.field public static final switch:I = 0x4b

.field public static final this:I = 0x15

.field public static final throw:I = 0x44

.field public static final try:I = 0x11

.field public static final while:I = 0x45


# instance fields
.field private do:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/s92;->do:I

    return-void
.end method

.method public static break(I)Landroid/support/v4/s92;
    .locals 2

    new-instance v0, Landroid/support/v4/s92;

    shl-int/lit8 p0, p0, 0x8

    const/high16 v1, 0x17000000

    or-int/2addr p0, v1

    invoke-direct {v0, p0}, Landroid/support/v4/s92;-><init>(I)V

    return-object v0
.end method

.method public static catch(I)Landroid/support/v4/s92;
    .locals 2

    new-instance v0, Landroid/support/v4/s92;

    shl-int/lit8 p0, p0, 0x10

    const/high16 v1, 0x16000000

    or-int/2addr p0, v1

    invoke-direct {v0, p0}, Landroid/support/v4/s92;-><init>(I)V

    return-object v0
.end method

.method public static class(I)Landroid/support/v4/s92;
    .locals 2

    const v0, 0xffff

    and-int/2addr p0, v0

    new-instance v0, Landroid/support/v4/s92;

    shl-int/lit8 p0, p0, 0x8

    const/high16 v1, 0x10000000

    or-int/2addr p0, v1

    invoke-direct {v0, p0}, Landroid/support/v4/s92;-><init>(I)V

    return-object v0
.end method

.method public static const(I)Landroid/support/v4/s92;
    .locals 2

    new-instance v0, Landroid/support/v4/s92;

    shl-int/lit8 p0, p0, 0x8

    const/high16 v1, 0x42000000    # 32.0f

    or-int/2addr p0, v1

    invoke-direct {v0, p0}, Landroid/support/v4/s92;-><init>(I)V

    return-object v0
.end method

.method public static final(II)Landroid/support/v4/s92;
    .locals 1

    new-instance v0, Landroid/support/v4/s92;

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    invoke-direct {v0, p0}, Landroid/support/v4/s92;-><init>(I)V

    return-object v0
.end method

.method public static super(III)Landroid/support/v4/s92;
    .locals 1

    new-instance v0, Landroid/support/v4/s92;

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    invoke-direct {v0, p0}, Landroid/support/v4/s92;-><init>(I)V

    return-object v0
.end method

.method public static throw(II)Landroid/support/v4/s92;
    .locals 1

    new-instance v0, Landroid/support/v4/s92;

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    invoke-direct {v0, p0}, Landroid/support/v4/s92;-><init>(I)V

    return-object v0
.end method

.method public static while(I)Landroid/support/v4/s92;
    .locals 1

    new-instance v0, Landroid/support/v4/s92;

    shl-int/lit8 p0, p0, 0x18

    invoke-direct {v0, p0}, Landroid/support/v4/s92;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public case()I
    .locals 1

    iget v0, p0, Landroid/support/v4/s92;->do:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public do()I
    .locals 2

    iget v0, p0, Landroid/support/v4/s92;->do:I

    const v1, 0xffff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public else()I
    .locals 2

    iget v0, p0, Landroid/support/v4/s92;->do:I

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public for()I
    .locals 1

    iget v0, p0, Landroid/support/v4/s92;->do:I

    ushr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public goto()I
    .locals 2

    iget v0, p0, Landroid/support/v4/s92;->do:I

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public if()I
    .locals 2

    iget v0, p0, Landroid/support/v4/s92;->do:I

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public new()I
    .locals 2

    iget v0, p0, Landroid/support/v4/s92;->do:I

    const v1, 0xffff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    return v0
.end method

.method public this()I
    .locals 1

    iget v0, p0, Landroid/support/v4/s92;->do:I

    return v0
.end method

.method public try()I
    .locals 2

    iget v0, p0, Landroid/support/v4/s92;->do:I

    const v1, 0xffff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method
