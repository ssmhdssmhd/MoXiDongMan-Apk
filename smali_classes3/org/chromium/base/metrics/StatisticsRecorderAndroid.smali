.class public final Lorg/chromium/base/metrics/StatisticsRecorderAndroid;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/v4/lo0;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/metrics/StatisticsRecorderAndroid$Natives;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/metrics/case;->if()Lorg/chromium/base/metrics/StatisticsRecorderAndroid$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/chromium/base/metrics/StatisticsRecorderAndroid$Natives;->toJson(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
