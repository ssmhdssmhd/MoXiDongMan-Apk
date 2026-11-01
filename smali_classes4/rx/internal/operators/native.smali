.class public final enum Lrx/internal/operators/native;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrx/internal/operators/native;",
        ">;",
        "Lrx/Observable$OnSubscribe<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum INSTANCE:Lrx/internal/operators/native;

.field private static final synthetic do:[Lrx/internal/operators/native;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrx/internal/operators/native;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrx/internal/operators/native;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/internal/operators/native;->INSTANCE:Lrx/internal/operators/native;

    const/4 v1, 0x1

    new-array v1, v1, [Lrx/internal/operators/native;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lrx/internal/operators/native;->do:[Lrx/internal/operators/native;

    .line 3
    invoke-static {v0}, Lrx/Observable;->q5(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/native;->EMPTY:Lrx/Observable;

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

.method public static instance()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lrx/internal/operators/native;->EMPTY:Lrx/Observable;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/internal/operators/native;
    .locals 1

    .line 1
    const-class v0, Lrx/internal/operators/native;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrx/internal/operators/native;

    return-object p0
.end method

.method public static values()[Lrx/internal/operators/native;
    .locals 1

    .line 1
    sget-object v0, Lrx/internal/operators/native;->do:[Lrx/internal/operators/native;

    invoke-virtual {v0}, [Lrx/internal/operators/native;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/native;

    return-object v0
.end method


# virtual methods
.method public call(Landroid/support/v4/y22;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lrx/Observer;->onCompleted()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/native;->call(Landroid/support/v4/y22;)V

    return-void
.end method
