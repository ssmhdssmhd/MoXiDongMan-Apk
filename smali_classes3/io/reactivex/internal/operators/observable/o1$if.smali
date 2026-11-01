.class final Lio/reactivex/internal/operators/observable/o1$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/o1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "if"
.end annotation


# instance fields
.field private final do:Lio/reactivex/internal/operators/observable/o1$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/o1$do<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic if:Lio/reactivex/internal/operators/observable/o1;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/observable/o1;Lio/reactivex/internal/operators/observable/o1$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/o1$do<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/o1$if;->if:Lio/reactivex/internal/operators/observable/o1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/o1$if;->do:Lio/reactivex/internal/operators/observable/o1$do;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/o1$if;->if:Lio/reactivex/internal/operators/observable/o1;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/do;->do:Lio/reactivex/ObservableSource;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/o1$if;->do:Lio/reactivex/internal/operators/observable/o1$do;

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
