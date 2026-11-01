.class Lcc/shinichi/library/glide/sunfusheng/progress/do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$InternalProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcc/shinichi/library/glide/sunfusheng/progress/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcc/shinichi/library/glide/sunfusheng/progress/do;->new(Ljava/lang/String;)Lcc/shinichi/library/glide/sunfusheng/progress/OnProgressListener;

    move-result-object v0

    if-eqz v0, :cond_1

    long-to-float v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    long-to-float v2, p4

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v3, v1

    const/16 v1, 0x64

    if-lt v3, v1, :cond_0

    const/4 v1, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_0
    move-object v1, p1

    move v2, v8

    move-wide v4, p2

    move-wide v6, p4

    .line 2
    invoke-interface/range {v0 .. v7}, Lcc/shinichi/library/glide/sunfusheng/progress/OnProgressListener;->onProgress(Ljava/lang/String;ZIJJ)V

    if-eqz v8, :cond_1

    .line 3
    invoke-static {p1}, Lcc/shinichi/library/glide/sunfusheng/progress/do;->try(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
