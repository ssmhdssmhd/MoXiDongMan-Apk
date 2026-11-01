.class public final Lrx/subscriptions/for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subscriptions/for$if;,
        Lrx/subscriptions/for$do;
    }
.end annotation


# static fields
.field private static final do:Lrx/subscriptions/for$if;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrx/subscriptions/for$if;

    invoke-direct {v0}, Lrx/subscriptions/for$if;-><init>()V

    sput-object v0, Lrx/subscriptions/for;->do:Lrx/subscriptions/for$if;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static do(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 0

    .line 1
    invoke-static {p0}, Lrx/subscriptions/do;->if(Lrx/functions/Action0;)Lrx/subscriptions/do;

    move-result-object p0

    return-object p0
.end method

.method public static varargs for([Lrx/Subscription;)Landroid/support/v4/dq;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/dq;

    invoke-direct {v0, p0}, Landroid/support/v4/dq;-><init>([Lrx/Subscription;)V

    return-object v0
.end method

.method public static if()Lrx/Subscription;
    .locals 1

    .line 1
    invoke-static {}, Lrx/subscriptions/do;->do()Lrx/subscriptions/do;

    move-result-object v0

    return-object v0
.end method

.method public static new(Ljava/util/concurrent/Future;)Lrx/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/subscriptions/for$do;

    invoke-direct {v0, p0}, Lrx/subscriptions/for$do;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public static try()Lrx/Subscription;
    .locals 1

    .line 1
    sget-object v0, Lrx/subscriptions/for;->do:Lrx/subscriptions/for$if;

    return-object v0
.end method
