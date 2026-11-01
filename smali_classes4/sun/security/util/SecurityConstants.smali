.class public final Lsun/security/util/SecurityConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/SecurityConstants$AWT;,
        Lsun/security/util/SecurityConstants$FakeAWTPermissionFactory;,
        Lsun/security/util/SecurityConstants$FakeAWTPermission;
    }
.end annotation


# static fields
.field public static final ALL_PERMISSION:Ljava/security/AllPermission;

.field public static final CHECK_MEMBER_ACCESS_PERMISSION:Ljava/lang/RuntimePermission;

.field public static final CREATE_ACC_PERMISSION:Ljava/security/SecurityPermission;

.field public static final CREATE_CLASSLOADER_PERMISSION:Ljava/lang/RuntimePermission;

.field public static final FILE_DELETE_ACTION:Ljava/lang/String; = "delete"

.field public static final FILE_EXECUTE_ACTION:Ljava/lang/String; = "execute"

.field public static final FILE_READLINK_ACTION:Ljava/lang/String; = "readlink"

.field public static final FILE_READ_ACTION:Ljava/lang/String; = "read"

.field public static final FILE_WRITE_ACTION:Ljava/lang/String; = "write"

.field public static final GET_CLASSLOADER_PERMISSION:Ljava/lang/RuntimePermission;

.field public static final GET_COMBINER_PERMISSION:Ljava/security/SecurityPermission;

.field public static final GET_COOKIEHANDLER_PERMISSION:Ljava/net/NetPermission;

.field public static final GET_PD_PERMISSION:Ljava/lang/RuntimePermission;

.field public static final GET_POLICY_PERMISSION:Ljava/security/SecurityPermission;

.field public static final GET_PROXYSELECTOR_PERMISSION:Ljava/net/NetPermission;

.field public static final GET_RESPONSECACHE_PERMISSION:Ljava/net/NetPermission;

.field public static final GET_STACK_TRACE_PERMISSION:Ljava/lang/RuntimePermission;

.field public static final LOCAL_LISTEN_PERMISSION:Ljava/net/SocketPermission;

.field public static final MODIFY_THREADGROUP_PERMISSION:Ljava/lang/RuntimePermission;

.field public static final MODIFY_THREAD_PERMISSION:Ljava/lang/RuntimePermission;

.field public static final PROPERTY_READ_ACTION:Ljava/lang/String; = "read"

.field public static final PROPERTY_RW_ACTION:Ljava/lang/String; = "read,write"

.field public static final PROPERTY_WRITE_ACTION:Ljava/lang/String; = "write"

.field public static final SET_COOKIEHANDLER_PERMISSION:Ljava/net/NetPermission;

.field public static final SET_PROXYSELECTOR_PERMISSION:Ljava/net/NetPermission;

.field public static final SET_RESPONSECACHE_PERMISSION:Ljava/net/NetPermission;

.field public static final SOCKET_ACCEPT_ACTION:Ljava/lang/String; = "accept"

.field public static final SOCKET_CONNECT_ACCEPT_ACTION:Ljava/lang/String; = "connect,accept"

.field public static final SOCKET_CONNECT_ACTION:Ljava/lang/String; = "connect"

.field public static final SOCKET_LISTEN_ACTION:Ljava/lang/String; = "listen"

.field public static final SOCKET_RESOLVE_ACTION:Ljava/lang/String; = "resolve"

.field public static final SPECIFY_HANDLER_PERMISSION:Ljava/net/NetPermission;

.field public static final STOP_THREAD_PERMISSION:Ljava/lang/RuntimePermission;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/security/AllPermission;

    invoke-direct {v0}, Ljava/security/AllPermission;-><init>()V

    sput-object v0, Lsun/security/util/SecurityConstants;->ALL_PERMISSION:Ljava/security/AllPermission;

    .line 2
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "specifyStreamHandler"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->SPECIFY_HANDLER_PERMISSION:Ljava/net/NetPermission;

    .line 3
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "setProxySelector"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->SET_PROXYSELECTOR_PERMISSION:Ljava/net/NetPermission;

    .line 4
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "getProxySelector"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->GET_PROXYSELECTOR_PERMISSION:Ljava/net/NetPermission;

    .line 5
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "setCookieHandler"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->SET_COOKIEHANDLER_PERMISSION:Ljava/net/NetPermission;

    .line 6
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "getCookieHandler"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->GET_COOKIEHANDLER_PERMISSION:Ljava/net/NetPermission;

    .line 7
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "setResponseCache"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->SET_RESPONSECACHE_PERMISSION:Ljava/net/NetPermission;

    .line 8
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "getResponseCache"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->GET_RESPONSECACHE_PERMISSION:Ljava/net/NetPermission;

    .line 9
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "createClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->CREATE_CLASSLOADER_PERMISSION:Ljava/lang/RuntimePermission;

    .line 10
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "accessDeclaredMembers"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->CHECK_MEMBER_ACCESS_PERMISSION:Ljava/lang/RuntimePermission;

    .line 11
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "modifyThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->MODIFY_THREAD_PERMISSION:Ljava/lang/RuntimePermission;

    .line 12
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "modifyThreadGroup"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->MODIFY_THREADGROUP_PERMISSION:Ljava/lang/RuntimePermission;

    .line 13
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "getProtectionDomain"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->GET_PD_PERMISSION:Ljava/lang/RuntimePermission;

    .line 14
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "getClassLoader"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->GET_CLASSLOADER_PERMISSION:Ljava/lang/RuntimePermission;

    .line 15
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "stopThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->STOP_THREAD_PERMISSION:Ljava/lang/RuntimePermission;

    .line 16
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "getStackTrace"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->GET_STACK_TRACE_PERMISSION:Ljava/lang/RuntimePermission;

    .line 17
    new-instance v0, Ljava/security/SecurityPermission;

    const-string v1, "createAccessControlContext"

    invoke-direct {v0, v1}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->CREATE_ACC_PERMISSION:Ljava/security/SecurityPermission;

    .line 18
    new-instance v0, Ljava/security/SecurityPermission;

    const-string v1, "getDomainCombiner"

    invoke-direct {v0, v1}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->GET_COMBINER_PERMISSION:Ljava/security/SecurityPermission;

    .line 19
    new-instance v0, Ljava/security/SecurityPermission;

    const-string v1, "getPolicy"

    invoke-direct {v0, v1}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->GET_POLICY_PERMISSION:Ljava/security/SecurityPermission;

    .line 20
    new-instance v0, Ljava/net/SocketPermission;

    const-string v1, "localhost:1024-"

    const-string v2, "listen"

    invoke-direct {v0, v1, v2}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lsun/security/util/SecurityConstants;->LOCAL_LISTEN_PERMISSION:Ljava/net/SocketPermission;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
