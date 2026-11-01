.class public Lorg/chromium/base/metrics/RecordHistogram;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/cx0;
.end annotation

.annotation runtime Landroid/support/v4/lo0;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/metrics/RecordHistogram$Natives;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break(Ljava/lang/String;JJJI)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lorg/chromium/base/metrics/RecordHistogram;->catch(Ljava/lang/String;JJJI)V

    return-void
.end method

.method public static case(Ljava/lang/String;I)V
    .locals 6

    .line 1
    invoke-static {}, Lorg/chromium/base/metrics/else;->do()Lorg/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    const/4 v3, 0x1

    const/16 v4, 0x3e8

    const/16 v5, 0x32

    move-object v1, p0

    move v2, p1

    invoke-interface/range {v0 .. v5}, Lorg/chromium/base/metrics/UmaRecorder;->recordExponentialHistogram(Ljava/lang/String;IIII)V

    return-void
.end method

.method private static catch(Ljava/lang/String;JJJI)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/metrics/else;->do()Lorg/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    .line 2
    invoke-static {p1, p2}, Lorg/chromium/base/metrics/RecordHistogram;->do(J)I

    move-result v1

    invoke-static {p3, p4}, Lorg/chromium/base/metrics/RecordHistogram;->do(J)I

    move-result p4

    invoke-static {p5, p6}, Lorg/chromium/base/metrics/RecordHistogram;->do(J)I

    move-result p5

    move-object p1, v0

    move-object p2, p0

    move p3, v1

    move p6, p7

    .line 3
    invoke-interface/range {p1 .. p6}, Lorg/chromium/base/metrics/UmaRecorder;->recordExponentialHistogram(Ljava/lang/String;IIII)V

    return-void
.end method

.method public static class(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/chromium/base/metrics/RecordHistogram;->const(Ljava/lang/String;II)V

    return-void
.end method

.method public static const(Ljava/lang/String;II)V
    .locals 6

    add-int/lit8 v5, p2, 0x1

    .line 1
    invoke-static {}, Lorg/chromium/base/metrics/else;->do()Lorg/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lorg/chromium/base/metrics/UmaRecorder;->recordLinearHistogram(Ljava/lang/String;IIII)V

    return-void
.end method

.method private static do(J)I
    .locals 3

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    const/high16 p0, -0x80000000

    return p0

    :cond_1
    long-to-int p1, p0

    return p1
.end method

.method public static else(Ljava/lang/String;I)V
    .locals 6

    .line 1
    invoke-static {}, Lorg/chromium/base/metrics/else;->do()Lorg/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    const/4 v3, 0x1

    const/16 v4, 0x64

    const/16 v5, 0x32

    move-object v1, p0

    move v2, p1

    invoke-interface/range {v0 .. v5}, Lorg/chromium/base/metrics/UmaRecorder;->recordExponentialHistogram(Ljava/lang/String;IIII)V

    return-void
.end method

.method public static final(Ljava/lang/String;IIII)V
    .locals 6

    .line 1
    invoke-static {}, Lorg/chromium/base/metrics/else;->do()Lorg/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/chromium/base/metrics/UmaRecorder;->recordLinearHistogram(Ljava/lang/String;IIII)V

    return-void
.end method

.method public static for(Ljava/lang/String;I)I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Lorg/chromium/base/metrics/new;->if()Lorg/chromium/base/metrics/RecordHistogram$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/base/metrics/RecordHistogram$Natives;->getHistogramValueCountForTesting(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static goto(Ljava/lang/String;I)V
    .locals 6

    .line 1
    invoke-static {}, Lorg/chromium/base/metrics/else;->do()Lorg/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    const/4 v3, 0x1

    const v4, 0xf4240

    const/16 v5, 0x32

    move-object v1, p0

    move v2, p1

    invoke-interface/range {v0 .. v5}, Lorg/chromium/base/metrics/UmaRecorder;->recordExponentialHistogram(Ljava/lang/String;IIII)V

    return-void
.end method

.method public static if(Ljava/lang/String;)I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Lorg/chromium/base/metrics/new;->if()Lorg/chromium/base/metrics/RecordHistogram$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/chromium/base/metrics/RecordHistogram$Natives;->getHistogramTotalCountForTesting(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static import(Ljava/lang/String;I)V
    .locals 6

    .line 1
    invoke-static {}, Lorg/chromium/base/metrics/else;->do()Lorg/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    const/16 v3, 0x3e8

    const v4, 0x7a120

    const/16 v5, 0x32

    move-object v1, p0

    move v2, p1

    invoke-interface/range {v0 .. v5}, Lorg/chromium/base/metrics/UmaRecorder;->recordExponentialHistogram(Ljava/lang/String;IIII)V

    return-void
.end method

.method public static native(Ljava/lang/String;I)V
    .locals 1

    const/16 v0, 0x65

    .line 1
    invoke-static {p0, p1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->const(Ljava/lang/String;II)V

    return-void
.end method

.method public static new(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/metrics/else;->do()Lorg/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/base/metrics/UmaRecorder;->recordBooleanHistogram(Ljava/lang/String;Z)V

    return-void
.end method

.method public static public(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/metrics/else;->do()Lorg/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/base/metrics/UmaRecorder;->recordSparseHistogram(Ljava/lang/String;I)V

    return-void
.end method

.method public static return(Ljava/lang/String;J)V
    .locals 8

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x2710

    const/16 v7, 0x32

    move-object v0, p0

    move-wide v1, p1

    .line 1
    invoke-static/range {v0 .. v7}, Lorg/chromium/base/metrics/RecordHistogram;->catch(Ljava/lang/String;JJJI)V

    return-void
.end method

.method public static super(Ljava/lang/String;J)V
    .locals 8

    const-wide/16 v3, 0x1

    const-wide/32 v5, 0x36ee80

    const/16 v7, 0x32

    move-object v0, p0

    move-wide v1, p1

    .line 1
    invoke-static/range {v0 .. v7}, Lorg/chromium/base/metrics/RecordHistogram;->catch(Ljava/lang/String;JJJI)V

    return-void
.end method

.method public static this(Ljava/lang/String;IIII)V
    .locals 6

    .line 1
    invoke-static {}, Lorg/chromium/base/metrics/else;->do()Lorg/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/chromium/base/metrics/UmaRecorder;->recordExponentialHistogram(Ljava/lang/String;IIII)V

    return-void
.end method

.method public static throw(Ljava/lang/String;J)V
    .locals 8

    const-wide/16 v3, 0x1

    const-wide/32 v5, 0x36ee80

    const/16 v7, 0x64

    move-object v0, p0

    move-wide v1, p1

    .line 1
    invoke-static/range {v0 .. v7}, Lorg/chromium/base/metrics/RecordHistogram;->catch(Ljava/lang/String;JJJI)V

    return-void
.end method

.method public static try(Ljava/lang/String;I)V
    .locals 6

    .line 1
    invoke-static {}, Lorg/chromium/base/metrics/else;->do()Lorg/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    const/4 v3, 0x1

    const v4, 0x186a0

    const/16 v5, 0x32

    move-object v1, p0

    move v2, p1

    invoke-interface/range {v0 .. v5}, Lorg/chromium/base/metrics/UmaRecorder;->recordExponentialHistogram(Ljava/lang/String;IIII)V

    return-void
.end method

.method public static while(Ljava/lang/String;J)V
    .locals 8

    const-wide/16 v3, 0xa

    const-wide/32 v5, 0x2bf20

    const/16 v7, 0x32

    move-object v0, p0

    move-wide v1, p1

    .line 1
    invoke-static/range {v0 .. v7}, Lorg/chromium/base/metrics/RecordHistogram;->catch(Ljava/lang/String;JJJI)V

    return-void
.end method
