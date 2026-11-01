.class Lrx/internal/schedulers/this$try;
.super Lrx/internal/schedulers/this$else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/this;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
.end annotation


# instance fields
.field private final action:Lrx/functions/Action0;


# direct methods
.method public constructor <init>(Lrx/functions/Action0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrx/internal/schedulers/this$else;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/schedulers/this$try;->action:Lrx/functions/Action0;

    return-void
.end method


# virtual methods
.method public callActual(Lrx/if$do;Lrx/CompletableSubscriber;)Lrx/Subscription;
    .locals 2

    .line 1
    new-instance v0, Lrx/internal/schedulers/this$case;

    iget-object v1, p0, Lrx/internal/schedulers/this$try;->action:Lrx/functions/Action0;

    invoke-direct {v0, v1, p2}, Lrx/internal/schedulers/this$case;-><init>(Lrx/functions/Action0;Lrx/CompletableSubscriber;)V

    invoke-virtual {p1, v0}, Lrx/if$do;->if(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method
