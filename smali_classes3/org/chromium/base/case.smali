.class final Lorg/chromium/base/case;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/CpuFeatures$Natives;


# annotations
.annotation build Landroid/support/v4/dl;
    value = "crbug.com/993421"
.end annotation


# static fields
.field private static do:Lorg/chromium/base/CpuFeatures$Natives;

.field public static final if:Lorg/chromium/base/JniStaticTestMocker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/JniStaticTestMocker<",
            "Lorg/chromium/base/CpuFeatures$Natives;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/base/case$do;

    invoke-direct {v0}, Lorg/chromium/base/case$do;-><init>()V

    sput-object v0, Lorg/chromium/base/case;->if:Lorg/chromium/base/JniStaticTestMocker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do(Lorg/chromium/base/CpuFeatures$Natives;)Lorg/chromium/base/CpuFeatures$Natives;
    .locals 0

    .line 1
    sput-object p0, Lorg/chromium/base/case;->do:Lorg/chromium/base/CpuFeatures$Natives;

    return-object p0
.end method

.method public static if()Lorg/chromium/base/CpuFeatures$Natives;
    .locals 2

    .line 1
    sget-boolean v0, Landroid/support/v4/oe0;->do:Z

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lorg/chromium/base/case;->do:Lorg/chromium/base/CpuFeatures$Natives;

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

    const-string v1, "No mock found for the native implementation for org.chromium.base.CpuFeatures.Natives. The current configuration requires all native implementations to have a mock instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lorg/chromium/base/NativeLibraryLoadedStatus;->do(Z)V

    .line 6
    new-instance v0, Lorg/chromium/base/case;

    invoke-direct {v0}, Lorg/chromium/base/case;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getCoreCount()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/oe0;->break()I

    move-result v0

    return v0
.end method

.method public getCpuFeatures()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/support/v4/oe0;->catch()J

    move-result-wide v0

    return-wide v0
.end method
