.class public Landroid/support/v4/r30;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:I = 0x4c

.field public static final B:I = 0x4d

.field public static final C:I = 0x4e

.field public static final D:I = 0x50

.field public static final E:I = 0x51

.field public static final F:I = 0x52

.field public static final G:I = 0x3d

.field public static final H:I = 0x1

.field public static final I:I = 0x2

.field public static final J:I = 0x3

.field public static final K:I = 0x4

.field public static final L:I = 0x5

.field public static final M:I = 0x6

.field public static final N:I = 0x7

.field public static final O:I = 0x8

.field public static final P:I = 0xa

.field public static final Q:I = 0xb

.field public static final R:I = 0xc

.field public static final S:I = 0xd

.field public static final T:I = 0xe

.field public static final U:I = 0xf

.field public static final V:I = 0x13

.field public static final W:I = 0x18

.field public static final X:I = 0x19

.field public static final Y:I = 0x1a

.field public static final Z:I = 0x1b

.field public static final a:I = 0x2f

.field public static final a0:I = 0x1c

.field public static final abstract:I = 0x25

.field public static final b:I = 0x30

.field public static final b0:I = 0x1d

.field public static final break:I = 0xf

.field public static final c:I = 0x32

.field public static final c0:I = 0x1e

.field public static final case:I = 0x6

.field public static final catch:I = 0x10

.field public static final class:I = 0x11

.field public static final const:I = 0x12

.field public static final continue:I = 0x26

.field public static final d:I = 0x33

.field public static final d0:I = 0x20

.field public static final default:I = 0x20

.field public static final do:I = 0x1

.field public static final e:I = 0x34

.field public static final e0:I = 0x21

.field public static final else:I = 0x7

.field public static final extends:I = 0x21

.field public static final f:I = 0x35

.field public static final f0:I = 0x21

.field public static final final:I = 0x13

.field public static final finally:I = 0x22

.field public static final for:I = 0x3

.field public static final g:I = 0x36

.field public static final g0:I = 0x22

.field public static final goto:I = 0x8

.field public static final h:I = 0x37

.field public static final h0:I = 0x23

.field public static final i:I = 0x37

.field public static final i0:I = 0x2e

.field public static final if:I = 0x2

.field public static final implements:I = 0x2c

.field public static final import:I = 0x18

.field public static final instanceof:I = 0x2d

.field public static final interface:I = 0x29

.field public static final j:I = 0x38

.field public static final j0:I = 0x3d

.field public static final k:I = 0x39

.field public static final k0:I = 0x48

.field public static final l:I = 0x3a

.field public static final l0:I = 0x49

.field public static final m:I = 0x3b

.field public static final m0:I = 0x4c

.field public static final n:I = 0x3c

.field public static final n0:I = 0x4e

.field public static final native:I = 0x19

.field public static final new:I = 0x4

.field public static final o:I = 0x40

.field public static final o0:I = 0x4e

.field public static final p:I = 0x41

.field public static final p0:I = 0x0

.field public static final package:I = 0x23

.field public static final private:I = 0x24

.field public static final protected:I = 0x2a

.field public static final public:I = 0x1a

.field public static final q:I = 0x42

.field public static final q0:I = 0x1

.field public static final r:I = 0x43

.field public static final return:I = 0x1b

.field public static final s:I = 0x44

.field public static final static:I = 0x1c

.field public static final strictfp:I = 0x27

.field public static final super:I = 0x14

.field public static final switch:I = 0x1d

.field public static final synchronized:I = 0x2e

.field public static final t:I = 0x45

.field public static final this:I = 0xd

.field public static final throw:I = 0x16

.field public static final throws:I = 0x1e

.field public static final transient:I = 0x2b

.field public static final try:I = 0x5

.field public static final u:I = 0x46

.field public static final v:I = 0x47

.field public static final volatile:I = 0x28

.field public static final w:I = 0x48

.field public static final while:I = 0x17

.field public static final x:I = 0x49

.field public static final y:I = 0x4a

.field public static final z:I = 0x4b


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(I)I
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x18

    const/4 v1, 0x0

    const/16 v2, 0x18

    :goto_0
    if-ltz v2, :cond_3

    shr-int v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v3, v3, 0x7f

    or-int/2addr v0, v3

    goto :goto_1

    :cond_1
    and-int/lit8 v1, v3, 0x1f

    const/16 v3, 0x1f

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    :goto_1
    add-int/lit8 v2, v2, -0x8

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method public static for(I)I
    .locals 0

    invoke-static {p0}, Landroid/support/v4/r30;->do(I)I

    move-result p0

    return p0
.end method

.method public static if(Lorg/bouncycastle/asn1/do;)I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/do;->goto()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/do;->catch()I

    move-result p0

    const/16 v1, 0x1f

    if-le p0, v1, :cond_1

    or-int/2addr v0, v1

    :goto_1
    shl-int/lit8 v0, v0, 0x8

    and-int/lit8 v1, p0, 0x7f

    or-int/2addr v0, v1

    shr-int/lit8 p0, p0, 0x7

    if-lez p0, :cond_2

    or-int/lit16 v0, v0, 0x80

    goto :goto_1

    :cond_1
    or-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method public static new(I)I
    .locals 3

    const/16 v0, 0x18

    :goto_0
    if-ltz v0, :cond_1

    const/16 v1, 0xff

    shl-int/2addr v1, v0

    and-int v2, v1, p0

    if-eqz v2, :cond_0

    xor-int/lit8 v0, v1, -0x1

    and-int/2addr p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x8

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
