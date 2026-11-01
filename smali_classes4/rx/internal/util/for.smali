.class public final enum Lrx/internal/util/for;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/for$for;,
        Lrx/internal/util/for$do;,
        Lrx/internal/util/for$const;,
        Lrx/internal/util/for$catch;,
        Lrx/internal/util/for$break;,
        Lrx/internal/util/for$class;,
        Lrx/internal/util/for$try;,
        Lrx/internal/util/for$final;,
        Lrx/internal/util/for$throw;,
        Lrx/internal/util/for$super;,
        Lrx/internal/util/for$this;,
        Lrx/internal/util/for$new;,
        Lrx/internal/util/for$if;,
        Lrx/internal/util/for$while;,
        Lrx/internal/util/for$case;,
        Lrx/internal/util/for$goto;,
        Lrx/internal/util/for$else;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrx/internal/util/for;",
        ">;"
    }
.end annotation


# static fields
.field public static final COUNTER:Lrx/internal/util/for$else;

.field public static final ERROR_EXTRACTOR:Lrx/internal/util/for$try;

.field public static final ERROR_NOT_IMPLEMENTED:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_EMPTY:Lrx/Observable$Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable$Operator<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG_COUNTER:Lrx/internal/util/for$goto;

.field public static final OBJECT_EQUALS:Lrx/internal/util/for$case;

.field public static final RETURNS_VOID:Lrx/internal/util/for$super;

.field public static final TO_ARRAY:Lrx/internal/util/for$while;

.field private static final synthetic do:[Lrx/internal/util/for;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Lrx/internal/util/for;

    .line 1
    sput-object v0, Lrx/internal/util/for;->do:[Lrx/internal/util/for;

    .line 2
    new-instance v0, Lrx/internal/util/for$goto;

    invoke-direct {v0}, Lrx/internal/util/for$goto;-><init>()V

    sput-object v0, Lrx/internal/util/for;->LONG_COUNTER:Lrx/internal/util/for$goto;

    .line 3
    new-instance v0, Lrx/internal/util/for$case;

    invoke-direct {v0}, Lrx/internal/util/for$case;-><init>()V

    sput-object v0, Lrx/internal/util/for;->OBJECT_EQUALS:Lrx/internal/util/for$case;

    .line 4
    new-instance v0, Lrx/internal/util/for$while;

    invoke-direct {v0}, Lrx/internal/util/for$while;-><init>()V

    sput-object v0, Lrx/internal/util/for;->TO_ARRAY:Lrx/internal/util/for$while;

    .line 5
    new-instance v0, Lrx/internal/util/for$super;

    invoke-direct {v0}, Lrx/internal/util/for$super;-><init>()V

    sput-object v0, Lrx/internal/util/for;->RETURNS_VOID:Lrx/internal/util/for$super;

    .line 6
    new-instance v0, Lrx/internal/util/for$else;

    invoke-direct {v0}, Lrx/internal/util/for$else;-><init>()V

    sput-object v0, Lrx/internal/util/for;->COUNTER:Lrx/internal/util/for$else;

    .line 7
    new-instance v0, Lrx/internal/util/for$try;

    invoke-direct {v0}, Lrx/internal/util/for$try;-><init>()V

    sput-object v0, Lrx/internal/util/for;->ERROR_EXTRACTOR:Lrx/internal/util/for$try;

    .line 8
    new-instance v0, Lrx/internal/util/for$for;

    invoke-direct {v0}, Lrx/internal/util/for$for;-><init>()V

    sput-object v0, Lrx/internal/util/for;->ERROR_NOT_IMPLEMENTED:Lrx/functions/Action1;

    .line 9
    new-instance v0, Lrx/internal/operators/v;

    invoke-static {}, Lrx/internal/util/this;->if()Lrx/functions/Func1;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lrx/internal/operators/v;-><init>(Lrx/functions/Func1;Z)V

    sput-object v0, Lrx/internal/util/for;->IS_EMPTY:Lrx/Observable$Operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static createCollectorCaller(Lrx/functions/Action2;)Lrx/functions/Func2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action2<",
            "TR;-TT;>;)",
            "Lrx/functions/Func2<",
            "TR;TT;TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/util/for$do;

    invoke-direct {v0, p0}, Lrx/internal/util/for$do;-><init>(Lrx/functions/Action2;)V

    return-object v0
.end method

.method public static createRepeatDematerializer(Lrx/functions/Func1;)Lrx/functions/Func1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Observable<",
            "+",
            "Ljava/lang/Void;",
            ">;+",
            "Lrx/Observable<",
            "*>;>;)",
            "Lrx/functions/Func1<",
            "Lrx/Observable<",
            "+",
            "Lrx/do<",
            "*>;>;",
            "Lrx/Observable<",
            "*>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/util/for$this;

    invoke-direct {v0, p0}, Lrx/internal/util/for$this;-><init>(Lrx/functions/Func1;)V

    return-object v0
.end method

.method public static createReplaySelectorAndObserveOn(Lrx/functions/Func1;Lrx/if;)Lrx/functions/Func1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Observable<",
            "TT;>;+",
            "Lrx/Observable<",
            "TR;>;>;",
            "Lrx/if;",
            ")",
            "Lrx/functions/Func1<",
            "Lrx/Observable<",
            "TT;>;",
            "Lrx/Observable<",
            "TR;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/util/for$throw;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/for$throw;-><init>(Lrx/functions/Func1;Lrx/if;)V

    return-object v0
.end method

.method public static createReplaySupplier(Lrx/Observable;)Lrx/functions/Func0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "TT;>;)",
            "Lrx/functions/Func0<",
            "Lrx/observables/for<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/util/for$class;

    invoke-direct {v0, p0}, Lrx/internal/util/for$class;-><init>(Lrx/Observable;)V

    return-object v0
.end method

.method public static createReplaySupplier(Lrx/Observable;I)Lrx/functions/Func0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "TT;>;I)",
            "Lrx/functions/Func0<",
            "Lrx/observables/for<",
            "TT;>;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lrx/internal/util/for$break;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/for$break;-><init>(Lrx/Observable;I)V

    return-object v0
.end method

.method public static createReplaySupplier(Lrx/Observable;IJLjava/util/concurrent/TimeUnit;Lrx/if;)Lrx/functions/Func0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/if;",
            ")",
            "Lrx/functions/Func0<",
            "Lrx/observables/for<",
            "TT;>;>;"
        }
    .end annotation

    .line 4
    new-instance v7, Lrx/internal/util/for$const;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lrx/internal/util/for$const;-><init>(Lrx/Observable;IJLjava/util/concurrent/TimeUnit;Lrx/if;)V

    return-object v7
.end method

.method public static createReplaySupplier(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/if;)Lrx/functions/Func0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/if;",
            ")",
            "Lrx/functions/Func0<",
            "Lrx/observables/for<",
            "TT;>;>;"
        }
    .end annotation

    .line 3
    new-instance v6, Lrx/internal/util/for$catch;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lrx/internal/util/for$catch;-><init>(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/if;)V

    return-object v6
.end method

.method public static createRetryDematerializer(Lrx/functions/Func1;)Lrx/functions/Func1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Observable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/Observable<",
            "*>;>;)",
            "Lrx/functions/Func1<",
            "Lrx/Observable<",
            "+",
            "Lrx/do<",
            "*>;>;",
            "Lrx/Observable<",
            "*>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/util/for$final;

    invoke-direct {v0, p0}, Lrx/internal/util/for$final;-><init>(Lrx/functions/Func1;)V

    return-object v0
.end method

.method public static equalsWith(Ljava/lang/Object;)Lrx/functions/Func1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lrx/functions/Func1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/util/for$if;

    invoke-direct {v0, p0}, Lrx/internal/util/for$if;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static isInstanceOf(Ljava/lang/Class;)Lrx/functions/Func1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lrx/functions/Func1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/util/for$new;

    invoke-direct {v0, p0}, Lrx/internal/util/for$new;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/internal/util/for;
    .locals 1

    .line 1
    const-class v0, Lrx/internal/util/for;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrx/internal/util/for;

    return-object p0
.end method

.method public static values()[Lrx/internal/util/for;
    .locals 1

    .line 1
    sget-object v0, Lrx/internal/util/for;->do:[Lrx/internal/util/for;

    invoke-virtual {v0}, [Lrx/internal/util/for;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/util/for;

    return-object v0
.end method
