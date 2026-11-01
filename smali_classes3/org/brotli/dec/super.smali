.class final Lorg/brotli/dec/super;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final break:I = 0x9

.field public static final case:I = 0x5

.field public static final catch:I = 0xa

.field public static final class:I = 0xb

.field public static final const:I = 0xc

.field public static final do:I = 0x0

.field public static final else:I = 0x6

.field public static final final:I = 0xd

.field public static final for:I = 0x2

.field public static final goto:I = 0x7

.field public static final if:I = 0x1

.field public static final import:I = 0x11

.field public static final native:I = 0x12

.field public static final new:I = 0x3

.field public static final public:I = 0x13

.field public static final return:I = 0x14

.field public static final super:I = 0xe

.field public static final this:I = 0x8

.field public static final throw:I = 0xf

.field public static final try:I = 0x4

.field public static final while:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(I)I
    .locals 1

    const/16 v0, 0xc

    if-lt p0, v0, :cond_0

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static if(I)I
    .locals 1

    const/16 v0, 0x9

    if-gt p0, v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
