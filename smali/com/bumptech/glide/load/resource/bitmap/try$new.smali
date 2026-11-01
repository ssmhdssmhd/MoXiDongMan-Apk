.class Lcom/bumptech/glide/load/resource/bitmap/try$new;
.super Lcom/bumptech/glide/load/resource/bitmap/try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/try;-><init>()V

    return-void
.end method


# virtual methods
.method public do(IIII)Lcom/bumptech/glide/load/resource/bitmap/try$else;
    .locals 0

    .line 1
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/try$else;->QUALITY:Lcom/bumptech/glide/load/resource/bitmap/try$else;

    return-object p1
.end method

.method public if(IIII)F
    .locals 0

    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    int-to-float p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 1
    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method
