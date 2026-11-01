.class Lcom/bumptech/glide/load/resource/bitmap/try$case;
.super Lcom/bumptech/glide/load/resource/bitmap/try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "case"
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

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method
