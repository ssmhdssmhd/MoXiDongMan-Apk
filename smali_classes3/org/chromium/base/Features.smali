.class public abstract Lorg/chromium/base/Features;
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
        Lorg/chromium/base/Features$Natives;
    }
.end annotation


# instance fields
.field private final do:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/base/Features;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract do()J
.end method

.method public for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/base/Features;->do:Ljava/lang/String;

    return-object v0
.end method

.method public if(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/base/this;->if()Lorg/chromium/base/Features$Natives;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lorg/chromium/base/Features;->do()J

    move-result-wide v1

    .line 3
    invoke-interface {v0, v1, v2, p1, p2}, Lorg/chromium/base/Features$Natives;->getFieldTrialParamByFeatureAsBoolean(JLjava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public new()Z
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/base/this;->if()Lorg/chromium/base/Features$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/base/Features;->do()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/chromium/base/Features$Natives;->isEnabled(J)Z

    move-result v0

    return v0
.end method
