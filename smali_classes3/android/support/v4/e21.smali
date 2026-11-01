.class public Landroid/support/v4/e21;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final abstract:I = 0xff02

.field public static final break:I = 0xa

.field public static final case:I = 0x6

.field public static final catch:I = 0xb

.field public static final class:I = 0xc

.field public static final const:I = 0xd

.field public static final default:I = 0x19

.field public static final do:I = 0x1

.field public static final else:I = 0x7

.field public static final extends:I = 0x1a

.field public static final final:I = 0xe

.field public static final finally:I = 0x1b

.field public static final for:I = 0x3

.field public static final goto:I = 0x8

.field public static final if:I = 0x2

.field public static final import:I = 0x12

.field public static final native:I = 0x13

.field public static final new:I = 0x4

.field public static final package:I = 0x1c

.field public static final private:I = 0xff01

.field public static final public:I = 0x14

.field public static final return:I = 0x15

.field public static final static:I = 0x16

.field public static final super:I = 0xf

.field public static final switch:I = 0x17

.field public static final this:I = 0x9

.field public static final throw:I = 0x10

.field public static final throws:I = 0x18

.field public static final try:I = 0x5

.field public static final while:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0x1c

    if-le p0, v1, :cond_2

    :cond_0
    const v1, 0xff01

    if-lt p0, v1, :cond_1

    const v1, 0xff02

    if-gt p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static if(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xff01
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
