.class public final Landroid/support/v4/yp;
.super Landroid/support/v4/np;
.source "SourceFile"


# static fields
.field public static final do:Landroid/support/v4/np;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/yp;

    invoke-direct {v0}, Landroid/support/v4/yp;-><init>()V

    sput-object v0, Landroid/support/v4/yp;->do:Landroid/support/v4/np;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/np;-><init>()V

    return-void
.end method


# virtual methods
.method public O(Lio/reactivex/CompletableObserver;)V
    .locals 1

    .line 1
    sget-object v0, Lio/reactivex/internal/disposables/if;->NEVER:Lio/reactivex/internal/disposables/if;

    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
