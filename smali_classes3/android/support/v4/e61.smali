.class public final Landroid/support/v4/e61;
.super Lio/reactivex/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/new<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final do:Lio/reactivex/new;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/new<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/e61;

    invoke-direct {v0}, Landroid/support/v4/e61;-><init>()V

    sput-object v0, Landroid/support/v4/e61;->do:Lio/reactivex/new;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/new;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/disposables/if;->NEVER:Lio/reactivex/internal/disposables/if;

    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
