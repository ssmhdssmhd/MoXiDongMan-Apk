.class Lrx/internal/schedulers/for$do$do;
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

.field public final synthetic if:Lrx/internal/schedulers/for$do;


# direct methods
.method public constructor <init>(Lrx/internal/schedulers/for$do;Landroid/support/v4/x01;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/schedulers/for$do$do;->if:Lrx/internal/schedulers/for$do;

    iput-object p2, p0, Lrx/internal/schedulers/for$do$do;->do:Landroid/support/v4/x01;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/for$do$do;->if:Lrx/internal/schedulers/for$do;

    iget-object v0, v0, Lrx/internal/schedulers/for$do;->if:Landroid/support/v4/dq;

    iget-object v1, p0, Lrx/internal/schedulers/for$do$do;->do:Landroid/support/v4/x01;

    invoke-virtual {v0, v1}, Landroid/support/v4/dq;->try(Lrx/Subscription;)V

    return-void
.end method
