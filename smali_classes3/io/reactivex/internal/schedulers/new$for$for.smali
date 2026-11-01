.class final Lio/reactivex/internal/schedulers/new$for$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/new$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "for"
.end annotation


# instance fields
.field private final do:Landroid/support/v4/tw1;

.field public final synthetic for:Lio/reactivex/internal/schedulers/new$for;

.field private final if:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/schedulers/new$for;Landroid/support/v4/tw1;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/schedulers/new$for$for;->for:Lio/reactivex/internal/schedulers/new$for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/schedulers/new$for$for;->do:Landroid/support/v4/tw1;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/schedulers/new$for$for;->if:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/new$for$for;->do:Landroid/support/v4/tw1;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/new$for$for;->for:Lio/reactivex/internal/schedulers/new$for;

    iget-object v2, p0, Lio/reactivex/internal/schedulers/new$for$for;->if:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lio/reactivex/internal/schedulers/new$for;->if(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/tw1;->replace(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
