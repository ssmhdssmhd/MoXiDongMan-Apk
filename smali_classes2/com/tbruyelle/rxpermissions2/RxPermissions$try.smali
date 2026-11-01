.class Lcom/tbruyelle/rxpermissions2/RxPermissions$try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions2/RxPermissions;->throw(Lio/reactivex/new;[Ljava/lang/String;)Lio/reactivex/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Object;",
        "Lio/reactivex/new<",
        "Lcom/tbruyelle/rxpermissions2/do;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:[Ljava/lang/String;

.field public final synthetic if:Lcom/tbruyelle/rxpermissions2/RxPermissions;


# direct methods
.method public constructor <init>(Lcom/tbruyelle/rxpermissions2/RxPermissions;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions2/RxPermissions$try;->if:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    iput-object p2, p0, Lcom/tbruyelle/rxpermissions2/RxPermissions$try;->do:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions2/RxPermissions$try;->do(Ljava/lang/Object;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public do(Ljava/lang/Object;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/new<",
            "Lcom/tbruyelle/rxpermissions2/do;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tbruyelle/rxpermissions2/RxPermissions$try;->if:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    iget-object v0, p0, Lcom/tbruyelle/rxpermissions2/RxPermissions$try;->do:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->for(Lcom/tbruyelle/rxpermissions2/RxPermissions;[Ljava/lang/String;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method
