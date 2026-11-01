.class final Lorg/chromium/base/break;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/FieldTrialList$Natives;


# annotations
.annotation build Landroid/support/v4/cx0;
.end annotation

.annotation build Landroid/support/v4/dl;
    value = "crbug.com/993421"
.end annotation


# static fields
.field private static do:Lorg/chromium/base/FieldTrialList$Natives;

.field public static final if:Lorg/chromium/base/JniStaticTestMocker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/JniStaticTestMocker<",
            "Lorg/chromium/base/FieldTrialList$Natives;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/base/break$do;

    invoke-direct {v0}, Lorg/chromium/base/break$do;-><init>()V

    sput-object v0, Lorg/chromium/base/break;->if:Lorg/chromium/base/JniStaticTestMocker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do(Lorg/chromium/base/FieldTrialList$Natives;)Lorg/chromium/base/FieldTrialList$Natives;
    .locals 0

    .line 1
    sput-object p0, Lorg/chromium/base/break;->do:Lorg/chromium/base/FieldTrialList$Natives;

    return-object p0
.end method

.method public static if()Lorg/chromium/base/FieldTrialList$Natives;
    .locals 2

    .line 1
    sget-boolean v0, Landroid/support/v4/oe0;->do:Z

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lorg/chromium/base/break;->do:Lorg/chromium/base/FieldTrialList$Natives;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    sget-boolean v0, Landroid/support/v4/oe0;->if:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No mock found for the native implementation for org.chromium.base.FieldTrialList.Natives. The current configuration requires all native implementations to have a mock instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Lorg/chromium/base/NativeLibraryLoadedStatus;->do(Z)V

    .line 6
    new-instance v0, Lorg/chromium/base/break;

    invoke-direct {v0}, Lorg/chromium/base/break;-><init>()V

    return-object v0
.end method


# virtual methods
.method public createFieldTrial(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/support/v4/oe0;->return(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public findFullName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/oe0;->static(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVariationParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/support/v4/oe0;->switch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public logActiveTrials()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/support/v4/oe0;->throws()V

    return-void
.end method

.method public trialExists(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/oe0;->default(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
