.class public Lorg/chromium/base/BuildInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/BuildInfo$if;
    }
.end annotation


# static fields
.field private static final const:Ljava/lang/String; = "BuildInfo"

.field private static final final:I = 0x80

.field private static import:Ljava/lang/String; = ""

.field public static final synthetic native:Z = false

.field private static super:Landroid/content/pm/PackageInfo; = null

.field private static throw:Z = false

.field public static final while:I = 0x1f


# instance fields
.field public final break:Ljava/lang/String;

.field public final case:Ljava/lang/String;

.field public final catch:Ljava/lang/String;

.field public final class:Z

.field public final do:Ljava/lang/String;

.field public final else:Ljava/lang/String;

.field public final for:Ljava/lang/String;

.field public final goto:Ljava/lang/String;

.field public final if:J

.field public final new:J

.field public final this:Ljava/lang/String;

.field public final try:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 10

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lorg/chromium/base/BuildInfo;->throw:Z

    .line 4
    :try_start_0
    invoke-static {}, Lorg/chromium/base/try;->case()Landroid/content/Context;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 8
    invoke-static {v5}, Lorg/chromium/base/BuildInfo;->else(Landroid/content/pm/PackageInfo;)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/chromium/base/BuildInfo;->if:J

    .line 9
    sget-object v8, Lorg/chromium/base/BuildInfo;->super:Landroid/content/pm/PackageInfo;

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    .line 10
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lorg/chromium/base/BuildInfo;->for:Ljava/lang/String;

    .line 11
    invoke-static {v8}, Lorg/chromium/base/BuildInfo;->else(Landroid/content/pm/PackageInfo;)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/chromium/base/BuildInfo;->new:J

    .line 12
    sget-object v2, Lorg/chromium/base/BuildInfo;->super:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v2}, Lorg/chromium/base/BuildInfo;->case(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/base/BuildInfo;->try:Ljava/lang/String;

    .line 13
    sput-object v9, Lorg/chromium/base/BuildInfo;->super:Landroid/content/pm/PackageInfo;

    goto :goto_0

    .line 14
    :cond_0
    iput-object v2, p0, Lorg/chromium/base/BuildInfo;->for:Ljava/lang/String;

    .line 15
    iput-wide v6, p0, Lorg/chromium/base/BuildInfo;->new:J

    .line 16
    iget-object v2, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v2}, Lorg/chromium/base/BuildInfo;->case(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/base/BuildInfo;->try:Ljava/lang/String;

    .line 17
    :goto_0
    iget-object v2, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/base/BuildInfo;->case(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/base/BuildInfo;->do:Ljava/lang/String;

    .line 18
    iget-object v2, p0, Lorg/chromium/base/BuildInfo;->for:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/base/BuildInfo;->case(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/base/BuildInfo;->case:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v2, "com.google.android.gms"

    .line 19
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-eqz v9, :cond_1

    .line 20
    :try_start_2
    invoke-static {v9}, Lorg/chromium/base/BuildInfo;->else(Landroid/content/pm/PackageInfo;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    const-string v2, "gms versionCode not available."

    .line 21
    :goto_2
    iput-object v2, p0, Lorg/chromium/base/BuildInfo;->else:Ljava/lang/String;

    const-string v2, "true"
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    const-string v5, "projekt.substratum"

    .line 22
    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    :try_start_4
    const-string v2, "false"

    .line 23
    :goto_3
    iput-object v2, p0, Lorg/chromium/base/BuildInfo;->break:Ljava/lang/String;

    const-string v2, "Not Enabled"

    .line 24
    sget v3, Landroid/support/v4/ed;->try:I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v3, :cond_2

    .line 25
    :try_start_5
    invoke-static {}, Lorg/chromium/base/try;->case()Landroid/content/Context;

    move-result-object v2

    sget v3, Landroid/support/v4/ed;->try:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    :try_start_6
    const-string v2, "Not found"

    .line 26
    :cond_2
    :goto_4
    iput-object v2, p0, Lorg/chromium/base/BuildInfo;->catch:Ljava/lang/String;

    .line 27
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    const-string v2, ", "

    .line 28
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/base/BuildInfo;->goto:Ljava/lang/String;

    goto :goto_5

    :cond_3
    const-string v2, "ABI1: %s, ABI2: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 29
    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v5, v3, v4

    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v5, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/base/BuildInfo;->goto:Ljava/lang/String;

    .line 30
    :goto_5
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x80

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 32
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/base/BuildInfo;->this:Ljava/lang/String;

    const-string v2, "uimode"

    .line 33
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    if-eqz v1, :cond_4

    .line 34
    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    goto :goto_6

    :cond_4
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, p0, Lorg/chromium/base/BuildInfo;->class:Z
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    return-void

    :catch_3
    move-exception v0

    .line 35
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic constructor <init>(Lorg/chromium/base/BuildInfo$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/chromium/base/BuildInfo;-><init>()V

    return-void
.end method

.method public static break()Z
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/try;->case()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static case(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static do()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/base/BuildInfo;->import:Ljava/lang/String;

    return-object v0
.end method

.method private static else(Landroid/content/pm/PackageInfo;)J
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/g2;->if(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v0, p0

    return-wide v0
.end method

.method private static for(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "REL"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static getAll()[Ljava/lang/String;
    .locals 6
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-static {}, Lorg/chromium/base/BuildInfo;->if()Lorg/chromium/base/BuildInfo;

    move-result-object v0

    .line 2
    invoke-static {}, Lorg/chromium/base/try;->case()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    new-array v2, v2, [Ljava/lang/String;

    .line 3
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const/4 v4, 0x6

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const/4 v4, 0x7

    aput-object v3, v2, v4

    const/16 v3, 0x8

    aput-object v1, v2, v3

    iget-wide v3, v0, Lorg/chromium/base/BuildInfo;->if:J

    .line 5
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v2, v3

    iget-object v1, v0, Lorg/chromium/base/BuildInfo;->do:Ljava/lang/String;

    const/16 v3, 0xa

    aput-object v1, v2, v3

    iget-object v1, v0, Lorg/chromium/base/BuildInfo;->for:Ljava/lang/String;

    const/16 v3, 0xb

    aput-object v1, v2, v3

    iget-wide v3, v0, Lorg/chromium/base/BuildInfo;->new:J

    .line 6
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc

    aput-object v1, v2, v3

    iget-object v1, v0, Lorg/chromium/base/BuildInfo;->try:Ljava/lang/String;

    const/16 v3, 0xd

    aput-object v1, v2, v3

    iget-object v1, v0, Lorg/chromium/base/BuildInfo;->this:Ljava/lang/String;

    const/16 v3, 0xe

    aput-object v1, v2, v3

    iget-object v1, v0, Lorg/chromium/base/BuildInfo;->else:Ljava/lang/String;

    const/16 v3, 0xf

    aput-object v1, v2, v3

    iget-object v1, v0, Lorg/chromium/base/BuildInfo;->case:Ljava/lang/String;

    const/16 v3, 0x10

    aput-object v1, v2, v3

    iget-object v1, v0, Lorg/chromium/base/BuildInfo;->goto:Ljava/lang/String;

    const/16 v3, 0x11

    aput-object v1, v2, v3

    sget-object v1, Lorg/chromium/base/BuildInfo;->import:Ljava/lang/String;

    const/16 v3, 0x12

    aput-object v1, v2, v3

    iget-object v1, v0, Lorg/chromium/base/BuildInfo;->break:Ljava/lang/String;

    const/16 v3, 0x13

    aput-object v1, v2, v3

    iget-object v1, v0, Lorg/chromium/base/BuildInfo;->catch:Ljava/lang/String;

    const/16 v3, 0x14

    aput-object v1, v2, v3

    .line 7
    invoke-static {}, Lorg/chromium/base/try;->case()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 8
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x15

    aput-object v1, v2, v3

    .line 9
    invoke-static {}, Lorg/chromium/base/BuildInfo;->try()Z

    move-result v1

    const-string v3, "1"

    const-string v4, "0"

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    const/16 v5, 0x16

    aput-object v1, v2, v5

    const/16 v1, 0x17

    .line 10
    iget-boolean v0, v0, Lorg/chromium/base/BuildInfo;->class:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    aput-object v3, v2, v1

    const/16 v0, 0x18

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static goto(Landroid/content/pm/PackageInfo;)V
    .locals 0

    .line 1
    sput-object p0, Lorg/chromium/base/BuildInfo;->super:Landroid/content/pm/PackageInfo;

    return-void
.end method

.method public static if()Lorg/chromium/base/BuildInfo;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/BuildInfo$if;->do()Lorg/chromium/base/BuildInfo;

    move-result-object v0

    return-object v0
.end method

.method public static new()Z
    .locals 2
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x1f
        codename = "S"
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_1

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "S"

    invoke-static {v1, v0}, Lorg/chromium/base/BuildInfo;->for(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static this(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lorg/chromium/base/BuildInfo;->import:Ljava/lang/String;

    return-void
.end method

.method public static try()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
