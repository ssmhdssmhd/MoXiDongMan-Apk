.class Lrx/Single$break$if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single$break$if;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/if$do;

.field public final synthetic if:Lrx/Single$break$if;


# direct methods
.method public constructor <init>(Lrx/Single$break$if;Lrx/if$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Single$break$if$do;->if:Lrx/Single$break$if;

    iput-object p2, p0, Lrx/Single$break$if$do;->do:Lrx/if$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/Single$break$if$do;->if:Lrx/Single$break$if;

    iget-object v0, v0, Lrx/Single$break$if;->do:Landroid/support/v4/b02;

    invoke-virtual {v0}, Landroid/support/v4/b02;->unsubscribe()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lrx/Single$break$if$do;->do:Lrx/if$do;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/Single$break$if$do;->do:Lrx/if$do;

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    throw v0
.end method
