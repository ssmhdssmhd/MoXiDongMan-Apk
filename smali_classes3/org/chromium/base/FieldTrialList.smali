.class public Lorg/chromium/base/FieldTrialList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/cx0;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/FieldTrialList$Natives;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/break;->if()Lorg/chromium/base/FieldTrialList$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/base/FieldTrialList$Natives;->createFieldTrial(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static for(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/break;->if()Lorg/chromium/base/FieldTrialList$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/base/FieldTrialList$Natives;->getVariationParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static if(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/break;->if()Lorg/chromium/base/FieldTrialList$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/chromium/base/FieldTrialList$Natives;->findFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static new()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/break;->if()Lorg/chromium/base/FieldTrialList$Natives;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/base/FieldTrialList$Natives;->logActiveTrials()V

    return-void
.end method

.method public static try(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/break;->if()Lorg/chromium/base/FieldTrialList$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/chromium/base/FieldTrialList$Natives;->trialExists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
