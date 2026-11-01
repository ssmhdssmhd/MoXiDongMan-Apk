.class Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;->call(Landroid/support/v4/y22;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;

.field public final synthetic val$arbiter:Lretrofit2/adapter/rxjava/CallArbiter;


# direct methods
.method public constructor <init>(Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;Lretrofit2/adapter/rxjava/CallArbiter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe$1;->this$0:Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;

    iput-object p2, p0, Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe$1;->val$arbiter:Lretrofit2/adapter/rxjava/CallArbiter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe$1;->val$arbiter:Lretrofit2/adapter/rxjava/CallArbiter;

    invoke-virtual {p1, p2}, Lretrofit2/adapter/rxjava/CallArbiter;->emitError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe$1;->val$arbiter:Lretrofit2/adapter/rxjava/CallArbiter;

    invoke-virtual {p1, p2}, Lretrofit2/adapter/rxjava/CallArbiter;->emitResponse(Lretrofit2/Response;)V

    return-void
.end method
