.class public Lfreemarker/debug/impl/this;
.super Ljava/rmi/server/UnicastRemoteObject;
.source "SourceFile"

# interfaces
.implements Lfreemarker/debug/DebuggerListener;
.implements Ljava/rmi/server/Unreferenced;


# static fields
.field private static final for:J = 0x1L

.field private static final if:Lfreemarker/log/if;


# instance fields
.field private final do:Lfreemarker/debug/DebuggerListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "freemarker.debug.client"

    .line 1
    invoke-static {v0}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/this;->if:Lfreemarker/log/if;

    return-void
.end method

.method public constructor <init>(Lfreemarker/debug/DebuggerListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/rmi/server/UnicastRemoteObject;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/debug/impl/this;->do:Lfreemarker/debug/DebuggerListener;

    return-void
.end method


# virtual methods
.method public do()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, v0}, Ljava/rmi/server/UnicastRemoteObject;->unexportObject(Ljava/rmi/Remote;Z)Z
    :try_end_0
    .catch Ljava/rmi/NoSuchObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lfreemarker/debug/impl/this;->if:Lfreemarker/log/if;

    const-string v2, "Failed to unexport RMI debugger listener"

    invoke-virtual {v1, v2, v0}, Lfreemarker/log/if;->private(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public environmentSuspended(Landroid/support/v4/c80;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/this;->do:Lfreemarker/debug/DebuggerListener;

    invoke-interface {v0, p1}, Lfreemarker/debug/DebuggerListener;->environmentSuspended(Landroid/support/v4/c80;)V

    return-void
.end method
