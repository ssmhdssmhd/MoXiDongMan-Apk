.class public final Landroid/support/v4/wz1;
.super Landroid/support/v4/jz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/jz1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final do:Landroid/support/v4/jz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/jz1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/wz1;

    invoke-direct {v0}, Landroid/support/v4/wz1;-><init>()V

    sput-object v0, Landroid/support/v4/wz1;->do:Landroid/support/v4/jz1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/jz1;-><init>()V

    return-void
.end method


# virtual methods
.method public g0(Lio/reactivex/SingleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/reactivex/internal/disposables/if;->NEVER:Lio/reactivex/internal/disposables/if;

    invoke-interface {p1, v0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
