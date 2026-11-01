.class final Lorg/chromium/net/const;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/NetworkChangeNotifier$Natives;


# annotations
.annotation build Landroid/support/v4/dl;
    value = "crbug.com/993421"
.end annotation


# static fields
.field private static do:Lorg/chromium/net/NetworkChangeNotifier$Natives;

.field public static final if:Lorg/chromium/base/JniStaticTestMocker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/JniStaticTestMocker<",
            "Lorg/chromium/net/NetworkChangeNotifier$Natives;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/net/const$do;

    invoke-direct {v0}, Lorg/chromium/net/const$do;-><init>()V

    sput-object v0, Lorg/chromium/net/const;->if:Lorg/chromium/base/JniStaticTestMocker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do(Lorg/chromium/net/NetworkChangeNotifier$Natives;)Lorg/chromium/net/NetworkChangeNotifier$Natives;
    .locals 0

    .line 1
    sput-object p0, Lorg/chromium/net/const;->do:Lorg/chromium/net/NetworkChangeNotifier$Natives;

    return-object p0
.end method

.method public static if()Lorg/chromium/net/NetworkChangeNotifier$Natives;
    .locals 2

    .line 1
    sget-boolean v0, Landroid/support/v4/oe0;->do:Z

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lorg/chromium/net/const;->do:Lorg/chromium/net/NetworkChangeNotifier$Natives;

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

    const-string v1, "No mock found for the native implementation for org.chromium.net.NetworkChangeNotifier.Natives. The current configuration requires all native implementations to have a mock instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lorg/chromium/base/NativeLibraryLoadedStatus;->do(Z)V

    .line 6
    new-instance v0, Lorg/chromium/net/const;

    invoke-direct {v0}, Lorg/chromium/net/const;-><init>()V

    return-object v0
.end method


# virtual methods
.method public notifyConnectionTypeChanged(JLorg/chromium/net/NetworkChangeNotifier;IJ)V
    .locals 0

    .line 1
    invoke-static/range {p1 .. p6}, Landroid/support/v4/oe0;->A(JLjava/lang/Object;IJ)V

    return-void
.end method

.method public notifyMaxBandwidthChanged(JLorg/chromium/net/NetworkChangeNotifier;I)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/oe0;->B(JLjava/lang/Object;I)V

    return-void
.end method

.method public notifyOfNetworkConnect(JLorg/chromium/net/NetworkChangeNotifier;JI)V
    .locals 0

    .line 1
    invoke-static/range {p1 .. p6}, Landroid/support/v4/oe0;->C(JLjava/lang/Object;JI)V

    return-void
.end method

.method public notifyOfNetworkDisconnect(JLorg/chromium/net/NetworkChangeNotifier;J)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/oe0;->D(JLjava/lang/Object;J)V

    return-void
.end method

.method public notifyOfNetworkSoonToDisconnect(JLorg/chromium/net/NetworkChangeNotifier;J)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/oe0;->E(JLjava/lang/Object;J)V

    return-void
.end method

.method public notifyPurgeActiveNetworkList(JLorg/chromium/net/NetworkChangeNotifier;[J)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/oe0;->F(JLjava/lang/Object;[J)V

    return-void
.end method
