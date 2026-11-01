.class final Lretrofit2/adapter/rxjava/RxJavaCallAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter<",
        "TR;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final isAsync:Z

.field private final isBody:Z

.field private final isCompletable:Z

.field private final isResult:Z

.field private final isSingle:Z

.field private final responseType:Ljava/lang/reflect/Type;

.field private final scheduler:Lrx/if;
    .annotation runtime Landroid/support/v4/y41;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Lrx/if;ZZZZZ)V
    .locals 0
    .param p2    # Lrx/if;
        .annotation runtime Landroid/support/v4/y41;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->responseType:Ljava/lang/reflect/Type;

    .line 3
    iput-object p2, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->scheduler:Lrx/if;

    .line 4
    iput-boolean p3, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isAsync:Z

    .line 5
    iput-boolean p4, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isResult:Z

    .line 6
    iput-boolean p5, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isBody:Z

    .line 7
    iput-boolean p6, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isSingle:Z

    .line 8
    iput-boolean p7, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isCompletable:Z

    return-void
.end method


# virtual methods
.method public adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isAsync:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;

    invoke-direct {v0, p1}, Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;-><init>(Lretrofit2/Call;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe;

    invoke-direct {v0, p1}, Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe;-><init>(Lretrofit2/Call;)V

    .line 4
    :goto_0
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isResult:Z

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Lretrofit2/adapter/rxjava/ResultOnSubscribe;

    invoke-direct {p1, v0}, Lretrofit2/adapter/rxjava/ResultOnSubscribe;-><init>(Lrx/Observable$OnSubscribe;)V

    :goto_1
    move-object v0, p1

    goto :goto_2

    .line 6
    :cond_1
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isBody:Z

    if-eqz p1, :cond_2

    .line 7
    new-instance p1, Lretrofit2/adapter/rxjava/BodyOnSubscribe;

    invoke-direct {p1, v0}, Lretrofit2/adapter/rxjava/BodyOnSubscribe;-><init>(Lrx/Observable$OnSubscribe;)V

    goto :goto_1

    .line 8
    :cond_2
    :goto_2
    invoke-static {v0}, Lrx/Observable;->S(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->scheduler:Lrx/if;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p1, v0}, Lrx/Observable;->e4(Lrx/if;)Lrx/Observable;

    move-result-object p1

    .line 11
    :cond_3
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isSingle:Z

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p1}, Lrx/Observable;->l5()Lrx/Single;

    move-result-object p1

    return-object p1

    .line 13
    :cond_4
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isCompletable:Z

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {p1}, Lrx/Observable;->c5()Lrx/Completable;

    move-result-object p1

    :cond_5
    return-object p1
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->responseType:Ljava/lang/reflect/Type;

    return-object v0
.end method
