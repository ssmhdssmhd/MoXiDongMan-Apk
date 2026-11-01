.class Lrx/internal/schedulers/for$do$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/for$do;->for(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/x01;

.field public final synthetic for:Lrx/Subscription;

.field public final synthetic if:Lrx/functions/Action0;

.field public final synthetic new:Lrx/internal/schedulers/for$do;


# direct methods
.method public constructor <init>(Lrx/internal/schedulers/for$do;Landroid/support/v4/x01;Lrx/functions/Action0;Lrx/Subscription;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/schedulers/for$do$if;->new:Lrx/internal/schedulers/for$do;

    iput-object p2, p0, Lrx/internal/schedulers/for$do$if;->do:Landroid/support/v4/x01;

    iput-object p3, p0, Lrx/internal/schedulers/for$do$if;->if:Lrx/functions/Action0;

    iput-object p4, p0, Lrx/internal/schedulers/for$do$if;->for:Lrx/Subscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/for$do$if;->do:Landroid/support/v4/x01;

    invoke-virtual {v0}, Landroid/support/v4/x01;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/for$do$if;->new:Lrx/internal/schedulers/for$do;

    iget-object v1, p0, Lrx/internal/schedulers/for$do$if;->if:Lrx/functions/Action0;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/for$do;->if(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lrx/internal/schedulers/for$do$if;->do:Landroid/support/v4/x01;

    invoke-virtual {v1, v0}, Landroid/support/v4/x01;->if(Lrx/Subscription;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lrx/internal/schedulers/goto;

    if-ne v1, v2, :cond_1

    .line 5
    check-cast v0, Lrx/internal/schedulers/goto;

    iget-object v1, p0, Lrx/internal/schedulers/for$do$if;->for:Lrx/Subscription;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/goto;->add(Lrx/Subscription;)V

    :cond_1
    return-void
.end method
