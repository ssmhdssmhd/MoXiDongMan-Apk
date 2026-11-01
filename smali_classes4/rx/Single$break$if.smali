.class Lrx/Single$break$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single$break;->do(Landroid/support/v4/b02;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/b02;

.field public final synthetic if:Lrx/Single$break;


# direct methods
.method public constructor <init>(Lrx/Single$break;Landroid/support/v4/b02;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/Single$break$if;->if:Lrx/Single$break;

    iput-object p2, p0, Lrx/Single$break$if;->do:Landroid/support/v4/b02;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/Single$break$if;->if:Lrx/Single$break;

    iget-object v0, v0, Lrx/Single$break;->do:Lrx/if;

    invoke-virtual {v0}, Lrx/if;->do()Lrx/if$do;

    move-result-object v0

    .line 2
    new-instance v1, Lrx/Single$break$if$do;

    invoke-direct {v1, p0, v0}, Lrx/Single$break$if$do;-><init>(Lrx/Single$break$if;Lrx/if$do;)V

    invoke-virtual {v0, v1}, Lrx/if$do;->if(Lrx/functions/Action0;)Lrx/Subscription;

    return-void
.end method
