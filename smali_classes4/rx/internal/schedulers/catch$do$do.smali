.class Lrx/internal/schedulers/catch$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/catch$do;->try(Lrx/functions/Action0;J)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/schedulers/catch$if;

.field public final synthetic if:Lrx/internal/schedulers/catch$do;


# direct methods
.method public constructor <init>(Lrx/internal/schedulers/catch$do;Lrx/internal/schedulers/catch$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/schedulers/catch$do$do;->if:Lrx/internal/schedulers/catch$do;

    iput-object p2, p0, Lrx/internal/schedulers/catch$do$do;->do:Lrx/internal/schedulers/catch$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/catch$do$do;->if:Lrx/internal/schedulers/catch$do;

    iget-object v0, v0, Lrx/internal/schedulers/catch$do;->if:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v1, p0, Lrx/internal/schedulers/catch$do$do;->do:Lrx/internal/schedulers/catch$if;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
