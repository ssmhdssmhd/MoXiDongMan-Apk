.class Lsun/security/util/SecurityConstants$FakeAWTPermissionFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/security/util/PermissionFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/SecurityConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FakeAWTPermissionFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/security/util/PermissionFactory<",
        "Lsun/security/util/SecurityConstants$FakeAWTPermission;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsun/security/util/SecurityConstants$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsun/security/util/SecurityConstants$FakeAWTPermissionFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newPermission(Ljava/lang/String;)Ljava/security/Permission;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsun/security/util/SecurityConstants$FakeAWTPermissionFactory;->newPermission(Ljava/lang/String;)Lsun/security/util/SecurityConstants$FakeAWTPermission;

    move-result-object p1

    return-object p1
.end method

.method public newPermission(Ljava/lang/String;)Lsun/security/util/SecurityConstants$FakeAWTPermission;
    .locals 1

    .line 2
    new-instance v0, Lsun/security/util/SecurityConstants$FakeAWTPermission;

    invoke-direct {v0, p1}, Lsun/security/util/SecurityConstants$FakeAWTPermission;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
