.class public final Landroid/support/v4/e92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final a:I = 0x4

.field private static final abstract:I = 0x1

.field private static final b:I = 0x8

.field private static final break:[[B

.field private static final c:I = 0x28

.field private static final catch:I = 0x1

.field private static final class:I = 0x0

.field private static final const:I = 0x0

.field private static final continue:I = 0x169

.field private static final d:I = 0x2020202

.field private static final default:I = 0x0

.field private static final e:I = 0x1010101

.field private static final extends:I = 0x0

.field private static final f:I = 0x9

.field private static final final:I = 0x1

.field private static final finally:I = 0x1

.field private static final implements:I = 0x10

.field private static final import:I = 0x1

.field private static final instanceof:I = 0x100

.field private static final interface:I = 0x14d

.field private static final native:I = 0x1

.field private static final package:I = 0x1

.field private static final private:I = 0x0

.field private static final protected:I = 0x10

.field private static final public:I = 0x0

.field private static final return:I = 0x1

.field private static final static:I = 0x1

.field private static final strictfp:I = 0xb4

.field private static final super:I = 0x1

.field private static final switch:I = 0x0

.field private static final synchronized:I = 0x0

.field private static final throw:I = 0x0

.field private static final throws:I = 0x0

.field private static final transient:I = 0x10

.field private static final volatile:I = 0x5a

.field private static final while:I


# instance fields
.field private case:[I

.field private do:Z

.field private else:[I

.field private for:[I

.field private goto:I

.field private if:[I

.field private new:[I

.field private this:[B

.field private try:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/16 v1, 0x100

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Landroid/support/v4/e92;->break:[[B

    return-void

    :array_0
    .array-data 1
        -0x57t
        0x67t
        -0x4dt
        -0x18t
        0x4t
        -0x3t
        -0x5dt
        0x76t
        -0x66t
        -0x6et
        -0x80t
        0x78t
        -0x1ct
        -0x23t
        -0x2ft
        0x38t
        0xdt
        -0x3at
        0x35t
        -0x68t
        0x18t
        -0x9t
        -0x14t
        0x6ct
        0x43t
        0x75t
        0x37t
        0x26t
        -0x6t
        0x13t
        -0x6ct
        0x48t
        -0xet
        -0x30t
        -0x75t
        0x30t
        -0x7ct
        0x54t
        -0x21t
        0x23t
        0x19t
        0x5bt
        0x3dt
        0x59t
        -0xdt
        -0x52t
        -0x5et
        -0x7et
        0x63t
        0x1t
        -0x7dt
        0x2et
        -0x27t
        0x51t
        -0x65t
        0x7ct
        -0x5at
        -0x15t
        -0x5bt
        -0x42t
        0x16t
        0xct
        -0x1dt
        0x61t
        -0x40t
        -0x74t
        0x3at
        -0xbt
        0x73t
        0x2ct
        0x25t
        0xbt
        -0x45t
        0x4et
        -0x77t
        0x6bt
        0x53t
        0x6at
        -0x4ct
        -0xft
        -0x1ft
        -0x1at
        -0x43t
        0x45t
        -0x1et
        -0xct
        -0x4at
        0x66t
        -0x34t
        -0x6bt
        0x3t
        0x56t
        -0x2ct
        0x1ct
        0x1et
        -0x29t
        -0x5t
        -0x3dt
        -0x72t
        -0x4bt
        -0x17t
        -0x31t
        -0x41t
        -0x46t
        -0x16t
        0x77t
        0x39t
        -0x51t
        0x33t
        -0x37t
        0x62t
        0x71t
        -0x7ft
        0x79t
        0x9t
        -0x53t
        0x24t
        -0x33t
        -0x7t
        -0x28t
        -0x1bt
        -0x3bt
        -0x47t
        0x4dt
        0x44t
        0x8t
        -0x7at
        -0x19t
        -0x5ft
        0x1dt
        -0x56t
        -0x13t
        0x6t
        0x70t
        -0x4et
        -0x2et
        0x41t
        0x7bt
        -0x60t
        0x11t
        0x31t
        -0x3et
        0x27t
        -0x70t
        0x20t
        -0xat
        0x60t
        -0x1t
        -0x6at
        0x5ct
        -0x4ft
        -0x55t
        -0x62t
        -0x64t
        0x52t
        0x1bt
        0x5ft
        -0x6dt
        0xat
        -0x11t
        -0x6ft
        -0x7bt
        0x49t
        -0x12t
        0x2dt
        0x4ft
        -0x71t
        0x3bt
        0x47t
        -0x79t
        0x6dt
        0x46t
        -0x2at
        0x3et
        0x69t
        0x64t
        0x2at
        -0x32t
        -0x35t
        0x2ft
        -0x4t
        -0x69t
        0x5t
        0x7at
        -0x54t
        0x7ft
        -0x2bt
        0x1at
        0x4bt
        0xet
        -0x59t
        0x5at
        0x28t
        0x14t
        0x3ft
        0x29t
        -0x78t
        0x3ct
        0x4ct
        0x2t
        -0x48t
        -0x26t
        -0x50t
        0x17t
        0x55t
        0x1ft
        -0x76t
        0x7dt
        0x57t
        -0x39t
        -0x73t
        0x74t
        -0x49t
        -0x3ct
        -0x61t
        0x72t
        0x7et
        0x15t
        0x22t
        0x12t
        0x58t
        0x7t
        -0x67t
        0x34t
        0x6et
        0x50t
        -0x22t
        0x68t
        0x65t
        -0x44t
        -0x25t
        -0x8t
        -0x38t
        -0x58t
        0x2bt
        0x40t
        -0x24t
        -0x2t
        0x32t
        -0x5ct
        -0x36t
        0x10t
        0x21t
        -0x10t
        -0x2dt
        0x5dt
        0xft
        0x0t
        0x6ft
        -0x63t
        0x36t
        0x42t
        0x4at
        0x5et
        -0x3ft
        -0x20t
    .end array-data

    :array_1
    .array-data 1
        0x75t
        -0xdt
        -0x3at
        -0xct
        -0x25t
        0x7bt
        -0x5t
        -0x38t
        0x4at
        -0x2dt
        -0x1at
        0x6bt
        0x45t
        0x7dt
        -0x18t
        0x4bt
        -0x2at
        0x32t
        -0x28t
        -0x3t
        0x37t
        0x71t
        -0xft
        -0x1ft
        0x30t
        0xft
        -0x8t
        0x1bt
        -0x79t
        -0x6t
        0x6t
        0x3ft
        0x5et
        -0x46t
        -0x52t
        0x5bt
        -0x76t
        0x0t
        -0x44t
        -0x63t
        0x6dt
        -0x3ft
        -0x4ft
        0xet
        -0x80t
        0x5dt
        -0x2et
        -0x2bt
        -0x60t
        -0x7ct
        0x7t
        0x14t
        -0x4bt
        -0x70t
        0x2ct
        -0x5dt
        -0x4et
        0x73t
        0x4ct
        0x54t
        -0x6et
        0x74t
        0x36t
        0x51t
        0x38t
        -0x50t
        -0x43t
        0x5at
        -0x4t
        0x60t
        0x62t
        -0x6at
        0x6ct
        0x42t
        -0x9t
        0x10t
        0x7ct
        0x28t
        0x27t
        -0x74t
        0x13t
        -0x6bt
        -0x64t
        -0x39t
        0x24t
        0x46t
        0x3bt
        0x70t
        -0x36t
        -0x1dt
        -0x7bt
        -0x35t
        0x11t
        -0x30t
        -0x6dt
        -0x48t
        -0x5at
        -0x7dt
        0x20t
        -0x1t
        -0x61t
        0x77t
        -0x3dt
        -0x34t
        0x3t
        0x6ft
        0x8t
        -0x41t
        0x40t
        -0x19t
        0x2bt
        -0x1et
        0x79t
        0xct
        -0x56t
        -0x7et
        0x41t
        0x3at
        -0x16t
        -0x47t
        -0x1ct
        -0x66t
        -0x5ct
        -0x69t
        0x7et
        -0x26t
        0x7at
        0x17t
        0x66t
        -0x6ct
        -0x5ft
        0x1dt
        0x3dt
        -0x10t
        -0x22t
        -0x4dt
        0xbt
        0x72t
        -0x59t
        0x1ct
        -0x11t
        -0x2ft
        0x53t
        0x3et
        -0x71t
        0x33t
        0x26t
        0x5ft
        -0x14t
        0x76t
        0x2at
        0x49t
        -0x7ft
        -0x78t
        -0x12t
        0x21t
        -0x3ct
        0x1at
        -0x15t
        -0x27t
        -0x3bt
        0x39t
        -0x67t
        -0x33t
        -0x53t
        0x31t
        -0x75t
        0x1t
        0x18t
        0x23t
        -0x23t
        0x1ft
        0x4et
        0x2dt
        -0x7t
        0x48t
        0x4ft
        -0xet
        0x65t
        -0x72t
        0x78t
        0x5ct
        0x58t
        0x19t
        -0x73t
        -0x1bt
        -0x68t
        0x57t
        0x67t
        0x7ft
        0x5t
        0x64t
        -0x51t
        0x63t
        -0x4at
        -0x2t
        -0xbt
        -0x49t
        0x3ct
        -0x5bt
        -0x32t
        -0x17t
        0x68t
        0x44t
        -0x20t
        0x4dt
        0x43t
        0x69t
        0x29t
        0x2et
        -0x54t
        0x15t
        0x59t
        -0x58t
        0xat
        -0x62t
        0x6et
        0x47t
        -0x21t
        0x34t
        0x35t
        0x6at
        -0x31t
        -0x24t
        0x22t
        -0x37t
        -0x40t
        -0x65t
        -0x77t
        -0x2ct
        -0x13t
        -0x55t
        0x12t
        -0x5et
        0xdt
        0x52t
        -0x45t
        0x2t
        0x2ft
        -0x57t
        -0x29t
        0x61t
        0x1et
        -0x4ct
        0x50t
        0x4t
        -0xat
        -0x3et
        0x16t
        0x25t
        -0x7at
        0x56t
        0x55t
        0x9t
        -0x42t
        -0x6ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/e92;->do:Z

    const/16 v1, 0x100

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/v4/e92;->if:[I

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/v4/e92;->for:[I

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/v4/e92;->new:[I

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/v4/e92;->try:[I

    iput v0, p0, Landroid/support/v4/e92;->goto:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v4/e92;->this:[B

    const/4 v2, 0x2

    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v2, v2, [I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    sget-object v6, Landroid/support/v4/e92;->break:[[B

    aget-object v7, v6, v0

    aget-byte v7, v7, v5

    and-int/lit16 v7, v7, 0xff

    aput v7, v3, v0

    invoke-direct {p0, v7}, Landroid/support/v4/e92;->goto(I)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    aput v8, v4, v0

    invoke-direct {p0, v7}, Landroid/support/v4/e92;->this(I)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    aput v7, v2, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aget-byte v6, v6, v5

    and-int/lit16 v6, v6, 0xff

    aput v6, v3, v7

    invoke-direct {p0, v6}, Landroid/support/v4/e92;->goto(I)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    aput v8, v4, v7

    invoke-direct {p0, v6}, Landroid/support/v4/e92;->this(I)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v2, v7

    iget-object v6, p0, Landroid/support/v4/e92;->if:[I

    aget v8, v3, v7

    aget v9, v4, v7

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    aget v9, v2, v7

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    aget v9, v2, v7

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v8, v9

    aput v8, v6, v5

    iget-object v6, p0, Landroid/support/v4/e92;->for:[I

    aget v8, v2, v0

    aget v9, v2, v0

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    aget v9, v4, v0

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    aget v9, v3, v0

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v8, v9

    aput v8, v6, v5

    iget-object v6, p0, Landroid/support/v4/e92;->new:[I

    aget v8, v4, v7

    aget v9, v2, v7

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    aget v9, v3, v7

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    aget v7, v2, v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v7, v8

    aput v7, v6, v5

    iget-object v6, p0, Landroid/support/v4/e92;->try:[I

    aget v7, v4, v0

    aget v8, v3, v0

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    aget v8, v2, v0

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    aget v8, v4, v0

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v7, v8

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private break(II)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    invoke-direct {p0, p2}, Landroid/support/v4/e92;->catch(I)I

    move-result p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    xor-int/2addr p1, p2

    :goto_1
    if-ge v0, v2, :cond_1

    invoke-direct {p0, p1}, Landroid/support/v4/e92;->catch(I)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return p1
.end method

.method private case(I)I
    .locals 1

    shr-int/lit8 v0, p1, 0x1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/16 p1, 0xb4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v0

    return p1
.end method

.method private catch(I)I
    .locals 5

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x1

    and-int/lit16 v2, v0, 0x80

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/16 v2, 0x14d

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    xor-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v2, v0, 0x1

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_1

    const/16 v3, 0xa6

    :cond_1
    xor-int/2addr v2, v3

    xor-int/2addr v2, v1

    shl-int/lit8 p1, p1, 0x8

    shl-int/lit8 v3, v2, 0x18

    xor-int/2addr p1, v3

    shl-int/lit8 v1, v1, 0x10

    xor-int/2addr p1, v1

    shl-int/lit8 v1, v2, 0x8

    xor-int/2addr p1, v1

    xor-int/2addr p1, v0

    return p1
.end method

.method private class(I)I
    .locals 0

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private const(I)I
    .locals 0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private do(I[BI)V
    .locals 2

    int-to-byte v0, p1

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x3

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    return-void
.end method

.method private else(I)I
    .locals 3

    shr-int/lit8 v0, p1, 0x2

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0xb4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v0, v1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    const/16 v2, 0x5a

    :cond_1
    xor-int p1, v0, v2

    return p1
.end method

.method private final(I)I
    .locals 0

    ushr-int/lit8 p1, p1, 0x10

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private for(I[I)I
    .locals 11

    invoke-direct {p0, p1}, Landroid/support/v4/e92;->class(I)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/support/v4/e92;->const(I)I

    move-result v1

    invoke-direct {p0, p1}, Landroid/support/v4/e92;->final(I)I

    move-result v2

    invoke-direct {p0, p1}, Landroid/support/v4/e92;->super(I)I

    move-result p1

    const/4 v3, 0x0

    aget v4, p2, v3

    const/4 v5, 0x1

    aget v6, p2, v5

    const/4 v7, 0x2

    aget v8, p2, v7

    const/4 v9, 0x3

    aget p2, p2, v9

    iget v10, p0, Landroid/support/v4/e92;->goto:I

    and-int/2addr v10, v9

    if-eqz v10, :cond_1

    if-eq v10, v5, :cond_0

    if-eq v10, v7, :cond_3

    if-eq v10, v9, :cond_2

    goto/16 :goto_1

    :cond_0
    iget-object p2, p0, Landroid/support/v4/e92;->if:[I

    sget-object v6, Landroid/support/v4/e92;->break:[[B

    aget-object v7, v6, v3

    aget-byte v0, v7, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v4}, Landroid/support/v4/e92;->class(I)I

    move-result v7

    xor-int/2addr v0, v7

    aget p2, p2, v0

    iget-object v0, p0, Landroid/support/v4/e92;->for:[I

    aget-object v3, v6, v3

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v4}, Landroid/support/v4/e92;->const(I)I

    move-result v3

    xor-int/2addr v1, v3

    aget v0, v0, v1

    xor-int/2addr p2, v0

    iget-object v0, p0, Landroid/support/v4/e92;->new:[I

    aget-object v1, v6, v5

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v4}, Landroid/support/v4/e92;->final(I)I

    move-result v2

    xor-int/2addr v1, v2

    aget v0, v0, v1

    xor-int/2addr p2, v0

    iget-object v0, p0, Landroid/support/v4/e92;->try:[I

    aget-object v1, v6, v5

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, v4}, Landroid/support/v4/e92;->super(I)I

    move-result v1

    xor-int/2addr p1, v1

    aget p1, v0, p1

    goto/16 :goto_0

    :cond_1
    sget-object v7, Landroid/support/v4/e92;->break:[[B

    aget-object v9, v7, v5

    aget-byte v0, v9, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, p2}, Landroid/support/v4/e92;->class(I)I

    move-result v9

    xor-int/2addr v0, v9

    aget-object v9, v7, v3

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, p2}, Landroid/support/v4/e92;->const(I)I

    move-result v9

    xor-int/2addr v1, v9

    aget-object v9, v7, v3

    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, p2}, Landroid/support/v4/e92;->final(I)I

    move-result v9

    xor-int/2addr v2, v9

    aget-object v7, v7, v5

    aget-byte p1, v7, p1

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, p2}, Landroid/support/v4/e92;->super(I)I

    move-result p2

    xor-int/2addr p1, p2

    :cond_2
    sget-object p2, Landroid/support/v4/e92;->break:[[B

    aget-object v7, p2, v5

    aget-byte v0, v7, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v8}, Landroid/support/v4/e92;->class(I)I

    move-result v7

    xor-int/2addr v0, v7

    aget-object v7, p2, v5

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v8}, Landroid/support/v4/e92;->const(I)I

    move-result v7

    xor-int/2addr v1, v7

    aget-object v7, p2, v3

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v8}, Landroid/support/v4/e92;->final(I)I

    move-result v7

    xor-int/2addr v2, v7

    aget-object p2, p2, v3

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, v8}, Landroid/support/v4/e92;->super(I)I

    move-result p2

    xor-int/2addr p1, p2

    :cond_3
    iget-object p2, p0, Landroid/support/v4/e92;->if:[I

    sget-object v7, Landroid/support/v4/e92;->break:[[B

    aget-object v8, v7, v3

    aget-object v9, v7, v3

    aget-byte v0, v9, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v6}, Landroid/support/v4/e92;->class(I)I

    move-result v9

    xor-int/2addr v0, v9

    aget-byte v0, v8, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v4}, Landroid/support/v4/e92;->class(I)I

    move-result v8

    xor-int/2addr v0, v8

    aget p2, p2, v0

    iget-object v0, p0, Landroid/support/v4/e92;->for:[I

    aget-object v8, v7, v3

    aget-object v9, v7, v5

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v6}, Landroid/support/v4/e92;->const(I)I

    move-result v9

    xor-int/2addr v1, v9

    aget-byte v1, v8, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v4}, Landroid/support/v4/e92;->const(I)I

    move-result v8

    xor-int/2addr v1, v8

    aget v0, v0, v1

    xor-int/2addr p2, v0

    iget-object v0, p0, Landroid/support/v4/e92;->new:[I

    aget-object v1, v7, v5

    aget-object v3, v7, v3

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v6}, Landroid/support/v4/e92;->final(I)I

    move-result v3

    xor-int/2addr v2, v3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v4}, Landroid/support/v4/e92;->final(I)I

    move-result v2

    xor-int/2addr v1, v2

    aget v0, v0, v1

    xor-int/2addr p2, v0

    iget-object v0, p0, Landroid/support/v4/e92;->try:[I

    aget-object v1, v7, v5

    aget-object v2, v7, v5

    aget-byte p1, v2, p1

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, v6}, Landroid/support/v4/e92;->super(I)I

    move-result v2

    xor-int/2addr p1, v2

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, v4}, Landroid/support/v4/e92;->super(I)I

    move-result v1

    xor-int/2addr p1, v1

    aget p1, v0, p1

    :goto_0
    xor-int v3, p2, p1

    :goto_1
    return v3
.end method

.method private goto(I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/e92;->else(I)I

    move-result v0

    xor-int/2addr p1, v0

    return p1
.end method

.method private if([BI)I
    .locals 2

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    return p1
.end method

.method private import([B)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v5, v2, [I

    const/16 v6, 0x28

    new-array v6, v6, [I

    iput-object v6, v0, Landroid/support/v4/e92;->case:[I

    iget v6, v0, Landroid/support/v4/e92;->goto:I

    const/4 v7, 0x1

    if-lt v6, v7, :cond_8

    if-gt v6, v2, :cond_7

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_0
    iget v9, v0, Landroid/support/v4/e92;->goto:I

    if-ge v8, v9, :cond_0

    mul-int/lit8 v9, v8, 0x8

    invoke-direct {v0, v1, v9}, Landroid/support/v4/e92;->if([BI)I

    move-result v10

    aput v10, v3, v8

    add-int/2addr v9, v2

    invoke-direct {v0, v1, v9}, Landroid/support/v4/e92;->if([BI)I

    move-result v9

    aput v9, v4, v8

    iget v9, v0, Landroid/support/v4/e92;->goto:I

    sub-int/2addr v9, v7

    sub-int/2addr v9, v8

    aget v10, v3, v8

    aget v11, v4, v8

    invoke-direct {v0, v10, v11}, Landroid/support/v4/e92;->break(II)I

    move-result v10

    aput v10, v5, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    const v2, 0x2020202

    mul-int v2, v2, v1

    invoke-direct {v0, v2, v3}, Landroid/support/v4/e92;->for(I[I)I

    move-result v8

    const v9, 0x1010101

    add-int/2addr v2, v9

    invoke-direct {v0, v2, v4}, Landroid/support/v4/e92;->for(I[I)I

    move-result v2

    shl-int/lit8 v9, v2, 0x8

    ushr-int/lit8 v2, v2, 0x18

    or-int/2addr v2, v9

    add-int/2addr v8, v2

    iget-object v9, v0, Landroid/support/v4/e92;->case:[I

    mul-int/lit8 v10, v1, 0x2

    aput v8, v9, v10

    add-int/2addr v8, v2

    add-int/2addr v10, v7

    shl-int/lit8 v2, v8, 0x9

    ushr-int/lit8 v8, v8, 0x17

    or-int/2addr v2, v8

    aput v2, v9, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    aget v1, v5, v6

    aget v2, v5, v7

    const/4 v3, 0x2

    aget v4, v5, v3

    const/4 v8, 0x3

    aget v5, v5, v8

    const/16 v9, 0x400

    new-array v9, v9, [I

    iput-object v9, v0, Landroid/support/v4/e92;->else:[I

    const/4 v9, 0x0

    :goto_2
    const/16 v10, 0x100

    if-ge v9, v10, :cond_6

    iget v10, v0, Landroid/support/v4/e92;->goto:I

    and-int/2addr v10, v8

    if-eqz v10, :cond_5

    if-eq v10, v7, :cond_4

    if-eq v10, v3, :cond_3

    if-eq v10, v8, :cond_2

    goto/16 :goto_5

    :cond_2
    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    goto/16 :goto_3

    :cond_3
    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    goto/16 :goto_4

    :cond_4
    iget-object v10, v0, Landroid/support/v4/e92;->else:[I

    mul-int/lit8 v11, v9, 0x2

    iget-object v12, v0, Landroid/support/v4/e92;->if:[I

    sget-object v13, Landroid/support/v4/e92;->break:[[B

    aget-object v14, v13, v6

    aget-byte v14, v14, v9

    and-int/lit16 v14, v14, 0xff

    invoke-direct {v0, v1}, Landroid/support/v4/e92;->class(I)I

    move-result v15

    xor-int/2addr v14, v15

    aget v12, v12, v14

    aput v12, v10, v11

    iget-object v10, v0, Landroid/support/v4/e92;->else:[I

    add-int/lit8 v12, v11, 0x1

    iget-object v14, v0, Landroid/support/v4/e92;->for:[I

    aget-object v15, v13, v6

    aget-byte v15, v15, v9

    and-int/lit16 v15, v15, 0xff

    invoke-direct {v0, v1}, Landroid/support/v4/e92;->const(I)I

    move-result v16

    xor-int v15, v15, v16

    aget v14, v14, v15

    aput v14, v10, v12

    iget-object v10, v0, Landroid/support/v4/e92;->else:[I

    add-int/lit16 v12, v11, 0x200

    iget-object v14, v0, Landroid/support/v4/e92;->new:[I

    aget-object v15, v13, v7

    aget-byte v15, v15, v9

    and-int/lit16 v15, v15, 0xff

    invoke-direct {v0, v1}, Landroid/support/v4/e92;->final(I)I

    move-result v16

    xor-int v15, v15, v16

    aget v14, v14, v15

    aput v14, v10, v12

    iget-object v10, v0, Landroid/support/v4/e92;->else:[I

    add-int/lit16 v11, v11, 0x201

    iget-object v12, v0, Landroid/support/v4/e92;->try:[I

    aget-object v13, v13, v7

    aget-byte v13, v13, v9

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v1}, Landroid/support/v4/e92;->super(I)I

    move-result v14

    xor-int/2addr v13, v14

    aget v12, v12, v13

    aput v12, v10, v11

    goto/16 :goto_5

    :cond_5
    sget-object v10, Landroid/support/v4/e92;->break:[[B

    aget-object v11, v10, v7

    aget-byte v11, v11, v9

    and-int/lit16 v11, v11, 0xff

    invoke-direct {v0, v5}, Landroid/support/v4/e92;->class(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget-object v12, v10, v6

    aget-byte v12, v12, v9

    and-int/lit16 v12, v12, 0xff

    invoke-direct {v0, v5}, Landroid/support/v4/e92;->const(I)I

    move-result v13

    xor-int/2addr v12, v13

    aget-object v13, v10, v6

    aget-byte v13, v13, v9

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v5}, Landroid/support/v4/e92;->final(I)I

    move-result v14

    xor-int/2addr v13, v14

    aget-object v10, v10, v7

    aget-byte v10, v10, v9

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v5}, Landroid/support/v4/e92;->super(I)I

    move-result v14

    xor-int/2addr v10, v14

    :goto_3
    sget-object v14, Landroid/support/v4/e92;->break:[[B

    aget-object v15, v14, v7

    aget-byte v11, v15, v11

    and-int/lit16 v11, v11, 0xff

    invoke-direct {v0, v4}, Landroid/support/v4/e92;->class(I)I

    move-result v15

    xor-int/2addr v11, v15

    aget-object v15, v14, v7

    aget-byte v12, v15, v12

    and-int/lit16 v12, v12, 0xff

    invoke-direct {v0, v4}, Landroid/support/v4/e92;->const(I)I

    move-result v15

    xor-int/2addr v12, v15

    aget-object v15, v14, v6

    aget-byte v13, v15, v13

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v4}, Landroid/support/v4/e92;->final(I)I

    move-result v15

    xor-int/2addr v13, v15

    aget-object v14, v14, v6

    aget-byte v10, v14, v10

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v4}, Landroid/support/v4/e92;->super(I)I

    move-result v14

    xor-int/2addr v10, v14

    :goto_4
    iget-object v14, v0, Landroid/support/v4/e92;->else:[I

    mul-int/lit8 v15, v9, 0x2

    iget-object v3, v0, Landroid/support/v4/e92;->if:[I

    sget-object v16, Landroid/support/v4/e92;->break:[[B

    aget-object v17, v16, v6

    aget-object v18, v16, v6

    aget-byte v11, v18, v11

    and-int/lit16 v11, v11, 0xff

    invoke-direct {v0, v2}, Landroid/support/v4/e92;->class(I)I

    move-result v18

    xor-int v11, v11, v18

    aget-byte v11, v17, v11

    and-int/lit16 v11, v11, 0xff

    invoke-direct {v0, v1}, Landroid/support/v4/e92;->class(I)I

    move-result v17

    xor-int v11, v11, v17

    aget v3, v3, v11

    aput v3, v14, v15

    iget-object v3, v0, Landroid/support/v4/e92;->else:[I

    add-int/lit8 v11, v15, 0x1

    iget-object v14, v0, Landroid/support/v4/e92;->for:[I

    aget-object v17, v16, v6

    aget-object v18, v16, v7

    aget-byte v12, v18, v12

    and-int/lit16 v12, v12, 0xff

    invoke-direct {v0, v2}, Landroid/support/v4/e92;->const(I)I

    move-result v18

    xor-int v12, v12, v18

    aget-byte v12, v17, v12

    and-int/lit16 v12, v12, 0xff

    invoke-direct {v0, v1}, Landroid/support/v4/e92;->const(I)I

    move-result v17

    xor-int v12, v12, v17

    aget v12, v14, v12

    aput v12, v3, v11

    iget-object v3, v0, Landroid/support/v4/e92;->else:[I

    add-int/lit16 v11, v15, 0x200

    iget-object v12, v0, Landroid/support/v4/e92;->new:[I

    aget-object v14, v16, v7

    aget-object v17, v16, v6

    aget-byte v13, v17, v13

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v2}, Landroid/support/v4/e92;->final(I)I

    move-result v17

    xor-int v13, v13, v17

    aget-byte v13, v14, v13

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v1}, Landroid/support/v4/e92;->final(I)I

    move-result v14

    xor-int/2addr v13, v14

    aget v12, v12, v13

    aput v12, v3, v11

    iget-object v3, v0, Landroid/support/v4/e92;->else:[I

    add-int/lit16 v15, v15, 0x201

    iget-object v11, v0, Landroid/support/v4/e92;->try:[I

    aget-object v12, v16, v7

    aget-object v13, v16, v7

    aget-byte v10, v13, v10

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v2}, Landroid/support/v4/e92;->super(I)I

    move-result v13

    xor-int/2addr v10, v13

    aget-byte v10, v12, v10

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v1}, Landroid/support/v4/e92;->super(I)I

    move-result v12

    xor-int/2addr v10, v12

    aget v10, v11, v10

    aput v10, v3, v15

    :goto_5
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x2

    goto/16 :goto_2

    :cond_6
    return-void

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Key size larger than 256 bits"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Key size less than 64 bits"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v1

    :goto_7
    goto :goto_6
.end method

.method private new(I)I
    .locals 3

    iget-object v0, p0, Landroid/support/v4/e92;->else:[I

    and-int/lit16 v1, p1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v1, v0, v1

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, v0, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x200

    aget v2, v0, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    mul-int/lit8 p1, p1, 0x2

    add-int/lit16 p1, p1, 0x201

    aget p1, v0, p1

    xor-int/2addr p1, v1

    return p1
.end method

.method private super(I)I
    .locals 0

    ushr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private this(I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/e92;->case(I)I

    move-result v0

    xor-int/2addr v0, p1

    invoke-direct {p0, p1}, Landroid/support/v4/e92;->else(I)I

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method private throw([BI[BI)V
    .locals 10

    invoke-direct {p0, p1, p2}, Landroid/support/v4/e92;->if([BI)I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/e92;->case:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Landroid/support/v4/e92;->if([BI)I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/e92;->case:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    xor-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x8

    invoke-direct {p0, p1, v2}, Landroid/support/v4/e92;->if([BI)I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/e92;->case:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    xor-int/2addr v2, v3

    add-int/lit8 p2, p2, 0xc

    invoke-direct {p0, p1, p2}, Landroid/support/v4/e92;->if([BI)I

    move-result p1

    iget-object p2, p0, Landroid/support/v4/e92;->case:[I

    const/4 v3, 0x7

    aget p2, p2, v3

    xor-int/2addr p1, p2

    const/4 p2, 0x0

    const/16 v3, 0x27

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x10

    if-ge v4, v5, :cond_0

    invoke-direct {p0, v0}, Landroid/support/v4/e92;->new(I)I

    move-result v5

    invoke-direct {p0, v1}, Landroid/support/v4/e92;->try(I)I

    move-result v6

    mul-int/lit8 v7, v6, 0x2

    add-int/2addr v7, v5

    iget-object v8, p0, Landroid/support/v4/e92;->case:[I

    add-int/lit8 v9, v3, -0x1

    aget v3, v8, v3

    add-int/2addr v7, v3

    xor-int/2addr p1, v7

    shl-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v2, v2, 0x1f

    or-int/2addr v2, v3

    add-int/2addr v5, v6

    add-int/lit8 v3, v9, -0x1

    aget v6, v8, v9

    add-int/2addr v5, v6

    xor-int/2addr v2, v5

    ushr-int/lit8 v5, p1, 0x1

    shl-int/lit8 p1, p1, 0x1f

    or-int/2addr p1, v5

    invoke-direct {p0, v2}, Landroid/support/v4/e92;->new(I)I

    move-result v5

    invoke-direct {p0, p1}, Landroid/support/v4/e92;->try(I)I

    move-result v6

    mul-int/lit8 v7, v6, 0x2

    add-int/2addr v7, v5

    iget-object v8, p0, Landroid/support/v4/e92;->case:[I

    add-int/lit8 v9, v3, -0x1

    aget v3, v8, v3

    add-int/2addr v7, v3

    xor-int/2addr v1, v7

    shl-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v0, v0, 0x1f

    or-int/2addr v0, v3

    add-int/2addr v5, v6

    add-int/lit8 v3, v9, -0x1

    aget v6, v8, v9

    add-int/2addr v5, v6

    xor-int/2addr v0, v5

    ushr-int/lit8 v5, v1, 0x1

    shl-int/lit8 v1, v1, 0x1f

    or-int/2addr v1, v5

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/support/v4/e92;->case:[I

    aget p2, v3, p2

    xor-int/2addr p2, v2

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v4/e92;->do(I[BI)V

    iget-object p2, p0, Landroid/support/v4/e92;->case:[I

    const/4 v2, 0x1

    aget p2, p2, v2

    xor-int/2addr p1, p2

    add-int/lit8 p2, p4, 0x4

    invoke-direct {p0, p1, p3, p2}, Landroid/support/v4/e92;->do(I[BI)V

    iget-object p1, p0, Landroid/support/v4/e92;->case:[I

    const/4 p2, 0x2

    aget p1, p1, p2

    xor-int/2addr p1, v0

    add-int/lit8 p2, p4, 0x8

    invoke-direct {p0, p1, p3, p2}, Landroid/support/v4/e92;->do(I[BI)V

    iget-object p1, p0, Landroid/support/v4/e92;->case:[I

    const/4 p2, 0x3

    aget p1, p1, p2

    xor-int/2addr p1, v1

    add-int/lit8 p4, p4, 0xc

    invoke-direct {p0, p1, p3, p4}, Landroid/support/v4/e92;->do(I[BI)V

    return-void
.end method

.method private try(I)I
    .locals 3

    iget-object v0, p0, Landroid/support/v4/e92;->else:[I

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v1, v0, v1

    and-int/lit16 v2, p1, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, v0, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x200

    aget v2, v0, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 p1, p1, 0x10

    and-int/lit16 p1, p1, 0xff

    mul-int/lit8 p1, p1, 0x2

    add-int/lit16 p1, p1, 0x201

    aget p1, v0, p1

    xor-int/2addr p1, v1

    return p1
.end method

.method private while([BI[BI)V
    .locals 11

    invoke-direct {p0, p1, p2}, Landroid/support/v4/e92;->if([BI)I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/e92;->case:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Landroid/support/v4/e92;->if([BI)I

    move-result v1

    iget-object v3, p0, Landroid/support/v4/e92;->case:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    xor-int/2addr v1, v3

    add-int/lit8 v3, p2, 0x8

    invoke-direct {p0, p1, v3}, Landroid/support/v4/e92;->if([BI)I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/e92;->case:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    xor-int/2addr v3, v4

    add-int/lit8 p2, p2, 0xc

    invoke-direct {p0, p1, p2}, Landroid/support/v4/e92;->if([BI)I

    move-result p1

    iget-object p2, p0, Landroid/support/v4/e92;->case:[I

    const/4 v4, 0x3

    aget p2, p2, v4

    xor-int/2addr p1, p2

    const/16 p2, 0x8

    :goto_0
    const/16 v4, 0x10

    if-ge v2, v4, :cond_0

    invoke-direct {p0, v0}, Landroid/support/v4/e92;->new(I)I

    move-result v4

    invoke-direct {p0, v1}, Landroid/support/v4/e92;->try(I)I

    move-result v6

    add-int v7, v4, v6

    iget-object v8, p0, Landroid/support/v4/e92;->case:[I

    add-int/lit8 v9, p2, 0x1

    aget p2, v8, p2

    add-int/2addr v7, p2

    xor-int p2, v3, v7

    ushr-int/lit8 v3, p2, 0x1

    shl-int/lit8 p2, p2, 0x1f

    or-int/2addr v3, p2

    shl-int/lit8 p2, p1, 0x1

    ushr-int/lit8 p1, p1, 0x1f

    or-int/2addr p1, p2

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    add-int/lit8 p2, v9, 0x1

    aget v6, v8, v9

    add-int/2addr v4, v6

    xor-int/2addr p1, v4

    invoke-direct {p0, v3}, Landroid/support/v4/e92;->new(I)I

    move-result v4

    invoke-direct {p0, p1}, Landroid/support/v4/e92;->try(I)I

    move-result v6

    add-int v7, v4, v6

    iget-object v8, p0, Landroid/support/v4/e92;->case:[I

    add-int/lit8 v9, p2, 0x1

    aget p2, v8, p2

    add-int/2addr v7, p2

    xor-int p2, v0, v7

    ushr-int/lit8 v0, p2, 0x1

    shl-int/lit8 p2, p2, 0x1f

    or-int/2addr v0, p2

    shl-int/lit8 p2, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr p2, v1

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    add-int/lit8 v1, v9, 0x1

    aget v6, v8, v9

    add-int/2addr v4, v6

    xor-int/2addr p2, v4

    add-int/lit8 v2, v2, 0x2

    move v10, v1

    move v1, p2

    move p2, v10

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroid/support/v4/e92;->case:[I

    const/4 v2, 0x4

    aget p2, p2, v2

    xor-int/2addr p2, v3

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v4/e92;->do(I[BI)V

    iget-object p2, p0, Landroid/support/v4/e92;->case:[I

    const/4 v2, 0x5

    aget p2, p2, v2

    xor-int/2addr p1, p2

    add-int/lit8 p2, p4, 0x4

    invoke-direct {p0, p1, p3, p2}, Landroid/support/v4/e92;->do(I[BI)V

    iget-object p1, p0, Landroid/support/v4/e92;->case:[I

    const/4 p2, 0x6

    aget p1, p1, p2

    xor-int/2addr p1, v0

    add-int/lit8 p2, p4, 0x8

    invoke-direct {p0, p1, p3, p2}, Landroid/support/v4/e92;->do(I[BI)V

    iget-object p1, p0, Landroid/support/v4/e92;->case:[I

    const/4 p2, 0x7

    aget p1, p1, p2

    xor-int/2addr p1, v1

    add-int/lit8 p4, p4, 0xc

    invoke-direct {p0, p1, p3, p4}, Landroid/support/v4/e92;->do(I[BI)V

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Twofish"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    instance-of v0, p2, Landroid/support/v4/gr0;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroid/support/v4/e92;->do:Z

    check-cast p2, Landroid/support/v4/gr0;

    invoke-virtual {p2}, Landroid/support/v4/gr0;->do()[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/e92;->this:[B

    array-length p2, p1

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Landroid/support/v4/e92;->goto:I

    invoke-direct {p0, p1}, Landroid/support/v4/e92;->import([B)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameter passed to Twofish init - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBlock([BI[BI)I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/e92;->this:[B

    if-eqz v0, :cond_3

    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-gt v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/e92;->do:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/e92;->while([BI[BI)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/e92;->throw([BI[BI)V

    :goto_0
    const/16 p1, 0x10

    return p1

    :cond_1
    new-instance p1, Landroid/support/v4/f91;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Landroid/support/v4/f91;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Landroid/support/v4/tw;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Landroid/support/v4/tw;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Twofish not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/e92;->this:[B

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroid/support/v4/e92;->import([B)V

    :cond_0
    return-void
.end method
