.class Lfreemarker/debug/do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/debug/Debugger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/debug/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private final do:Lfreemarker/debug/Debugger;


# direct methods
.method public constructor <init>(Lfreemarker/debug/Debugger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/debug/do$do;->do:Lfreemarker/debug/Debugger;

    return-void
.end method


# virtual methods
.method public addBreakpoint(Landroid/support/v4/hc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/debug/do$do;->do:Lfreemarker/debug/Debugger;

    invoke-interface {v0, p1}, Lfreemarker/debug/Debugger;->addBreakpoint(Landroid/support/v4/hc;)V

    return-void
.end method

.method public addDebuggerListener(Lfreemarker/debug/DebuggerListener;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/rmi/server/RemoteObject;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/debug/do$do;->do:Lfreemarker/debug/Debugger;

    invoke-interface {v0, p1}, Lfreemarker/debug/Debugger;->addDebuggerListener(Lfreemarker/debug/DebuggerListener;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lfreemarker/debug/impl/this;

    invoke-direct {v0, p1}, Lfreemarker/debug/impl/this;-><init>(Lfreemarker/debug/DebuggerListener;)V

    .line 4
    iget-object p1, p0, Lfreemarker/debug/do$do;->do:Lfreemarker/debug/Debugger;

    invoke-interface {p1, v0}, Lfreemarker/debug/Debugger;->addDebuggerListener(Lfreemarker/debug/DebuggerListener;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBreakpoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/debug/do$do;->do:Lfreemarker/debug/Debugger;

    invoke-interface {v0}, Lfreemarker/debug/Debugger;->getBreakpoints()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBreakpoints(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lfreemarker/debug/do$do;->do:Lfreemarker/debug/Debugger;

    invoke-interface {v0, p1}, Lfreemarker/debug/Debugger;->getBreakpoints(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSuspendedEnvironments()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/debug/do$do;->do:Lfreemarker/debug/Debugger;

    invoke-interface {v0}, Lfreemarker/debug/Debugger;->getSuspendedEnvironments()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public removeBreakpoint(Landroid/support/v4/hc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/debug/do$do;->do:Lfreemarker/debug/Debugger;

    invoke-interface {v0, p1}, Lfreemarker/debug/Debugger;->removeBreakpoint(Landroid/support/v4/hc;)V

    return-void
.end method

.method public removeBreakpoints()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lfreemarker/debug/do$do;->do:Lfreemarker/debug/Debugger;

    invoke-interface {v0}, Lfreemarker/debug/Debugger;->removeBreakpoints()V

    return-void
.end method

.method public removeBreakpoints(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/debug/do$do;->do:Lfreemarker/debug/Debugger;

    invoke-interface {v0, p1}, Lfreemarker/debug/Debugger;->removeBreakpoints(Ljava/lang/String;)V

    return-void
.end method

.method public removeDebuggerListener(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/debug/do$do;->do:Lfreemarker/debug/Debugger;

    invoke-interface {v0, p1}, Lfreemarker/debug/Debugger;->removeDebuggerListener(Ljava/lang/Object;)V

    return-void
.end method
