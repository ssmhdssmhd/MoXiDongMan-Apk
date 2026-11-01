.class Lcom/bumptech/glide/load/resource/bitmap/try$for;
.super Lcom/bumptech/glide/load/resource/bitmap/try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
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
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/try$for;->if(IIII)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/try$else;->QUALITY:Lcom/bumptech/glide/load/resource/bitmap/try$else;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/try;->for:Lcom/bumptech/glide/load/resource/bitmap/try;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/try;->do(IIII)Lcom/bumptech/glide/load/resource/bitmap/try$else;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public if(IIII)F
    .locals 1

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/try;->for:Lcom/bumptech/glide/load/resource/bitmap/try;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/try;->if(IIII)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 3
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method
