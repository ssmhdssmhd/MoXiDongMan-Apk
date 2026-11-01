.class public Lsun/security/util/SecurityConstants$AWT;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/SecurityConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AWT"
.end annotation


# static fields
.field public static final ACCESS_CLIPBOARD_PERMISSION:Ljava/security/Permission;

.field public static final ACCESS_SYSTEM_TRAY_PERMISSION:Ljava/security/Permission;

.field public static final ALL_AWT_EVENTS_PERMISSION:Ljava/security/Permission;

.field private static final AWTFactory:Ljava/lang/String; = "sun.awt.AWTPermissionFactory"

.field public static final CHECK_AWT_EVENTQUEUE_PERMISSION:Ljava/security/Permission;

.field public static final CREATE_ROBOT_PERMISSION:Ljava/security/Permission;

.field public static final READ_DISPLAY_PIXELS_PERMISSION:Ljava/security/Permission;

.field public static final SET_WINDOW_ALWAYS_ON_TOP_PERMISSION:Ljava/security/Permission;

.field public static final TOOLKIT_MODALITY_PERMISSION:Ljava/security/Permission;

.field public static final TOPLEVEL_WINDOW_PERMISSION:Ljava/security/Permission;

.field public static final WATCH_MOUSE_PERMISSION:Ljava/security/Permission;

.field private static final factory:Lsun/security/util/PermissionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/PermissionFactory<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lsun/security/util/SecurityConstants$AWT;->permissionFactory()Lsun/security/util/PermissionFactory;

    move-result-object v0

    sput-object v0, Lsun/security/util/SecurityConstants$AWT;->factory:Lsun/security/util/PermissionFactory;

    const-string v0, "showWindowWithoutWarningBanner"

    .line 2
    invoke-static {v0}, Lsun/security/util/SecurityConstants$AWT;->newAWTPermission(Ljava/lang/String;)Ljava/security/Permission;

    move-result-object v0

    sput-object v0, Lsun/security/util/SecurityConstants$AWT;->TOPLEVEL_WINDOW_PERMISSION:Ljava/security/Permission;

    const-string v0, "accessClipboard"

    .line 3
    invoke-static {v0}, Lsun/security/util/SecurityConstants$AWT;->newAWTPermission(Ljava/lang/String;)Ljava/security/Permission;

    move-result-object v0

    sput-object v0, Lsun/security/util/SecurityConstants$AWT;->ACCESS_CLIPBOARD_PERMISSION:Ljava/security/Permission;

    const-string v0, "accessEventQueue"

    .line 4
    invoke-static {v0}, Lsun/security/util/SecurityConstants$AWT;->newAWTPermission(Ljava/lang/String;)Ljava/security/Permission;

    move-result-object v0

    sput-object v0, Lsun/security/util/SecurityConstants$AWT;->CHECK_AWT_EVENTQUEUE_PERMISSION:Ljava/security/Permission;

    const-string v0, "toolkitModality"

    .line 5
    invoke-static {v0}, Lsun/security/util/SecurityConstants$AWT;->newAWTPermission(Ljava/lang/String;)Ljava/security/Permission;

    move-result-object v0

    sput-object v0, Lsun/security/util/SecurityConstants$AWT;->TOOLKIT_MODALITY_PERMISSION:Ljava/security/Permission;

    const-string v0, "readDisplayPixels"

    .line 6
    invoke-static {v0}, Lsun/security/util/SecurityConstants$AWT;->newAWTPermission(Ljava/lang/String;)Ljava/security/Permission;

    move-result-object v0

    sput-object v0, Lsun/security/util/SecurityConstants$AWT;->READ_DISPLAY_PIXELS_PERMISSION:Ljava/security/Permission;

    const-string v0, "createRobot"

    .line 7
    invoke-static {v0}, Lsun/security/util/SecurityConstants$AWT;->newAWTPermission(Ljava/lang/String;)Ljava/security/Permission;

    move-result-object v0

    sput-object v0, Lsun/security/util/SecurityConstants$AWT;->CREATE_ROBOT_PERMISSION:Ljava/security/Permission;

    const-string v0, "watchMousePointer"

    .line 8
    invoke-static {v0}, Lsun/security/util/SecurityConstants$AWT;->newAWTPermission(Ljava/lang/String;)Ljava/security/Permission;

    move-result-object v0

    sput-object v0, Lsun/security/util/SecurityConstants$AWT;->WATCH_MOUSE_PERMISSION:Ljava/security/Permission;

    const-string v0, "setWindowAlwaysOnTop"

    .line 9
    invoke-static {v0}, Lsun/security/util/SecurityConstants$AWT;->newAWTPermission(Ljava/lang/String;)Ljava/security/Permission;

    move-result-object v0

    sput-object v0, Lsun/security/util/SecurityConstants$AWT;->SET_WINDOW_ALWAYS_ON_TOP_PERMISSION:Ljava/security/Permission;

    const-string v0, "listenToAllAWTEvents"

    .line 10
    invoke-static {v0}, Lsun/security/util/SecurityConstants$AWT;->newAWTPermission(Ljava/lang/String;)Ljava/security/Permission;

    move-result-object v0

    sput-object v0, Lsun/security/util/SecurityConstants$AWT;->ALL_AWT_EVENTS_PERMISSION:Ljava/security/Permission;

    const-string v0, "accessSystemTray"

    .line 11
    invoke-static {v0}, Lsun/security/util/SecurityConstants$AWT;->newAWTPermission(Ljava/lang/String;)Ljava/security/Permission;

    move-result-object v0

    sput-object v0, Lsun/security/util/SecurityConstants$AWT;->ACCESS_SYSTEM_TRAY_PERMISSION:Ljava/security/Permission;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static newAWTPermission(Ljava/lang/String;)Ljava/security/Permission;
    .locals 1

    .line 1
    sget-object v0, Lsun/security/util/SecurityConstants$AWT;->factory:Lsun/security/util/PermissionFactory;

    invoke-interface {v0, p0}, Lsun/security/util/PermissionFactory;->newPermission(Ljava/lang/String;)Ljava/security/Permission;

    move-result-object p0

    return-object p0
.end method

.method private static permissionFactory()Lsun/security/util/PermissionFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsun/security/util/PermissionFactory<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lsun/security/util/SecurityConstants$AWT$1;

    invoke-direct {v0}, Lsun/security/util/SecurityConstants$AWT$1;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/PermissionFactory;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_0
    new-instance v0, Lsun/security/util/SecurityConstants$FakeAWTPermissionFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsun/security/util/SecurityConstants$FakeAWTPermissionFactory;-><init>(Lsun/security/util/SecurityConstants$1;)V

    return-object v0
.end method
