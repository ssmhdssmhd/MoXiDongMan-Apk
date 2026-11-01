.class Lfreemarker/debug/impl/else;
.super Ljava/rmi/server/UnicastRemoteObject;
.source "SourceFile"

# interfaces
.implements Lfreemarker/debug/Debugger;


# static fields
.field private static final if:J = 0x1L


# instance fields
.field private final do:Lfreemarker/debug/impl/catch;


# direct methods
.method public constructor <init>(Lfreemarker/debug/impl/catch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/rmi/server/UnicastRemoteObject;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/debug/impl/else;->do:Lfreemarker/debug/impl/catch;

    return-void
.end method


# virtual methods
.method public addBreakpoint(Landroid/support/v4/hc;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/else;->do:Lfreemarker/debug/impl/catch;

    invoke-virtual {v0, p1}, Lfreemarker/debug/impl/catch;->break(Landroid/support/v4/hc;)V

    return-void
.end method

.method public addDebuggerListener(Lfreemarker/debug/DebuggerListener;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/else;->do:Lfreemarker/debug/impl/catch;

    invoke-virtual {v0, p1}, Lfreemarker/debug/impl/catch;->catch(Lfreemarker/debug/DebuggerListener;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBreakpoints()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/else;->do:Lfreemarker/debug/impl/catch;

    invoke-virtual {v0}, Lfreemarker/debug/impl/catch;->super()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBreakpoints(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 2
    iget-object v0, p0, Lfreemarker/debug/impl/else;->do:Lfreemarker/debug/impl/catch;

    invoke-virtual {v0, p1}, Lfreemarker/debug/impl/catch;->for(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSuspendedEnvironments()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/else;->do:Lfreemarker/debug/impl/catch;

    invoke-virtual {v0}, Lfreemarker/debug/impl/catch;->throw()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public removeBreakpoint(Landroid/support/v4/hc;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/else;->do:Lfreemarker/debug/impl/catch;

    invoke-virtual {v0, p1}, Lfreemarker/debug/impl/catch;->native(Landroid/support/v4/hc;)V

    return-void
.end method

.method public removeBreakpoints()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/else;->do:Lfreemarker/debug/impl/catch;

    invoke-virtual {v0}, Lfreemarker/debug/impl/catch;->public()V

    return-void
.end method

.method public removeBreakpoints(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lfreemarker/debug/impl/else;->do:Lfreemarker/debug/impl/catch;

    invoke-virtual {v0, p1}, Lfreemarker/debug/impl/catch;->static(Ljava/lang/String;)V

    return-void
.end method

.method public removeDebuggerListener(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/else;->do:Lfreemarker/debug/impl/catch;

    invoke-virtual {v0, p1}, Lfreemarker/debug/impl/catch;->default(Ljava/lang/Object;)V

    return-void
.end method
