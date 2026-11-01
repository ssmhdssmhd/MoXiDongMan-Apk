.class final Lorg/brotli/dec/case;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/brotli/dec/case$new;,
        Lorg/brotli/dec/case$for;,
        Lorg/brotli/dec/case$if;,
        Lorg/brotli/dec/case$do;
    }
.end annotation


# static fields
.field public static final do:[I

.field public static final for:I = 0x4

.field public static final if:[I

.field public static final new:I = 0x18

.field public static final try:I = 0x25


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x19

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lorg/brotli/dec/case;->do:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lorg/brotli/dec/case;->if:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1000
        0x2400
        0x5400
        0x8c00
        0xac00
        0xd000
        0xf800
        0x12400
        0x15400
        0x16e00
        0x18a00
        0x19900
        0x1a100
        0x1a980
        0x1bb80
        0x1c500
        0x1cf00
        0x1d440
        0x1d9c0
        0x1dca0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0xa
        0xa
        0xb
        0xb
        0xa
        0xa
        0xa
        0xa
        0xa
        0x9
        0x9
        0x8
        0x7
        0x7
        0x8
        0x7
        0x7
        0x6
        0x6
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do()[B
    .locals 1

    .line 1
    sget-object v0, Lorg/brotli/dec/case$new;->do:[B

    return-object v0
.end method
