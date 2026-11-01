.class final Lio/reactivex/internal/schedulers/new$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation


# instance fields
.field private final do:Lio/reactivex/internal/schedulers/new$if;

.field public final synthetic if:Lio/reactivex/internal/schedulers/new;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/schedulers/new;Lio/reactivex/internal/schedulers/new$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/schedulers/new$do;->if:Lio/reactivex/internal/schedulers/new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/schedulers/new$do;->do:Lio/reactivex/internal/schedulers/new$if;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/new$do;->do:Lio/reactivex/internal/schedulers/new$if;

    iget-object v1, v0, Lio/reactivex/internal/schedulers/new$if;->direct:Landroid/support/v4/tw1;

    iget-object v2, p0, Lio/reactivex/internal/schedulers/new$do;->if:Lio/reactivex/internal/schedulers/new;

    invoke-virtual {v2, v0}, Lio/reactivex/internal/schedulers/new;->new(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/tw1;->replace(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
