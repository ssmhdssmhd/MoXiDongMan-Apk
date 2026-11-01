.class Lrx/observables/do$this$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/do$this;->else(Lrx/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/y22;

.field public final synthetic if:Lrx/observables/do$this;


# direct methods
.method public constructor <init>(Lrx/observables/do$this;Landroid/support/v4/y22;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/observables/do$this$if;->if:Lrx/observables/do$this;

    iput-object p2, p0, Lrx/observables/do$this$if;->do:Landroid/support/v4/y22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/observables/do$this$if;->if:Lrx/observables/do$this;

    iget-object v0, v0, Lrx/observables/do$this;->new:Landroid/support/v4/dq;

    iget-object v1, p0, Lrx/observables/do$this$if;->do:Landroid/support/v4/y22;

    invoke-virtual {v0, v1}, Landroid/support/v4/dq;->try(Lrx/Subscription;)V

    return-void
.end method
