.class public final Landroid/support/v4/bi0;
.super Landroid/support/v4/p9;
.source "SourceFile"


# static fields
.field private static final case:[B

.field private static final try:Ljava/lang/String; = "com.bumptech.glide.load.resource.bitmap.GranularRoundedCorners"


# instance fields
.field private final do:F

.field private final for:F

.field private final if:F

.field private final new:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/Key;->CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.GranularRoundedCorners"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroid/support/v4/bi0;->case:[B

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/p9;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v4/bi0;->do:F

    .line 3
    iput p2, p0, Landroid/support/v4/bi0;->if:F

    .line 4
    iput p3, p0, Landroid/support/v4/bi0;->for:F

    .line 5
    iput p4, p0, Landroid/support/v4/bi0;->new:F

    return-void
.end method


# virtual methods
.method public do(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p1    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v2, p0, Landroid/support/v4/bi0;->do:F

    iget v3, p0, Landroid/support/v4/bi0;->if:F

    iget v4, p0, Landroid/support/v4/bi0;->for:F

    iget v5, p0, Landroid/support/v4/bi0;->new:F

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->throw(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;FFFF)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/support/v4/bi0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/support/v4/bi0;

    .line 3
    iget v0, p0, Landroid/support/v4/bi0;->do:F

    iget v2, p1, Landroid/support/v4/bi0;->do:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v4/bi0;->if:F

    iget v2, p1, Landroid/support/v4/bi0;->if:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v4/bi0;->for:F

    iget v2, p1, Landroid/support/v4/bi0;->for:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v4/bi0;->new:F

    iget p1, p1, Landroid/support/v4/bi0;->new:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/bi0;->do:F

    invoke-static {v0}, Lcom/bumptech/glide/util/case;->class(F)I

    move-result v0

    const v1, -0x78051026

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/case;->super(II)I

    move-result v0

    .line 2
    iget v1, p0, Landroid/support/v4/bi0;->if:F

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/case;->const(FI)I

    move-result v0

    .line 3
    iget v1, p0, Landroid/support/v4/bi0;->for:F

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/case;->const(FI)I

    move-result v0

    .line 4
    iget v1, p0, Landroid/support/v4/bi0;->new:F

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/case;->const(FI)I

    move-result v0

    return v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroid/support/v4/bi0;->case:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    const/16 v0, 0x10

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/bi0;->do:F

    .line 3
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/bi0;->if:F

    .line 4
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/bi0;->for:F

    .line 5
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/bi0;->new:F

    .line 6
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
