.class final Lorg/chromium/base/metrics/NativeUmaRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/metrics/UmaRecorder;


# annotations
.annotation build Landroid/support/v4/cx0;
.end annotation

.annotation runtime Landroid/support/v4/lo0;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;
    }
.end annotation


# instance fields
.field private final do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/metrics/NativeUmaRecorder;->do:Ljava/util/Map;

    return-void
.end method

.method private do(Ljava/lang/String;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/base/metrics/NativeUmaRecorder;->do:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private if(Ljava/lang/String;JJ)V
    .locals 1

    cmp-long v0, p2, p4

    if-eqz v0, :cond_0

    .line 1
    iget-object p2, p0, Lorg/chromium/base/metrics/NativeUmaRecorder;->do:Ljava/util/Map;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public recordBooleanHistogram(Ljava/lang/String;Z)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/base/metrics/NativeUmaRecorder;->do(Ljava/lang/String;)J

    move-result-wide v2

    .line 2
    invoke-static {}, Lorg/chromium/base/metrics/if;->if()Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object v0

    invoke-interface {v0, p1, v2, v3, p2}, Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;->recordBooleanHistogram(Ljava/lang/String;JZ)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    .line 3
    invoke-direct/range {v0 .. v5}, Lorg/chromium/base/metrics/NativeUmaRecorder;->if(Ljava/lang/String;JJ)V

    return-void
.end method

.method public recordExponentialHistogram(Ljava/lang/String;IIII)V
    .locals 10

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/base/metrics/NativeUmaRecorder;->do(Ljava/lang/String;)J

    move-result-wide v8

    .line 2
    invoke-static {}, Lorg/chromium/base/metrics/if;->if()Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object v0

    move-object v1, p1

    move-wide v2, v8

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;->recordExponentialHistogram(Ljava/lang/String;JIIII)J

    move-result-wide v4

    move-object v0, p0

    .line 3
    invoke-direct/range {v0 .. v5}, Lorg/chromium/base/metrics/NativeUmaRecorder;->if(Ljava/lang/String;JJ)V

    return-void
.end method

.method public recordLinearHistogram(Ljava/lang/String;IIII)V
    .locals 10

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/base/metrics/NativeUmaRecorder;->do(Ljava/lang/String;)J

    move-result-wide v8

    .line 2
    invoke-static {}, Lorg/chromium/base/metrics/if;->if()Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object v0

    move-object v1, p1

    move-wide v2, v8

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;->recordLinearHistogram(Ljava/lang/String;JIIII)J

    move-result-wide v4

    move-object v0, p0

    .line 3
    invoke-direct/range {v0 .. v5}, Lorg/chromium/base/metrics/NativeUmaRecorder;->if(Ljava/lang/String;JJ)V

    return-void
.end method

.method public recordSparseHistogram(Ljava/lang/String;I)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/base/metrics/NativeUmaRecorder;->do(Ljava/lang/String;)J

    move-result-wide v2

    .line 2
    invoke-static {}, Lorg/chromium/base/metrics/if;->if()Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object v0

    invoke-interface {v0, p1, v2, v3, p2}, Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;->recordSparseHistogram(Ljava/lang/String;JI)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    .line 3
    invoke-direct/range {v0 .. v5}, Lorg/chromium/base/metrics/NativeUmaRecorder;->if(Ljava/lang/String;JJ)V

    return-void
.end method

.method public recordUserAction(Ljava/lang/String;J)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 2
    invoke-static {}, Lorg/chromium/base/metrics/if;->if()Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;

    move-result-object p2

    invoke-interface {p2, p1, v0, v1}, Lorg/chromium/base/metrics/NativeUmaRecorder$Natives;->recordUserAction(Ljava/lang/String;J)V

    return-void
.end method
